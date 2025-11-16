'use client'

import { useQuery } from '@tanstack/react-query'
import { createClient } from '@/lib/supabase/client'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Alert, AlertDescription } from '@/components/ui/alert'
import Link from 'next/link'
import { ArrowRight, TrendingUp, TrendingDown, Trophy, Target, Clock, BarChart3 } from 'lucide-react'
import { LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, ResponsiveContainer, BarChart, Bar } from 'recharts'
import type { UserStats, CategoryStats } from '@/types/database.types'

export default function StatsPage() {
  const supabase = createClient()

  // Get current user
  const { data: user } = useQuery({
    queryKey: ['user'],
    queryFn: async () => {
      const { data: { user } } = await supabase.auth.getUser()
      return user
    },
  })

  // Fetch user statistics
  const { data: stats, isLoading: statsLoading } = useQuery({
    queryKey: ['user-stats', user?.id],
    queryFn: async (): Promise<UserStats> => {
      if (!user) throw new Error('No user')

      // Get all user games
      const { data: games, error: gamesError } = await supabase
        .from('games')
        .select('*, game_categories(category_id), game_questions(*)')
        .eq('user_id', user.id)
        .not('completed_at', 'is', null)
        .order('completed_at', { ascending: false })

      if (gamesError) throw gamesError

      const typedGames = games as any

      if (!typedGames || typedGames.length === 0) {
        return {
          total_games: 0,
          average_score: 0,
          best_category: null,
          worst_category: null,
          recent_scores: [],
          total_correct: 0,
          total_questions: 0,
        }
      }

      // Calculate basic stats
      const totalGames = typedGames.length
      const totalCorrect = typedGames.reduce((sum: number, g: any) => sum + (g.correct_answers || 0), 0)
      const totalQuestions = typedGames.reduce((sum: number, g: any) => sum + (g.total_questions || 0), 0)
      const averageScore = totalQuestions > 0 ? Math.round((totalCorrect / totalQuestions) * 100) : 0
      const recentScores = typedGames.slice(0, 10).map((g: any) => g.score_percentage).reverse()

      // Calculate category stats
      const categoryMap = new Map<string, { correct: number; total: number; name: string }>()

      for (const game of typedGames) {
        for (const cat of game.game_categories || []) {
          const categoryId = cat.category_id
          const gameQuestions = game.game_questions || []
          const categoryQuestions = gameQuestions.filter((q: any) => q.is_correct !== null)
          const categoryCorrect = categoryQuestions.filter((q: any) => q.is_correct === true).length

          if (!categoryMap.has(categoryId)) {
            // Fetch category name
            const { data: category } = await supabase
              .from('categories')
              .select('name')
              .eq('id', categoryId)
              .single()

            categoryMap.set(categoryId, {
              correct: 0,
              total: 0,
              name: (category as any)?.name || 'Unknown',
            })
          }

          const catStats = categoryMap.get(categoryId)!
          catStats.correct += categoryCorrect
          catStats.total += categoryQuestions.length
        }
      }

      // Find best and worst categories
      let bestCategory = null
      let worstCategory = null
      let bestScore = -1
      let worstScore = 101

      for (const [id, stats] of categoryMap.entries()) {
        if (stats.total === 0) continue
        const score = Math.round((stats.correct / stats.total) * 100)

        if (score > bestScore) {
          bestScore = score
          bestCategory = { id, name: stats.name, score }
        }
        if (score < worstScore) {
          worstScore = score
          worstCategory = { id, name: stats.name, score }
        }
      }

      return {
        total_games: totalGames,
        average_score: averageScore,
        best_category: bestCategory,
        worst_category: worstCategory,
        recent_scores: recentScores,
        total_correct: totalCorrect,
        total_questions: totalQuestions,
      }
    },
    enabled: !!user,
  })

  // Fetch category breakdown
  const { data: categoryStats, isLoading: categoryLoading } = useQuery({
    queryKey: ['category-stats', user?.id],
    queryFn: async (): Promise<CategoryStats[]> => {
      if (!user) throw new Error('No user')

      const { data: games, error } = await supabase
        .from('games')
        .select(`
          *,
          game_categories(category_id),
          game_questions(*, question:questions(category_id))
        `)
        .eq('user_id', user.id)
        .not('completed_at', 'is', null)

      if (error) throw error

      const typedGames = games as any
      const categoryMap = new Map<string, { name: string; correct: number; total: number; totalTime: number }>()

      for (const game of typedGames) {
        for (const gq of game.game_questions || []) {
          if (gq.is_correct === null) continue

          const categoryId = gq.question?.category_id
          if (!categoryId) continue

          if (!categoryMap.has(categoryId)) {
            const { data: category } = await supabase
              .from('categories')
              .select('name')
              .eq('id', categoryId)
              .single()

            categoryMap.set(categoryId, {
              name: (category as any)?.name || 'Unknown',
              correct: 0,
              total: 0,
              totalTime: 0,
            })
          }

          const catStats = categoryMap.get(categoryId)!
          catStats.total++
          if (gq.is_correct) catStats.correct++
          catStats.totalTime += gq.time_taken || 0
        }
      }

      return Array.from(categoryMap.entries()).map(([id, stats]) => ({
        category_id: id,
        category_name: stats.name,
        total_questions: stats.total,
        correct_answers: stats.correct,
        accuracy: stats.total > 0 ? Math.round((stats.correct / stats.total) * 100) : 0,
        average_time: stats.total > 0 ? Math.round(stats.totalTime / stats.total) : 0,
      }))
    },
    enabled: !!user,
  })

  const isLoading = statsLoading || categoryLoading

  if (isLoading) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 dark:from-gray-900 dark:to-gray-800 p-4">
        <div className="container mx-auto max-w-6xl py-8">
          <div className="text-center py-12">
            <p className="text-lg">טוען סטטיסטיקות...</p>
          </div>
        </div>
      </div>
    )
  }

  if (!stats || stats.total_games === 0) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 dark:from-gray-900 dark:to-gray-800 p-4">
        <div className="container mx-auto max-w-6xl py-8">
          <div className="mb-6">
            <Button variant="ghost" asChild>
              <Link href="/dashboard">
                <ArrowRight className="w-4 h-4 ml-2" />
                חזרה לדף הבית
              </Link>
            </Button>
          </div>

          <Alert>
            <AlertDescription>
              עדיין לא שיחקת אף משחק. התחל לשחק כדי לראות את הסטטיסטיקות שלך!
            </AlertDescription>
          </Alert>

          <div className="mt-6">
            <Button asChild size="lg">
              <Link href="/game/setup">התחל משחק חדש</Link>
            </Button>
          </div>
        </div>
      </div>
    )
  }

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 dark:from-gray-900 dark:to-gray-800 p-4">
      <div className="container mx-auto max-w-6xl py-8">
        <div className="mb-6">
          <Button variant="ghost" asChild>
            <Link href="/dashboard">
              <ArrowRight className="w-4 h-4 ml-2" />
              חזרה לדף הבית
            </Link>
          </Button>
        </div>

        <div className="mb-8">
          <h1 className="text-4xl font-bold mb-2">הסטטיסטיקות שלי</h1>
          <p className="text-muted-foreground">עקוב אחר ההתקדמות והביצועים שלך</p>
        </div>

        {/* Overview Cards */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4 mb-8">
          <Card>
            <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
              <CardTitle className="text-sm font-medium">סך משחקים</CardTitle>
              <BarChart3 className="h-4 w-4 text-muted-foreground" />
            </CardHeader>
            <CardContent>
              <div className="text-2xl font-bold">{stats.total_games}</div>
              <p className="text-xs text-muted-foreground">משחקים שהושלמו</p>
            </CardContent>
          </Card>

          <Card>
            <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
              <CardTitle className="text-sm font-medium">ציון ממוצע</CardTitle>
              <Target className="h-4 w-4 text-muted-foreground" />
            </CardHeader>
            <CardContent>
              <div className="text-2xl font-bold">{stats.average_score}%</div>
              <p className="text-xs text-muted-foreground">
                {stats.total_correct} מתוך {stats.total_questions} שאלות
              </p>
            </CardContent>
          </Card>

          {stats.best_category && (
            <Card>
              <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                <CardTitle className="text-sm font-medium">הקטגוריה הכי טובה</CardTitle>
                <TrendingUp className="h-4 w-4 text-green-600" />
              </CardHeader>
              <CardContent>
                <div className="text-2xl font-bold">{stats.best_category.score}%</div>
                <p className="text-xs text-muted-foreground">{stats.best_category.name}</p>
              </CardContent>
            </Card>
          )}

          {stats.worst_category && (
            <Card>
              <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                <CardTitle className="text-sm font-medium">צריך שיפור</CardTitle>
                <TrendingDown className="h-4 w-4 text-orange-600" />
              </CardHeader>
              <CardContent>
                <div className="text-2xl font-bold">{stats.worst_category.score}%</div>
                <p className="text-xs text-muted-foreground">{stats.worst_category.name}</p>
              </CardContent>
            </Card>
          )}
        </div>

        {/* Recent Performance Chart */}
        {stats.recent_scores.length > 0 && (
          <Card className="mb-8">
            <CardHeader>
              <CardTitle>ביצועים אחרונים</CardTitle>
              <CardDescription>הציונים ב-10 המשחקים האחרונים</CardDescription>
            </CardHeader>
            <CardContent>
              <ResponsiveContainer width="100%" height={300}>
                <LineChart data={stats.recent_scores.map((score, idx) => ({ game: idx + 1, score }))}>
                  <CartesianGrid strokeDasharray="3 3" />
                  <XAxis dataKey="game" label={{ value: 'משחק', position: 'insideBottom', offset: -5 }} />
                  <YAxis label={{ value: 'ציון (%)', angle: -90, position: 'insideLeft' }} />
                  <Tooltip />
                  <Line type="monotone" dataKey="score" stroke="#8884d8" strokeWidth={2} />
                </LineChart>
              </ResponsiveContainer>
            </CardContent>
          </Card>
        )}

        {/* Category Breakdown */}
        {categoryStats && categoryStats.length > 0 && (
          <Card>
            <CardHeader>
              <CardTitle>ביצועים לפי קטגוריה</CardTitle>
              <CardDescription>דיוק וזמן תגובה ממוצע</CardDescription>
            </CardHeader>
            <CardContent>
              <div className="space-y-4">
                {categoryStats
                  .sort((a, b) => b.accuracy - a.accuracy)
                  .map((cat) => (
                    <div key={cat.category_id} className="space-y-2">
                      <div className="flex items-center justify-between">
                        <div className="flex-1">
                          <p className="font-medium">{cat.category_name}</p>
                          <p className="text-sm text-muted-foreground">
                            {cat.correct_answers} מתוך {cat.total_questions} שאלות
                          </p>
                        </div>
                        <div className="flex items-center gap-4">
                          <div className="text-left">
                            <p className="text-2xl font-bold">{cat.accuracy}%</p>
                            <p className="text-xs text-muted-foreground">דיוק</p>
                          </div>
                          <div className="text-left">
                            <div className="flex items-center gap-1">
                              <Clock className="h-3 w-3" />
                              <p className="text-sm font-medium">{cat.average_time}s</p>
                            </div>
                            <p className="text-xs text-muted-foreground">ממוצע</p>
                          </div>
                        </div>
                      </div>
                      <div className="w-full bg-secondary rounded-full h-2">
                        <div
                          className="bg-primary h-2 rounded-full transition-all"
                          style={{ width: `${cat.accuracy}%` }}
                        />
                      </div>
                    </div>
                  ))}
              </div>
            </CardContent>
          </Card>
        )}
      </div>
    </div>
  )
}
