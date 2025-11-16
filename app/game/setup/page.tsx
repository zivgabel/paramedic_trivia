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
import { createClient } from '@/lib/supabase/client'
import { ArrowRight } from 'lucide-react'
import Link from 'next/link'

export default function GameSetupPage() {
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
      return data
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
      setSelectedCategories(categories.map((c) => c.id))
    }
  }

  const clearAll = () => {
    setSelectedCategories([])
  }

  const handleStartGame = async () => {
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
      // Create game
      const { data: game, error: gameError } = await supabase
        .from('games')
        .insert({
          user_id: user!.id,
          total_questions: questionCount,
          correct_answers: 0,
          score_percentage: 0,
          average_time_per_question: 0,
        })
        .select()
        .single()

      if (gameError) throw gameError

      // Link categories to game
      const { error: categoriesError } = await supabase
        .from('game_categories')
        .insert(
          selectedCategories.map((categoryId) => ({
            game_id: game.id,
            category_id: categoryId,
          }))
        )

      if (categoriesError) throw categoriesError

      // Get random questions from selected categories
      const { data: questions, error: questionsError } = await supabase
        .from('questions')
        .select('id')
        .eq('status', 'approved')
        .in('category_id', selectedCategories)

      if (questionsError) throw questionsError

      // Shuffle and limit questions
      const shuffled = questions.sort(() => Math.random() - 0.5)
      const selectedQuestions = shuffled.slice(0, questionCount)

      if (selectedQuestions.length < questionCount) {
        setError(`יש רק ${selectedQuestions.length} שאלות זמינות בקטגוריות שנבחרו`)
        return
      }

      // Link questions to game
      const { error: gameQuestionsError } = await supabase
        .from('game_questions')
        .insert(
          selectedQuestions.map((q, index) => ({
            game_id: game.id,
            question_id: q.id,
            question_order: index + 1,
          }))
        )

      if (gameQuestionsError) throw gameQuestionsError

      // Redirect to game
      router.push(`/game/play/${game.id}`)
    } catch (err: any) {
      setError(err.message || 'אירעה שגיאה ביצירת המשחק')
    } finally {
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
                  {categories.map((category) => (
                    <div
                      key={category.id}
                      className="flex items-center space-x-2 space-x-reverse p-3 border rounded-lg hover:bg-accent cursor-pointer"
                      onClick={() => toggleCategory(category.id)}
                    >
                      <Checkbox
                        id={category.id}
                        checked={selectedCategories.includes(category.id)}
                        onCheckedChange={() => toggleCategory(category.id)}
                      />
                      <Label htmlFor={category.id} className="flex-1 cursor-pointer">
                        {category.name}
                        {category.description && (
                          <span className="text-xs text-muted-foreground block">
                            {category.description}
                          </span>
                        )}
                      </Label>
                    </div>
                  ))}
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
              {loading ? 'מכין משחק...' : 'התחל משחק!'}
            </Button>
          </CardContent>
        </Card>
      </div>
    </div>
  )
}
