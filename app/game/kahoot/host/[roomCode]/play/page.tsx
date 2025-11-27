'use client'

import { useState, useEffect } from 'react'
import { useParams, useRouter } from 'next/navigation'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Alert, AlertDescription } from '@/components/ui/alert'
import { Progress } from '@/components/ui/progress'
import { createClient } from '@/lib/supabase/client'
import { Play, ChevronRight, Trophy, Users, CheckCircle, XCircle, Loader2 } from 'lucide-react'
import Link from 'next/link'
import type { KahootRoom, KahootParticipant } from '@/types/database.types'

export default function HostKahootGamePage() {
  const params = useParams()
  const roomCode = params.roomCode as string
  const router = useRouter()
  const supabase = createClient()

  const [room, setRoom] = useState<KahootRoom | null>(null)
  const [participants, setParticipants] = useState<KahootParticipant[]>([])
  const [gameQuestions, setGameQuestions] = useState<any[]>([])
  const [currentQuestion, setCurrentQuestion] = useState<any>(null)
  const [answers, setAnswers] = useState<any[]>([])
  const [showResults, setShowResults] = useState(false)
  const [timeRemaining, setTimeRemaining] = useState(10)
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState('')

  // Fetch room and game questions
  useEffect(() => {
    const fetchData = async () => {
      // Fetch room
      const { data: roomData, error: roomError } = await supabase
        .from('kahoot_rooms')
        .select('*')
        .eq('room_code', roomCode)
        .single()

      if (roomError) {
        console.error('Error fetching room:', roomError)
        setError('חדר לא נמצא')
        return
      }

      setRoom(roomData)

      // Fetch game questions
      if (roomData.game_id) {
        const { data: questions, error: questionsError } = await supabase
          .from('game_questions')
          .select(`
            *,
            question:questions(
              *,
              answers(*)
            )
          `)
          .eq('game_id', roomData.game_id)
          .order('question_order', { ascending: true })

        if (questionsError) {
          console.error('Error fetching questions:', questionsError)
          return
        }

        setGameQuestions(questions || [])

        // Load current question if in progress
        if (roomData.current_question_index >= 0 && questions) {
          setCurrentQuestion(questions[roomData.current_question_index])
        }
      }
    }

    fetchData()
  }, [roomCode])

  // Subscribe to participants
  useEffect(() => {
    const fetchParticipants = async () => {
      const { data, error } = await supabase
        .from('kahoot_participants')
        .select('*')
        .eq('room_code', roomCode)
        .order('score', { ascending: false })

      if (error) {
        console.error('Error fetching participants:', error)
        return
      }

      setParticipants(data || [])
    }

    fetchParticipants()

    const channel = supabase
      .channel(`room:${roomCode}:host`)
      .on(
        'postgres_changes',
        {
          event: '*',
          schema: 'public',
          table: 'kahoot_participants',
          filter: `room_code=eq.${roomCode}`,
        },
        () => {
          fetchParticipants()
        }
      )
      .subscribe()

    return () => {
      supabase.removeChannel(channel)
    }
  }, [roomCode])

  // Subscribe to answers for current question
  useEffect(() => {
    if (!room || room.current_question_index < 0) return

    const fetchAnswers = async () => {
      const { data, error } = await supabase
        .from('kahoot_answers')
        .select('*')
        .eq('room_code', roomCode)
        .eq('question_index', room.current_question_index)

      if (error) {
        console.error('Error fetching answers:', error)
        return
      }

      setAnswers(data || [])
    }

    fetchAnswers()

    const channel = supabase
      .channel(`room:${roomCode}:answers`)
      .on(
        'postgres_changes',
        {
          event: 'INSERT',
          schema: 'public',
          table: 'kahoot_answers',
          filter: `room_code=eq.${roomCode}`,
        },
        () => {
          fetchAnswers()
        }
      )
      .subscribe()

    return () => {
      supabase.removeChannel(channel)
    }
  }, [roomCode, room?.current_question_index])

  // Calculate and distribute points among correct answerers
  const calculatePoints = async () => {
    if (!room) return

    try {
      // Get all answers for current question
      const { data: allAnswers, error: answersError } = await supabase
        .from('kahoot_answers')
        .select('*')
        .eq('room_code', roomCode)
        .eq('question_index', room.current_question_index)

      if (answersError) throw answersError

      // Filter correct answers only
      const correctAnswers = allAnswers?.filter(a => a.is_correct) || []

      if (correctAnswers.length === 0) {
        console.log('No correct answers for this question')
        return
      }

      // Calculate speed scores: (10 - time_taken)
      const speedScores = correctAnswers.map(answer => ({
        ...answer,
        speedScore: Math.max(0, 10 - answer.time_taken),
      }))

      // Sum all speed scores
      const totalSpeedScore = speedScores.reduce((sum, answer) => sum + answer.speedScore, 0)

      // Distribute 1000 points proportionally
      const pointsDistribution = speedScores.map(answer => ({
        id: answer.id,
        participant_id: answer.participant_id,
        points: totalSpeedScore > 0
          ? Math.round((answer.speedScore / totalSpeedScore) * 1000)
          : 0,
      }))

      console.log('Points distribution:', pointsDistribution)

      // Update each answer with calculated points
      for (const dist of pointsDistribution) {
        await supabase
          .from('kahoot_answers')
          .update({ points_earned: dist.points })
          .eq('id', dist.id)

        // Update participant's total score
        const { data: participant } = await supabase
          .from('kahoot_participants')
          .select('score')
          .eq('id', dist.participant_id)
          .single()

        if (participant) {
          await supabase
            .from('kahoot_participants')
            .update({ score: participant.score + dist.points })
            .eq('id', dist.participant_id)
        }
      }

      console.log('Points calculated and distributed')
    } catch (err: any) {
      console.error('Error calculating points:', err)
    }
  }

  // Timer countdown
  useEffect(() => {
    if (!room?.question_start_time || showResults) return

    const startTime = new Date(room.question_start_time).getTime()
    const timer = setInterval(() => {
      const now = Date.now()
      const elapsed = (now - startTime) / 1000
      const remaining = Math.max(0, 10 - elapsed)
      setTimeRemaining(remaining)

      if (remaining === 0) {
        clearInterval(timer)
        // Calculate points before showing results
        calculatePoints().then(() => {
          setShowResults(true)
        })
      }
    }, 100)

    return () => clearInterval(timer)
  }, [room?.question_start_time, showResults])

  // Start question
  const handleStartQuestion = async () => {
    if (!room) return

    setLoading(true)
    setShowResults(false)
    setAnswers([])

    try {
      const { error } = await supabase
        .from('kahoot_rooms')
        .update({
          question_start_time: new Date().toISOString(),
        })
        .eq('room_code', roomCode)

      if (error) throw error

      setRoom({ ...room, question_start_time: new Date().toISOString() })
      setTimeRemaining(10)
    } catch (err: any) {
      console.error('Error starting question:', err)
      setError(err.message)
    } finally {
      setLoading(false)
    }
  }

  // Next question
  const handleNextQuestion = async () => {
    if (!room) return

    // Ensure points are calculated before moving on
    if (!showResults) {
      await calculatePoints()
    }

    const nextIndex = room.current_question_index + 1

    if (nextIndex >= gameQuestions.length) {
      // Game finished
      await handleEndGame()
      return
    }

    setLoading(true)
    setShowResults(false)
    setAnswers([])

    try {
      const { error } = await supabase
        .from('kahoot_rooms')
        .update({
          current_question_index: nextIndex,
          question_start_time: null,
        })
        .eq('room_code', roomCode)

      if (error) throw error

      setRoom({
        ...room,
        current_question_index: nextIndex,
        question_start_time: null,
      })
      setCurrentQuestion(gameQuestions[nextIndex])
      setTimeRemaining(10)
    } catch (err: any) {
      console.error('Error advancing question:', err)
      setError(err.message)
    } finally {
      setLoading(false)
    }
  }

  // End game
  const handleEndGame = async () => {
    if (!room) return

    // Ensure final question points are calculated
    if (!showResults) {
      await calculatePoints()
    }

    setLoading(true)

    try {
      const { error } = await supabase
        .from('kahoot_rooms')
        .update({
          status: 'completed',
          completed_at: new Date().toISOString(),
        })
        .eq('room_code', roomCode)

      if (error) throw error

      // Redirect to podium
      router.push(`/game/kahoot/host/${roomCode}/podium`)
    } catch (err: any) {
      console.error('Error ending game:', err)
      setError(err.message)
    } finally {
      setLoading(false)
    }
  }

  if (!room || gameQuestions.length === 0) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-purple-600 to-pink-600 flex items-center justify-center">
        <Loader2 className="w-8 h-8 animate-spin text-white" />
      </div>
    )
  }

  const questionIndex = room.current_question_index
  const question = currentQuestion || gameQuestions[questionIndex]
  const totalParticipants = participants.length
  const answeredCount = answers.length
  const correctAnswers = answers.filter(a => a.is_correct).length
  const progressPercent = (answeredCount / totalParticipants) * 100

  return (
    <div className="min-h-screen bg-gradient-to-br from-purple-600 to-pink-600 p-4">
      <div className="container mx-auto max-w-6xl py-8">
        {error && (
          <Alert variant="destructive" className="mb-6">
            <AlertDescription>{error}</AlertDescription>
          </Alert>
        )}

        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
          {/* Main Content */}
          <div className="lg:col-span-2 space-y-6">
            {/* Progress */}
            <Card>
              <CardContent className="p-6">
                <div className="flex items-center justify-between mb-3">
                  <div className="text-sm font-medium">
                    שאלה {questionIndex + 1} מתוך {gameQuestions.length}
                  </div>
                  <Badge variant="outline">
                    {answeredCount} / {totalParticipants} ענו
                  </Badge>
                </div>
                <Progress value={progressPercent} className="h-2" />
              </CardContent>
            </Card>

            {/* Question Card */}
            <Card>
              <CardHeader>
                <CardTitle className="text-2xl">{question?.question?.question_text}</CardTitle>
              </CardHeader>
              <CardContent>
                {!room.question_start_time ? (
                  <Button
                    onClick={handleStartQuestion}
                    disabled={loading}
                    size="lg"
                    className="w-full"
                  >
                    <Play className="w-5 h-5 ml-2" />
                    התחל שאלה
                  </Button>
                ) : (
                  <div className="space-y-4">
                    {/* Timer */}
                    <div className="text-center">
                      <div className="text-6xl font-bold text-primary mb-2">
                        {Math.ceil(timeRemaining)}
                      </div>
                      <div className="text-sm text-muted-foreground">שניות נותרו</div>
                    </div>

                    {/* Answers Grid */}
                    {showResults && (
                      <div className="grid grid-cols-2 gap-4">
                        {question?.question?.answers?.map((answer: any) => {
                          const answerCount = answers.filter(a => a.selected_answer_id === answer.id).length
                          return (
                            <div
                              key={answer.id}
                              className={`p-4 rounded-lg border-2 ${
                                answer.is_correct
                                  ? 'bg-green-50 border-green-500'
                                  : 'bg-gray-50 border-gray-300'
                              }`}
                            >
                              <div className="flex items-center justify-between">
                                <span className="font-medium">{answer.answer_text}</span>
                                {answer.is_correct && <CheckCircle className="w-5 h-5 text-green-600" />}
                              </div>
                              <div className="text-sm text-muted-foreground mt-2">
                                {answerCount} {answerCount === 1 ? 'שחקן' : 'שחקנים'}
                              </div>
                            </div>
                          )
                        })}
                      </div>
                    )}

                    {/* Next Question Button */}
                    {showResults && (
                      <Button
                        onClick={handleNextQuestion}
                        disabled={loading}
                        size="lg"
                        className="w-full"
                      >
                        {questionIndex + 1 >= gameQuestions.length ? (
                          <>
                            <Trophy className="w-5 h-5 ml-2" />
                            סיים משחק
                          </>
                        ) : (
                          <>
                            <ChevronRight className="w-5 h-5 ml-2" />
                            שאלה הבאה
                          </>
                        )}
                      </Button>
                    )}
                  </div>
                )}
              </CardContent>
            </Card>

            {/* Stats */}
            {showResults && (
              <Card>
                <CardHeader>
                  <CardTitle>סטטיסטיקות שאלה</CardTitle>
                </CardHeader>
                <CardContent>
                  <div className="grid grid-cols-2 gap-4">
                    <div className="text-center p-4 bg-green-50 rounded-lg">
                      <div className="text-3xl font-bold text-green-600">{correctAnswers}</div>
                      <div className="text-sm text-muted-foreground">תשובות נכונות</div>
                    </div>
                    <div className="text-center p-4 bg-red-50 rounded-lg">
                      <div className="text-3xl font-bold text-red-600">
                        {answeredCount - correctAnswers}
                      </div>
                      <div className="text-sm text-muted-foreground">תשובות שגויות</div>
                    </div>
                  </div>
                </CardContent>
              </Card>
            )}
          </div>

          {/* Leaderboard */}
          <div>
            <Card className="sticky top-4">
              <CardHeader>
                <CardTitle className="flex items-center gap-2">
                  <Trophy className="w-5 h-5" />
                  לוח תוצאות
                </CardTitle>
              </CardHeader>
              <CardContent>
                <div className="space-y-2 max-h-[600px] overflow-y-auto">
                  {participants.map((participant, index) => {
                    const hasAnsweredCurrent = answers.some(a => a.participant_id === participant.id)
                    const currentAnswer = answers.find(a => a.participant_id === participant.id)

                    return (
                      <div
                        key={participant.id}
                        className="flex items-center gap-3 p-3 rounded-lg bg-accent/50 border"
                      >
                        <div className="font-bold text-lg w-6">{index + 1}</div>
                        <div className="text-2xl">{participant.avatar}</div>
                        <div className="flex-1 min-w-0">
                          <div className="font-medium truncate">{participant.nickname}</div>
                          <div className="text-sm text-primary font-bold">
                            {participant.score} נקודות
                          </div>
                        </div>
                        {room.question_start_time && (
                          <div>
                            {hasAnsweredCurrent ? (
                              currentAnswer?.is_correct ? (
                                <CheckCircle className="w-5 h-5 text-green-600" />
                              ) : (
                                <XCircle className="w-5 h-5 text-red-600" />
                              )
                            ) : (
                              <Loader2 className="w-5 h-5 animate-spin text-muted-foreground" />
                            )}
                          </div>
                        )}
                      </div>
                    )
                  })}
                </div>
              </CardContent>
            </Card>
          </div>
        </div>
      </div>
    </div>
  )
}
