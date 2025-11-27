'use client'

import { useState, useEffect } from 'react'
import { useParams, useRouter } from 'next/navigation'
import { useQuery } from '@tanstack/react-query'
import { Card, CardContent } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Alert, AlertDescription } from '@/components/ui/alert'
import { createClient } from '@/lib/supabase/client'
import { Loader2 } from 'lucide-react'
import type { KahootRoom, KahootParticipant } from '@/types/database.types'

export default function PlayerKahootGamePage() {
  const params = useParams()
  const roomCode = params.roomCode as string
  const router = useRouter()
  const supabase = createClient()

  const [room, setRoom] = useState<KahootRoom | null>(null)
  const [participant, setParticipant] = useState<KahootParticipant | null>(null)
  const [currentQuestion, setCurrentQuestion] = useState<any>(null)
  const [selectedAnswer, setSelectedAnswer] = useState<string | null>(null)
  const [hasAnswered, setHasAnswered] = useState(false)
  const [timeRemaining, setTimeRemaining] = useState(10)
  const [error, setError] = useState('')

  // Get participant ID from localStorage
  useEffect(() => {
    const participantId = localStorage.getItem(`kahoot_${roomCode}`)
    if (!participantId) {
      router.push(`/game/kahoot/join/${roomCode}`)
      return
    }

    // Fetch participant data
    const fetchParticipant = async () => {
      const { data, error } = await supabase
        .from('kahoot_participants')
        .select('*')
        .eq('id', participantId)
        .single()

      if (error) {
        console.error('Error fetching participant:', error)
        setError('לא נמצא משתתף')
        return
      }

      setParticipant(data)

      // Update last_seen and is_connected
      await supabase
        .from('kahoot_participants')
        .update({
          is_connected: true,
          last_seen: new Date().toISOString(),
        })
        .eq('id', participantId)
    }

    fetchParticipant()

    // Heartbeat to keep connection alive
    const heartbeat = setInterval(async () => {
      await supabase
        .from('kahoot_participants')
        .update({ last_seen: new Date().toISOString() })
        .eq('id', participantId)
    }, 5000)

    return () => {
      clearInterval(heartbeat)
    }
  }, [roomCode])

  // Subscribe to participant score updates
  useEffect(() => {
    if (!participant) return

    const channel = supabase
      .channel(`participant:${participant.id}`)
      .on(
        'postgres_changes',
        {
          event: 'UPDATE',
          schema: 'public',
          table: 'kahoot_participants',
          filter: `id=eq.${participant.id}`,
        },
        (payload) => {
          console.log('Participant score updated:', payload)
          setParticipant(payload.new as KahootParticipant)
        }
      )
      .subscribe()

    return () => {
      supabase.removeChannel(channel)
    }
  }, [participant?.id])

  // Subscribe to room changes
  useEffect(() => {
    const fetchRoom = async () => {
      const { data, error } = await supabase
        .from('kahoot_rooms')
        .select('*')
        .eq('room_code', roomCode)
        .single()

      if (error) {
        console.error('Error fetching room:', error)
        return
      }

      setRoom(data)

      // If status changed to playing, fetch current question
      if (data.status === 'playing' && data.current_question_index >= 0) {
        fetchCurrentQuestion(data.current_question_index)
      }
    }

    fetchRoom()

    const channel = supabase
      .channel(`room:${roomCode}:player`)
      .on(
        'postgres_changes',
        {
          event: '*',
          schema: 'public',
          table: 'kahoot_rooms',
          filter: `room_code=eq.${roomCode}`,
        },
        (payload) => {
          console.log('Room change:', payload)
          const updatedRoom = payload.new as KahootRoom
          setRoom(updatedRoom)

          // Reset answer state when new question starts
          if (payload.eventType === 'UPDATE') {
            const oldRoom = payload.old as KahootRoom
            if (oldRoom.current_question_index !== updatedRoom.current_question_index) {
              setSelectedAnswer(null)
              setHasAnswered(false)
              setTimeRemaining(10)
              fetchCurrentQuestion(updatedRoom.current_question_index)
            }
          }
        }
      )
      .subscribe()

    return () => {
      supabase.removeChannel(channel)
    }
  }, [roomCode])

  // Fetch current question
  const fetchCurrentQuestion = async (questionIndex: number) => {
    if (!room?.game_id) return

    const { data: gameQuestions, error } = await supabase
      .from('game_questions')
      .select(`
        *,
        question:questions(
          *,
          answers(*)
        )
      `)
      .eq('game_id', room.game_id)
      .eq('question_order', questionIndex + 1)
      .single()

    if (error) {
      console.error('Error fetching question:', error)
      return
    }

    setCurrentQuestion(gameQuestions)
  }

  // Timer countdown
  useEffect(() => {
    if (room?.status !== 'playing' || hasAnswered || !room.question_start_time) {
      return
    }

    const startTime = new Date(room.question_start_time).getTime()
    const timer = setInterval(() => {
      const now = Date.now()
      const elapsed = (now - startTime) / 1000
      const remaining = Math.max(0, 10 - elapsed)
      setTimeRemaining(remaining)

      if (remaining === 0) {
        clearInterval(timer)
      }
    }, 100)

    return () => clearInterval(timer)
  }, [room?.status, room?.question_start_time, hasAnswered])

  // Submit answer
  const handleAnswerSubmit = async (answerId: string) => {
    if (hasAnswered || !participant || !currentQuestion || !room?.question_start_time) return

    setSelectedAnswer(answerId)
    setHasAnswered(true)

    const startTime = new Date(room.question_start_time).getTime()
    const timeTaken = (Date.now() - startTime) / 1000

    // Check if answer is correct
    const correctAnswer = currentQuestion.question.answers.find((a: any) => a.is_correct)
    const isCorrect = answerId === correctAnswer?.id

    try {
      // Submit answer (points will be calculated by host after question ends)
      await supabase.from('kahoot_answers').insert({
        room_code: roomCode,
        participant_id: participant.id,
        question_index: room.current_question_index,
        question_id: currentQuestion.question_id,
        selected_answer_id: answerId,
        is_correct: isCorrect,
        time_taken: timeTaken,
        points_earned: 0, // Will be calculated after all answers are in
      })
    } catch (err: any) {
      console.error('Error submitting answer:', err)
    }
  }

  if (error) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-purple-600 to-pink-600 flex items-center justify-center p-4">
        <Card className="max-w-md">
          <CardContent className="p-6 text-center">
            <Alert variant="destructive">
              <AlertDescription>{error}</AlertDescription>
            </Alert>
          </CardContent>
        </Card>
      </div>
    )
  }

  if (!room || !participant) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-purple-600 to-pink-600 flex items-center justify-center">
        <Loader2 className="w-8 h-8 animate-spin text-white" />
      </div>
    )
  }

  // Waiting for host to start
  if (room.status === 'waiting') {
    return (
      <div className="min-h-screen bg-gradient-to-br from-purple-600 to-pink-600 flex items-center justify-center p-4">
        <Card className="max-w-md w-full">
          <CardContent className="p-8 text-center space-y-6">
            <div className="text-6xl">{participant.avatar}</div>
            <div className="text-2xl font-bold">{participant.nickname}</div>
            <div className="text-muted-foreground">ממתין למנחה להתחיל את המשחק...</div>
            <div className="flex justify-center">
              <Loader2 className="w-8 h-8 animate-spin text-primary" />
            </div>
          </CardContent>
        </Card>
      </div>
    )
  }

  // Game playing
  if (room.status === 'playing' && currentQuestion) {
    const answers = currentQuestion.question.answers || []
    const shuffledAnswers = [...answers].sort(() => Math.random() - 0.5)

    return (
      <div className="min-h-screen bg-gradient-to-br from-purple-600 to-pink-600 p-4">
        <div className="container mx-auto max-w-4xl py-8">
          {/* Header with player info */}
          <div className="mb-6 flex items-center justify-between text-white">
            <div className="flex items-center gap-3">
              <div className="text-3xl">{participant.avatar}</div>
              <div>
                <div className="font-bold">{participant.nickname}</div>
                <div className="text-sm opacity-90">Score: {participant.score}</div>
              </div>
            </div>
            <div className="text-right">
              <div className="text-4xl font-bold">
                {Math.ceil(timeRemaining)}
              </div>
              <div className="text-sm opacity-90">שניות</div>
            </div>
          </div>

          {/* Question */}
          <Card className="mb-6">
            <CardContent className="p-8">
              <div className="text-2xl font-bold text-center mb-2">
                שאלה {room.current_question_index + 1} מתוך {room.total_questions}
              </div>
              <div className="text-xl text-center">
                {currentQuestion.question.question_text}
              </div>
            </CardContent>
          </Card>

          {/* Answers */}
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            {shuffledAnswers.map((answer: any, index: number) => {
              const colors = [
                'bg-red-500 hover:bg-red-600',
                'bg-blue-500 hover:bg-blue-600',
                'bg-yellow-500 hover:bg-yellow-600',
                'bg-green-500 hover:bg-green-600',
              ]
              const isSelected = selectedAnswer === answer.id
              const isDisabled = hasAnswered || timeRemaining === 0

              return (
                <Button
                  key={answer.id}
                  onClick={() => handleAnswerSubmit(answer.id)}
                  disabled={isDisabled}
                  className={`h-24 text-xl font-bold text-white ${colors[index]} ${
                    isSelected ? 'ring-4 ring-white' : ''
                  }`}
                >
                  {answer.answer_text}
                </Button>
              )
            })}
          </div>

          {/* Answer feedback */}
          {hasAnswered && (
            <div className="mt-6 text-center">
              <Card className={selectedAnswer === currentQuestion.question.answers.find((a: any) => a.is_correct)?.id ? 'bg-green-50 border-green-500' : 'bg-red-50 border-red-500'}>
                <CardContent className="p-6">
                  <div className="text-2xl font-bold mb-2">
                    {selectedAnswer === currentQuestion.question.answers.find((a: any) => a.is_correct)?.id ? '✓ נכון!' : '✗ לא נכון'}
                  </div>
                  <div className="text-lg">ממתין לשאר השחקנים...</div>
                </CardContent>
              </Card>
            </div>
          )}
        </div>
      </div>
    )
  }

  // Game completed
  if (room.status === 'completed') {
    return (
      <div className="min-h-screen bg-gradient-to-br from-purple-600 to-pink-600 flex items-center justify-center p-4">
        <Card className="max-w-md w-full">
          <CardContent className="p-8 text-center space-y-6">
            <div className="text-6xl">{participant.avatar}</div>
            <div className="text-2xl font-bold">{participant.nickname}</div>
            <div className="text-xl">הניקוד הסופי שלך:</div>
            <div className="text-5xl font-bold text-primary">{participant.score}</div>
            <div className="text-muted-foreground">המשחק הסתיים!</div>
          </CardContent>
        </Card>
      </div>
    )
  }

  return null
}
