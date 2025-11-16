'use client'

import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Trophy, Target, Clock, TrendingUp } from 'lucide-react'
import Link from 'next/link'

interface GameSummaryProps {
  totalQuestions: number
  correctAnswers: number
  scorePercentage: number
  averageTime: number
  onPlayAgain?: () => void
}

export function GameSummary({
  totalQuestions,
  correctAnswers,
  scorePercentage,
  averageTime,
  onPlayAgain,
}: GameSummaryProps) {
  const getScoreMessage = (percentage: number) => {
    if (percentage >= 90) return 'מעולה! 🎉'
    if (percentage >= 75) return 'כל הכבוד! 👏'
    if (percentage >= 60) return 'יפה מאוד! 👍'
    return 'כדאי לתרגל עוד קצת 💪'
  }

  const getScoreColor = (percentage: number) => {
    if (percentage >= 75) return 'text-green-600 dark:text-green-400'
    if (percentage >= 60) return 'text-yellow-600 dark:text-yellow-400'
    return 'text-red-600 dark:text-red-400'
  }

  return (
    <Card className="w-full max-w-2xl mx-auto">
      <CardHeader className="text-center">
        <div className="mx-auto w-20 h-20 bg-primary/10 rounded-full flex items-center justify-center mb-4">
          <Trophy className="w-12 h-12 text-primary" />
        </div>
        <CardTitle className="text-3xl">סיכום המשחק</CardTitle>
        <p className={`text-4xl font-bold mt-2 ${getScoreColor(scorePercentage)}`}>
          {scorePercentage}%
        </p>
        <p className="text-xl text-muted-foreground mt-2">{getScoreMessage(scorePercentage)}</p>
      </CardHeader>

      <CardContent className="space-y-6">
        <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
          <div className="flex flex-col items-center p-4 bg-muted rounded-lg">
            <Target className="w-8 h-8 mb-2 text-primary" />
            <span className="text-2xl font-bold">
              {correctAnswers}/{totalQuestions}
            </span>
            <span className="text-sm text-muted-foreground">תשובות נכונות</span>
          </div>

          <div className="flex flex-col items-center p-4 bg-muted rounded-lg">
            <TrendingUp className="w-8 h-8 mb-2 text-primary" />
            <span className="text-2xl font-bold">{scorePercentage}%</span>
            <span className="text-sm text-muted-foreground">דיוק</span>
          </div>

          <div className="flex flex-col items-center p-4 bg-muted rounded-lg">
            <Clock className="w-8 h-8 mb-2 text-primary" />
            <span className="text-2xl font-bold">{averageTime}s</span>
            <span className="text-sm text-muted-foreground">זמן ממוצע</span>
          </div>
        </div>

        <div className="flex flex-col sm:flex-row gap-3">
          {onPlayAgain && (
            <Button onClick={onPlayAgain} className="flex-1" size="lg">
              שחק שוב
            </Button>
          )}
          <Button asChild variant="outline" className="flex-1" size="lg">
            <Link href="/dashboard">חזרה לדף הבית</Link>
          </Button>
          <Button asChild variant="outline" className="flex-1" size="lg">
            <Link href="/stats">צפה בסטטיסטיקות</Link>
          </Button>
        </div>
      </CardContent>
    </Card>
  )
}
