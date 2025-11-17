'use client'

import { useState, useEffect, use, useMemo } from 'react'
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query'
import { createClient } from '@/lib/supabase/client'
import { QuestionCard } from '@/components/game/QuestionCard'
import { Timer } from '@/components/game/Timer'
import { ProgressBar } from '@/components/game/ProgressBar'
import { GameSummary } from '@/components/game/GameSummary'
import { Button } from '@/components/ui/button'
import { Alert, AlertDescription } from '@/components/ui/alert'
import { useRouter } from 'next/navigation'
import { X } from 'lucide-react'

interface PageProps {
  params: Promise<{ id: string }>
}

// Fisher-Yates shuffle algorithm
function shuffleArray<T>(array: T[]): T[] {
  const shuffled = [...array]
  for (let i = shuffled.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [shuffled[i], shuffled[j]] = [shuffled[j], shuffled[i]]
  }
  return shuffled
}

export default function GamePlayPage({ params }: PageProps) {
  const resolvedParams = use(params)
  const gameId = resolvedParams.id

  const [currentQuestionIndex, setCurrentQuestionIndex] = useState(0)
  const [selectedAnswerId, setSelectedAnswerId] = useState<string | null>(null)
  const [isTimerRunning, setIsTimerRunning] = useState(true)
  const [questionStartTime, setQuestionStartTime] = useState(0)
  const [showResult, setShowResult] = useState(false)
  const [isCorrect, setIsCorrect] = useState<boolean | null>(null)
  const [gameCompleted, setGameCompleted] = useState(false)
  const router = useRouter()
  const supabase = createClient()
  const queryClient = useQueryClient()

  // Fetch game with questions
  const { data: gameData, isLoading } = useQuery({
    queryKey: ['game', gameId],
    queryFn: async () => {
      const { data: game, error: gameError } = await supabase
        .from('games')
        .select('*')
        .eq('id', gameId)
        .single()

      if (gameError) throw gameError

      const { data: gameQuestions, error: questionsError } = await supabase
        .from('game_questions')
        .select(`
          *,
          question:questions(
            *,
            category:categories(*),
            answers(id, question_id, answer_text, is_correct, order_num)
          )
        `)
        .eq('game_id', gameId)
        .order('question_order')

      if (questionsError) throw questionsError

      return { game, questions: gameQuestions as any }
    },
  })

  // Update answer mutation
  const updateAnswerMutation = useMutation({
    mutationFn: async ({
      gameQuestionId,
      answerId,
      timeTaken,
      isCorrect,
    }: {
      gameQuestionId: string
      answerId: string
      timeTaken: number
      isCorrect: boolean
    }) => {
      const { error } = await (supabase
        .from('game_questions') as any)
        .update({
          selected_answer_id: answerId,
          time_taken: timeTaken,
          is_correct: isCorrect,
        })
        .eq('id', gameQuestionId)

      if (error) throw error
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['game', gameId] })
    },
  })

  // Complete game mutation
  const completeGameMutation = useMutation({
    mutationFn: async () => {
      if (!gameData) return

      const correctCount = gameData.questions.filter((q: any) => q.is_correct).length
      const totalQuestions = gameData.questions.length
      const scorePercentage = Math.round((correctCount / totalQuestions) * 100)
      const avgTime = Math.round(
        gameData.questions.reduce((sum: any, q: any) => sum + (q.time_taken || 0), 0) / totalQuestions
      )

      const { error } = await (supabase
        .from('games') as any)
        .update({
          correct_answers: correctCount,
          score_percentage: scorePercentage,
          average_time_per_question: avgTime,
          completed_at: new Date().toISOString(),
        })
        .eq('id', gameId)

      if (error) throw error
    },
  })

  // Shuffle answers for current question - same shuffle used for both UI and keyboard
  const currentQuestion = gameData?.questions?.[currentQuestionIndex]
  const shuffledAnswers = useMemo(() => {
    if (!currentQuestion?.question?.answers) return []
    return shuffleArray(currentQuestion.question.answers)
  }, [currentQuestion?.question?.id])

  // Keyboard support - uses same shuffled answers as UI
  useEffect(() => {
    if (showResult || gameCompleted || shuffledAnswers.length === 0) return

    const handleKeyPress = (e: KeyboardEvent) => {
      if (['1', '2', '3', '4'].includes(e.key)) {
        const index = parseInt(e.key) - 1
        if (shuffledAnswers[index]) {
          setSelectedAnswerId((shuffledAnswers[index] as any).id)
        }
      }

      if (e.key === 'Enter' && selectedAnswerId) {
        handleSubmitAnswer()
      }
    }

    window.addEventListener('keydown', handleKeyPress)
    return () => window.removeEventListener('keydown', handleKeyPress)
  }, [selectedAnswerId, showResult, gameCompleted, shuffledAnswers])

  const handleSubmitAnswer = async () => {
    if (!selectedAnswerId || !gameData) return

    setIsTimerRunning(false)
    const currentQuestion = gameData.questions[currentQuestionIndex]
    const selectedAnswer = currentQuestion.question.answers.find(
      (a: any) => a.id === selectedAnswerId
    )

    if (!selectedAnswer) return

    const timeTaken = Math.round((Date.now() - questionStartTime) / 1000)
    const correct = selectedAnswer.is_correct

    setIsCorrect(correct)
    setShowResult(true)

    // Save answer
    await updateAnswerMutation.mutateAsync({
      gameQuestionId: currentQuestion.id,
      answerId: selectedAnswerId,
      timeTaken,
      isCorrect: correct,
    })

    // Auto-advance after showing result
    setTimeout(() => {
      handleNextQuestion()
    }, 3000)
  }

  const handleNextQuestion = () => {
    if (!gameData) return

    if (currentQuestionIndex < gameData.questions.length - 1) {
      setCurrentQuestionIndex((prev) => prev + 1)
      setSelectedAnswerId(null)
      setShowResult(false)
      setIsCorrect(null)
      setIsTimerRunning(true)
      setQuestionStartTime(Date.now())
    } else {
      // Game completed
      completeGameMutation.mutate()
      setGameCompleted(true)
    }
  }

  const handleExit = () => {
    if (confirm('האם אתה בטוח שברצונך לצאת? התקדמותך לא תישמר.')) {
      router.push('/dashboard')
    }
  }

  if (isLoading) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <div className="text-lg">טוען משחק...</div>
      </div>
    )
  }

  if (!gameData) {
    return (
      <div className="min-h-screen flex items-center justify-center p-4">
        <Alert variant="destructive">
          <AlertDescription>משחק לא נמצא</AlertDescription>
        </Alert>
      </div>
    )
  }

  if (gameCompleted) {
    const correctCount = gameData.questions.filter((q: any) => q.is_correct).length
    const totalQuestions = gameData.questions.length
    const scorePercentage = Math.round((correctCount / totalQuestions) * 100)
    const avgTime = Math.round(
      gameData.questions.reduce((sum: any, q: any) => sum + (q.time_taken || 0), 0) / totalQuestions
    )

    return (
      <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 dark:from-gray-900 dark:to-gray-800 flex items-center justify-center p-4">
        <GameSummary
          totalQuestions={totalQuestions}
          correctAnswers={correctCount}
          scorePercentage={scorePercentage}
          averageTime={avgTime}
          onPlayAgain={() => router.push('/game/setup')}
        />
      </div>
    )
  }

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 dark:from-gray-900 dark:to-gray-800 p-4">
      <div className="container mx-auto max-w-4xl py-8 space-y-6">
        {/* Header */}
        <div className="flex items-center justify-between">
          <Timer
            isRunning={isTimerRunning}
            initialTime={0}
            onTimeUpdate={(seconds) => {
              if (questionStartTime === 0) {
                setQuestionStartTime(Date.now())
              }
            }}
          />
          <ProgressBar
            current={currentQuestionIndex + 1}
            total={gameData.questions.length}
          />
          <Button variant="ghost" size="icon" onClick={handleExit}>
            <X className="w-5 h-5" />
          </Button>
        </div>

        {/* Question Card */}
        <QuestionCard
          question={currentQuestion.question}
          shuffledAnswers={shuffledAnswers}
          selectedAnswerId={selectedAnswerId}
          onSelectAnswer={setSelectedAnswerId}
          onSubmit={handleSubmitAnswer}
          showResult={showResult}
          isCorrect={isCorrect}
          disabled={showResult}
        />

        {/* Keyboard Hints */}
        {!showResult && (
          <div className="text-center text-sm text-muted-foreground">
            השתמש במקשים 1-4 לבחירת תשובה ו-Enter לאישור
          </div>
        )}
      </div>
    </div>
  )
}
