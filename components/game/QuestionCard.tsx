'use client'

import { Card, CardContent, CardHeader } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Button } from '@/components/ui/button'
import type { QuestionWithAnswers } from '@/types/database.types'
import { cn } from '@/lib/utils'
import Image from 'next/image'
import { useMemo } from 'react'

interface QuestionCardProps {
  question: QuestionWithAnswers
  selectedAnswerId: string | null
  onSelectAnswer: (answerId: string) => void
  onSubmit: () => void
  showResult?: boolean
  isCorrect?: boolean | null
  disabled?: boolean
}

export function QuestionCard({
  question,
  selectedAnswerId,
  onSelectAnswer,
  onSubmit,
  showResult = false,
  isCorrect = null,
  disabled = false,
}: QuestionCardProps) {
  // Shuffle answers randomly but keep the same order during re-renders using useMemo
  const shuffledAnswers = useMemo(() => {
    const answers = [...question.answers]
    // Fisher-Yates shuffle algorithm
    for (let i = answers.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [answers[i], answers[j]] = [answers[j], answers[i]]
    }
    return answers
  }, [question.id]) // Shuffle once per question (when question.id changes)

  return (
    <Card className="w-full max-w-3xl mx-auto">
      <CardHeader>
        <div className="flex items-center justify-between mb-2">
          <Badge variant="outline">{question.category.name}</Badge>
          {showResult && (
            <Badge variant={isCorrect ? 'default' : 'destructive'}>
              {isCorrect ? '✓ נכון' : '✗ לא נכון'}
            </Badge>
          )}
        </div>
        <h2 className="text-2xl font-bold text-right">{question.question_text}</h2>
      </CardHeader>
      <CardContent className="space-y-4">
        {question.image_url && (
          <div className="relative w-full h-64 rounded-lg overflow-hidden">
            <Image
              src={question.image_url}
              alt="שאלה"
              fill
              className="object-contain"
            />
          </div>
        )}

        <div className="space-y-3">
          {shuffledAnswers.map((answer, index) => {
            const isSelected = selectedAnswerId === answer.id
            const isCorrectAnswer = answer.is_correct
            const showCorrect = showResult && isCorrectAnswer
            const showIncorrect = showResult && isSelected && !isCorrectAnswer

            return (
              <button
                key={answer.id}
                onClick={() => !disabled && !showResult && onSelectAnswer(answer.id)}
                disabled={disabled || showResult}
                className={cn(
                  'w-full p-4 text-right rounded-lg border-2 transition-all',
                  'hover:bg-accent hover:border-accent-foreground',
                  'disabled:opacity-50 disabled:cursor-not-allowed',
                  isSelected && !showResult && 'border-primary bg-primary/10',
                  showCorrect && 'border-green-500 bg-green-50 dark:bg-green-950',
                  showIncorrect && 'border-red-500 bg-red-50 dark:bg-red-950',
                  !isSelected && !showCorrect && !showIncorrect && 'border-border'
                )}
              >
                <div className="flex items-center justify-between gap-4">
                  <span className="text-lg">{answer.answer_text}</span>
                  <span className="flex-shrink-0 w-8 h-8 rounded-full bg-muted flex items-center justify-center font-bold">
                    {index + 1}
                  </span>
                </div>
              </button>
            )
          })}
        </div>

        {!showResult && (
          <Button
            onClick={onSubmit}
            disabled={!selectedAnswerId || disabled}
            className="w-full"
            size="lg"
          >
            אשר תשובה
          </Button>
        )}

        {showResult && question.explanation && (
          <div className="mt-4 p-4 bg-muted rounded-lg">
            <h3 className="font-bold mb-2">הסבר:</h3>
            <p className="text-right">{question.explanation}</p>
          </div>
        )}
      </CardContent>
    </Card>
  )
}
