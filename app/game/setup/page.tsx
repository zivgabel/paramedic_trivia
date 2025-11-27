'use client'

import { useState } from 'react'
import { useRouter } from 'next/navigation'
import { useQuery } from '@tanstack/react-query'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Checkbox } from '@/components/ui/checkbox'
import { Label } from '@/components/ui/label'
import { Input } from '@/components/ui/input'
import { Alert, AlertDescription } from '@/components/ui/alert'
import { Tabs, TabsList, TabsTrigger } from '@/components/ui/tabs'
import { createClient } from '@/lib/supabase/client'
import { ArrowRight, Users, User } from 'lucide-react'
import Link from 'next/link'
import type { GameMode } from '@/types/database.types'

export default function GameSetupPage() {
  const [gameMode, setGameMode] = useState<GameMode>('standard')
  const [selectedCategories, setSelectedCategories] = useState<string[]>([])
  const [questionCount, setQuestionCount] = useState(20)
  const [error, setError] = useState('')
  const [loading, setLoading] = useState(false)
  const router = useRouter()
  const supabase = createClient()

  const { data: categories, isLoading: categoriesLoading } = useQuery({
    queryKey: ['categories'],
    queryFn: async () => {
      const { data, error } = await supabase
        .from('categories')
        .select('*')
        .order('name')

      if (error) throw error
      return data as any
    },
  })

  // Count approved questions per category
  const { data: questionCounts } = useQuery({
    queryKey: ['question-counts'],
    queryFn: async () => {
      const { data, error } = await supabase
        .from('questions')
        .select('id, category_id')
        .eq('status', 'approved')

      if (error) throw error

      // Count questions per category
      const counts: Record<string, number> = {}
      data?.forEach((q: any) => {
        counts[q.category_id] = (counts[q.category_id] || 0) + 1
      })

      return counts
    },
  })

  const { data: user } = useQuery({
    queryKey: ['user'],
    queryFn: async () => {
      const { data: { user } } = await supabase.auth.getUser()
      return user
    },
  })

  const toggleCategory = (categoryId: string) => {
    setSelectedCategories((prev) =>
      prev.includes(categoryId)
        ? prev.filter((id) => id !== categoryId)
        : [...prev, categoryId]
    )
  }

  const selectAll = () => {
    if (categories) {
      setSelectedCategories(categories.map((c: any) => c.id))
    }
  }

  const clearAll = () => {
    setSelectedCategories([])
  }

  // Generate a 6-character alphanumeric room code
  const generateRoomCode = (): string => {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
    let code = ''
    for (let i = 0; i < 6; i++) {
      code += chars.charAt(Math.floor(Math.random() * chars.length))
    }
    return code
  }

  const handleStartGame = async () => {
    console.log('🎮 handleStartGame called')
    console.log('Game mode:', gameMode)
    console.log('Selected categories:', selectedCategories)
    console.log('Question count:', questionCount)

    if (selectedCategories.length === 0) {
      setError('יש לבחור לפחות קטגוריה אחת')
      return
    }

    if (questionCount < 5 || questionCount > 100) {
      setError('מספר השאלות חייב להיות בין 5 ל-100')
      return
    }

    setError('')
    setLoading(true)

    try {
      // For Kahoot mode, create a room and redirect to lobby
      if (gameMode === 'kahoot') {
        console.log('🎯 Creating Kahoot room...')

        // Get random questions first to validate count
        console.log('🔍 Fetching questions from categories:', selectedCategories)
        const { data: questions, error: questionsError } = await supabase
          .from('questions')
          .select('id, category_id, question_text')
          .eq('status', 'approved')
          .in('category_id', selectedCategories)

        if (questionsError) {
          console.error('❌ Error fetching questions:', questionsError)
          throw questionsError
        }

        console.log(`✅ Found ${questions?.length || 0} approved questions in selected categories`)

        if ((questions?.length || 0) < questionCount) {
          setError(`יש רק ${questions?.length || 0} שאלות זמינות בקטגוריות שנבחרו (ביקשת ${questionCount})`)
          setLoading(false)
          return
        }

        // Generate unique room code
        const roomCode = generateRoomCode()
        console.log('📋 Generated room code:', roomCode)

        // Create game record
        const { data: game, error: gameError } = await (supabase
          .from('games') as any)
          .insert({
            user_id: user!.id,
            game_mode: 'kahoot',
            total_questions: questionCount,
            correct_answers: 0,
            score_percentage: 0,
            average_time_per_question: 0,
          })
          .select()
          .single()

        if (gameError) throw gameError
        console.log('✅ Game created:', game.id)

        // Link categories to game
        console.log('🔗 Linking categories to game...')
        const { error: categoriesError } = await (supabase
          .from('game_categories') as any)
          .insert(
            selectedCategories.map((categoryId) => ({
              game_id: game.id,
              category_id: categoryId,
            }))
          )

        if (categoriesError) throw categoriesError
        console.log('✅ Categories linked')

        // Shuffle and limit questions
        const shuffled = (questions as any).sort(() => Math.random() - 0.5)
        const selectedQuestions = shuffled.slice(0, questionCount)

        // Link questions to game
        const { error: gameQuestionsError } = await (supabase
          .from('game_questions') as any)
          .insert(
            selectedQuestions.map((q: any, index: number) => ({
              game_id: game.id,
              question_id: q.id,
              question_order: index + 1,
            }))
          )

        if (gameQuestionsError) throw gameQuestionsError

        // Create Kahoot room
        const { error: roomError } = await (supabase
          .from('kahoot_rooms') as any)
          .insert({
            room_code: roomCode,
            host_id: user!.id,
            game_id: game.id,
            status: 'waiting',
            total_questions: questionCount,
          })

        if (roomError) throw roomError
        console.log('✅ Kahoot room created')

        // Redirect to lobby
        console.log('🚀 Redirecting to lobby:', roomCode)
        router.push(`/game/kahoot/host/${roomCode}`)
        return
      }

      // Standard game mode (original flow)
      console.log('📝 Creating standard game...')
      const { data: game, error: gameError } = await (supabase
        .from('games') as any)
        .insert({
          user_id: user!.id,
          game_mode: 'standard',
          total_questions: questionCount,
          correct_answers: 0,
          score_percentage: 0,
          average_time_per_question: 0,
        })
        .select()
        .single()

      if (gameError) throw gameError
      console.log('✅ Game created:', game.id)

      // Link categories to game
      console.log('🔗 Linking categories to game...')
      const { error: categoriesError } = await (supabase
        .from('game_categories') as any)
        .insert(
          selectedCategories.map((categoryId) => ({
            game_id: game.id,
            category_id: categoryId,
          }))
        )

      if (categoriesError) throw categoriesError
      console.log('✅ Categories linked')

      // Get random questions from selected categories
      console.log('🔍 Fetching questions from categories:', selectedCategories)
      const { data: questions, error: questionsError } = await supabase
        .from('questions')
        .select('id, category_id, question_text')
        .eq('status', 'approved')
        .in('category_id', selectedCategories)

      if (questionsError) {
        console.error('❌ Error fetching questions:', questionsError)
        throw questionsError
      }

      console.log(`✅ Found ${questions?.length || 0} approved questions in selected categories`)
      console.log('Questions data:', questions)

      // Shuffle and limit questions
      const shuffled = (questions as any).sort(() => Math.random() - 0.5)
      const selectedQuestions = shuffled.slice(0, questionCount)

      if (selectedQuestions.length < questionCount) {
        setError(`יש רק ${selectedQuestions.length} שאלות זמינות בקטגוריות שנבחרו (ביקשת ${questionCount})`)
        setLoading(false)
        return
      }

      // Link questions to game
      const { error: gameQuestionsError } = await (supabase
        .from('game_questions') as any)
        .insert(
          selectedQuestions.map((q: any, index: number) => ({
            game_id: game.id,
            question_id: q.id,
            question_order: index + 1,
          }))
        )

      if (gameQuestionsError) throw gameQuestionsError

      // Redirect to game
      console.log('🚀 Redirecting to game:', game.id)
      router.push(`/game/play/${game.id}`)
    } catch (err: any) {
      console.error('❌ Error in handleStartGame:', err)
      console.error('Error message:', err.message)
      console.error('Error details:', err)
      setError(err.message || 'אירעה שגיאה ביצירת המשחק')
    } finally {
      console.log('🏁 handleStartGame finished')
      setLoading(false)
    }
  }

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 dark:from-gray-900 dark:to-gray-800 p-4">
      <div className="container mx-auto max-w-3xl py-8">
        <div className="mb-6">
          <Button variant="ghost" asChild>
            <Link href="/dashboard">
              <ArrowRight className="w-4 h-4 ml-2" />
              חזרה
            </Link>
          </Button>
        </div>

        <Card>
          <CardHeader>
            <CardTitle className="text-3xl text-center">הגדרת משחק חדש</CardTitle>
          </CardHeader>
          <CardContent className="space-y-6">
            {error && (
              <Alert variant="destructive">
                <AlertDescription>{error}</AlertDescription>
              </Alert>
            )}

            {/* Game Mode Selection */}
            <div className="space-y-4">
              <Label className="text-lg font-semibold">סוג משחק:</Label>
              <Tabs value={gameMode} onValueChange={(value) => setGameMode(value as GameMode)}>
                <TabsList className="grid w-full grid-cols-2">
                  <TabsTrigger value="standard" className="flex items-center gap-2">
                    <User className="w-4 h-4" />
                    משחק רגיל
                  </TabsTrigger>
                  <TabsTrigger value="kahoot" className="flex items-center gap-2">
                    <Users className="w-4 h-4" />
                    משחק Kahoot
                  </TabsTrigger>
                </TabsList>
              </Tabs>
              {gameMode === 'kahoot' && (
                <Alert>
                  <AlertDescription>
                    במשחק Kahoot, תוכל להזמין שחקנים מרובים לשחק יחד בזמן אמת!
                    ניתן לסרוק קוד QR או להזין קוד חדר כדי להצטרף.
                  </AlertDescription>
                </Alert>
              )}
            </div>

            {/* Categories Selection */}
            <div className="space-y-4">
              <div className="flex items-center justify-between">
                <Label className="text-lg font-semibold">בחר קטגוריות:</Label>
                <div className="space-x-2 space-x-reverse">
                  <Button variant="outline" size="sm" onClick={selectAll}>
                    בחר הכל
                  </Button>
                  <Button variant="outline" size="sm" onClick={clearAll}>
                    נקה הכל
                  </Button>
                </div>
              </div>

              {categoriesLoading ? (
                <div className="text-center py-8">טוען קטגוריות...</div>
              ) : categories && categories.length > 0 ? (
                <div className="grid grid-cols-1 md:grid-cols-2 gap-3">
                  {categories.map((category: any) => {
                    const count = questionCounts?.[category.id] || 0
                    return (
                      <div
                        key={category.id}
                        className="flex items-center space-x-2 space-x-reverse p-3 border rounded-lg hover:bg-accent cursor-pointer"
                        onClick={() => toggleCategory(category.id)}
                      >
                        <Checkbox
                          id={category.id}
                          checked={selectedCategories.includes(category.id)}
                        />
                        <Label htmlFor={category.id} className="flex-1 cursor-pointer">
                          {category.name}
                          <span className="text-xs text-muted-foreground block">
                            {count} {count === 1 ? 'שאלה זמינה' : 'שאלות זמינות'}
                          </span>
                        </Label>
                      </div>
                    )
                  })}
                </div>
              ) : (
                <Alert>
                  <AlertDescription>
                    אין קטגוריות זמינות. אנא פנה למנהל המערכת.
                  </AlertDescription>
                </Alert>
              )}
            </div>

            {/* Question Count */}
            <div className="space-y-2">
              <Label htmlFor="questionCount" className="text-lg font-semibold">
                מספר שאלות:
              </Label>
              <div className="flex gap-2">
                {[10, 20, 30, 50].map((count) => (
                  <Button
                    key={count}
                    variant={questionCount === count ? 'default' : 'outline'}
                    onClick={() => setQuestionCount(count)}
                  >
                    {count}
                  </Button>
                ))}
                <Input
                  id="questionCount"
                  type="number"
                  min={5}
                  max={100}
                  value={questionCount}
                  onChange={(e) => setQuestionCount(Number(e.target.value))}
                  className="w-24"
                />
              </div>
            </div>

            {/* Summary */}
            {selectedCategories.length > 0 && (
              <div className="p-4 bg-muted rounded-lg">
                <p className="text-sm text-muted-foreground">
                  <strong>{selectedCategories.length}</strong> קטגוריות נבחרו •{' '}
                  <strong>{questionCount}</strong> שאלות
                </p>
              </div>
            )}

            {/* Start Button */}
            <Button
              onClick={handleStartGame}
              disabled={loading || selectedCategories.length === 0}
              className="w-full"
              size="lg"
            >
              {loading
                ? (gameMode === 'kahoot' ? 'יוצר חדר...' : 'מכין משחק...')
                : (gameMode === 'kahoot' ? 'צור חדר Kahoot!' : 'התחל משחק!')
              }
            </Button>
          </CardContent>
        </Card>
      </div>
    </div>
  )
}
