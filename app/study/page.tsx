'use client'

import { useState } from 'react'
import { useQuery } from '@tanstack/react-query'
import { createClient } from '@/lib/supabase/client'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Checkbox } from '@/components/ui/checkbox'
import { Label } from '@/components/ui/label'
import { Alert, AlertDescription } from '@/components/ui/alert'
import { Badge } from '@/components/ui/badge'
import Link from 'next/link'
import { ArrowRight, ChevronLeft, ChevronRight, BookOpen, Eye, EyeOff } from 'lucide-react'
import type { QuestionWithAnswers } from '@/types/database.types'

export default function StudyPage() {
  const [selectedCategories, setSelectedCategories] = useState<string[]>([])
  const [currentIndex, setCurrentIndex] = useState(0)
  const [showAnswer, setShowAnswer] = useState(false)
  const [started, setStarted] = useState(false)

  const supabase = createClient()

  // Fetch categories
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

  // Fetch questions based on selected categories
  const { data: questions, isLoading: questionsLoading } = useQuery({
    queryKey: ['study-questions', selectedCategories],
    queryFn: async (): Promise<QuestionWithAnswers[]> => {
      if (selectedCategories.length === 0) return []

      const { data, error } = await supabase
        .from('questions')
        .select(`
          *,
          category:categories(*),
          answers(*)
        `)
        .eq('status', 'approved')
        .in('category_id', selectedCategories)
        .order('created_at', { ascending: false })

      if (error) throw error
      return data as any
    },
    enabled: started && selectedCategories.length > 0,
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

  const handleStart = () => {
    if (selectedCategories.length === 0) {
      return
    }
    setStarted(true)
    setCurrentIndex(0)
    setShowAnswer(false)
  }

  const handleNext = () => {
    if (questions && currentIndex < questions.length - 1) {
      setCurrentIndex(currentIndex + 1)
      setShowAnswer(false)
    }
  }

  const handlePrevious = () => {
    if (currentIndex > 0) {
      setCurrentIndex(currentIndex - 1)
      setShowAnswer(false)
    }
  }

  const handleBackToSelection = () => {
    setStarted(false)
    setCurrentIndex(0)
    setShowAnswer(false)
  }

  if (!started) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 dark:from-gray-900 dark:to-gray-800 p-4">
        <div className="container mx-auto max-w-3xl py-8">
          <div className="mb-6">
            <Button variant="ghost" asChild>
              <Link href="/dashboard">
                <ArrowRight className="w-4 h-4 ml-2" />
                חזרה לדף הבית
              </Link>
            </Button>
          </div>

          <Card>
            <CardHeader>
              <div className="flex items-center gap-3 mb-2">
                <div className="w-12 h-12 bg-blue-100 dark:bg-blue-900/20 rounded-full flex items-center justify-center">
                  <BookOpen className="w-6 h-6 text-blue-600 dark:text-blue-400" />
                </div>
                <div>
                  <CardTitle className="text-3xl">מצב לימוד</CardTitle>
                  <CardDescription>עיון בשאלות ללא ניקוד - לתרגול ולימוד</CardDescription>
                </div>
              </div>
            </CardHeader>
            <CardContent className="space-y-6">
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
                    {categories.map((category: any) => (
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
                    <AlertDescription>אין קטגוריות זמינות</AlertDescription>
                  </Alert>
                )}
              </div>

              {/* Summary & Start */}
              {selectedCategories.length > 0 && (
                <div className="p-4 bg-muted rounded-lg">
                  <p className="text-sm text-muted-foreground">
                    <strong>{selectedCategories.length}</strong> קטגוריות נבחרו
                  </p>
                </div>
              )}

              <Button
                onClick={handleStart}
                disabled={selectedCategories.length === 0}
                className="w-full"
                size="lg"
              >
                התחל לימוד
              </Button>
            </CardContent>
          </Card>
        </div>
      </div>
    )
  }

  // Study mode view
  if (questionsLoading) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 dark:from-gray-900 dark:to-gray-800 p-4 flex items-center justify-center">
        <div className="text-center">
          <p className="text-lg">טוען שאלות...</p>
        </div>
      </div>
    )
  }

  if (!questions || questions.length === 0) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 dark:from-gray-900 dark:to-gray-800 p-4">
        <div className="container mx-auto max-w-3xl py-8">
          <Alert>
            <AlertDescription>
              לא נמצאו שאלות בקטגוריות שנבחרו. נסה לבחור קטגוריות אחרות.
            </AlertDescription>
          </Alert>
          <div className="mt-4">
            <Button onClick={handleBackToSelection}>חזור לבחירת קטגוריות</Button>
          </div>
        </div>
      </div>
    )
  }

  const currentQuestion = questions[currentIndex]
  const sortedAnswers = currentQuestion.answers.sort((a, b) => a.order_num - b.order_num)
  const correctAnswer = sortedAnswers.find((a) => a.is_correct)

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 dark:from-gray-900 dark:to-gray-800 p-4">
      <div className="container mx-auto max-w-4xl py-8">
        {/* Header */}
        <div className="mb-6 flex items-center justify-between">
          <Button variant="ghost" onClick={handleBackToSelection}>
            <ArrowRight className="w-4 h-4 ml-2" />
            חזור לבחירת קטגוריות
          </Button>
          <div className="text-sm text-muted-foreground">
            שאלה {currentIndex + 1} מתוך {questions.length}
          </div>
        </div>

        {/* Question Card */}
        <Card className="mb-6">
          <CardHeader>
            <div className="flex items-center justify-between mb-4">
              <Badge>{currentQuestion.category.name}</Badge>
              <div className="flex items-center gap-2">
                <span className="text-sm text-muted-foreground">
                  {currentIndex + 1}/{questions.length}
                </span>
              </div>
            </div>
            <CardTitle className="text-2xl leading-relaxed">
              {currentQuestion.question_text}
            </CardTitle>
          </CardHeader>
          <CardContent className="space-y-4">
            {/* Answers */}
            <div className="space-y-3">
              {sortedAnswers.map((answer, index) => (
                <div
                  key={answer.id}
                  className={`p-4 rounded-lg border-2 transition-colors ${
                    showAnswer && answer.is_correct
                      ? 'border-green-500 bg-green-50 dark:bg-green-950'
                      : 'border-border'
                  }`}
                >
                  <div className="flex items-center gap-3">
                    <span className="font-bold text-lg">{index + 1}.</span>
                    <span className="flex-1">{answer.answer_text}</span>
                    {showAnswer && answer.is_correct && (
                      <Badge variant="default" className="bg-green-600">
                        תשובה נכונה
                      </Badge>
                    )}
                  </div>
                </div>
              ))}
            </div>

            {/* Show/Hide Answer Button */}
            <Button
              onClick={() => setShowAnswer(!showAnswer)}
              variant="outline"
              className="w-full"
            >
              {showAnswer ? (
                <>
                  <EyeOff className="w-4 h-4 ml-2" />
                  הסתר תשובה
                </>
              ) : (
                <>
                  <Eye className="w-4 h-4 ml-2" />
                  הצג תשובה נכונה
                </>
              )}
            </Button>

            {/* Explanation */}
            {showAnswer && currentQuestion.explanation && (
              <div className="p-4 bg-blue-50 dark:bg-blue-950 rounded-lg border-2 border-blue-200 dark:border-blue-800">
                <p className="font-semibold mb-2">הסבר:</p>
                <p className="text-sm">{currentQuestion.explanation}</p>
              </div>
            )}
          </CardContent>
        </Card>

        {/* Navigation */}
        <div className="flex items-center justify-between gap-4">
          <Button
            onClick={handlePrevious}
            disabled={currentIndex === 0}
            variant="outline"
            size="lg"
            className="flex-1"
          >
            <ChevronRight className="w-4 h-4 ml-2" />
            שאלה קודמת
          </Button>
          <Button
            onClick={handleNext}
            disabled={currentIndex === questions.length - 1}
            size="lg"
            className="flex-1"
          >
            שאלה הבאה
            <ChevronLeft className="w-4 h-4 mr-2" />
          </Button>
        </div>

        {/* Progress Indicator */}
        <div className="mt-6">
          <div className="w-full bg-secondary rounded-full h-2">
            <div
              className="bg-primary h-2 rounded-full transition-all"
              style={{ width: `${((currentIndex + 1) / questions.length) * 100}%` }}
            />
          </div>
        </div>
      </div>
    </div>
  )
}
