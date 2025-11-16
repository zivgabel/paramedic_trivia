'use client'

import { useState } from 'react'
import { useQuery, useMutation, useQueryClient } from '@tantml:react-query'
import { createClient } from '@/lib/supabase/client'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Alert, AlertDescription } from '@/components/ui/alert'
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs'
import Link from 'next/link'
import { ArrowRight, Check, X, Edit } from 'lucide-react'
import type { QuestionWithRelations } from '@/types/database.types'

export default function AdminQuestionsPage() {
  const [filter, setFilter] = useState<'pending' | 'approved' | 'rejected'>('pending')
  const supabase = createClient()
  const queryClient = useQueryClient()

  const { data: questions, isLoading } = useQuery({
    queryKey: ['admin-questions', filter],
    queryFn: async () => {
      const { data, error } = await supabase
        .from('questions')
        .select(`
          *,
          category:categories(*),
          answers(*),
          created_by_profile:profiles!created_by(*),
          reviewed_by_profile:profiles!reviewed_by(*)
        `)
        .eq('status', filter)
        .order('created_at', { ascending: false })

      if (error) throw error
      return data as QuestionWithRelations[]
    },
  })

  const updateStatusMutation = useMutation({
    mutationFn: async ({
      questionId,
      status,
      userId,
    }: {
      questionId: string
      status: 'approved' | 'rejected'
      userId: string
    }) => {
      const { error } = await supabase
        .from('questions')
        .update({
          status,
          reviewed_by: userId,
          updated_at: new Date().toISOString(),
        })
        .eq('id', questionId)

      if (error) throw error
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['admin-questions'] })
    },
  })

  const { data: user } = useQuery({
    queryKey: ['user'],
    queryFn: async () => {
      const {
        data: { user },
      } = await supabase.auth.getUser()
      return user
    },
  })

  const handleApprove = (questionId: string) => {
    if (!user) return
    updateStatusMutation.mutate({ questionId, status: 'approved', userId: user.id })
  }

  const handleReject = (questionId: string) => {
    if (!user) return
    updateStatusMutation.mutate({ questionId, status: 'rejected', userId: user.id })
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

        <Card>
          <CardHeader>
            <CardTitle className="text-3xl">ניהול שאלות</CardTitle>
          </CardHeader>
          <CardContent>
            <Tabs value={filter} onValueChange={(v) => setFilter(v as any)}>
              <TabsList className="grid w-full grid-cols-3 mb-6">
                <TabsTrigger value="pending">ממתינות לאישור</TabsTrigger>
                <TabsTrigger value="approved">מאושרות</TabsTrigger>
                <TabsTrigger value="rejected">נדחו</TabsTrigger>
              </TabsList>

              <TabsContent value={filter} className="space-y-4">
                {isLoading ? (
                  <div className="text-center py-8">טוען שאלות...</div>
                ) : questions && questions.length > 0 ? (
                  questions.map((question) => (
                    <Card key={question.id} className="border-2">
                      <CardHeader>
                        <div className="flex items-start justify-between">
                          <div className="flex-1">
                            <div className="flex items-center gap-2 mb-2">
                              <Badge>{question.category.name}</Badge>
                              <Badge variant="outline">{question.status}</Badge>
                            </div>
                            <h3 className="text-lg font-semibold">{question.question_text}</h3>
                            {question.explanation && (
                              <p className="text-sm text-muted-foreground mt-2">
                                הסבר: {question.explanation}
                              </p>
                            )}
                          </div>
                        </div>
                      </CardHeader>
                      <CardContent className="space-y-4">
                        <div className="space-y-2">
                          <p className="text-sm font-semibold">תשובות:</p>
                          {question.answers
                            .sort((a, b) => a.order_num - b.order_num)
                            .map((answer, index) => (
                              <div
                                key={answer.id}
                                className={`p-3 rounded-lg border-2 ${
                                  answer.is_correct
                                    ? 'border-green-500 bg-green-50 dark:bg-green-950'
                                    : 'border-border'
                                }`}
                              >
                                <div className="flex items-center gap-2">
                                  <span className="font-bold">{index + 1}.</span>
                                  <span>{answer.answer_text}</span>
                                  {answer.is_correct && (
                                    <Badge variant="default" className="mr-auto">
                                      נכון
                                    </Badge>
                                  )}
                                </div>
                              </div>
                            ))}
                        </div>

                        <div className="flex items-center justify-between text-sm text-muted-foreground">
                          <span>
                            נוצר ע"י: {question.created_by_profile?.full_name || 'לא ידוע'}
                          </span>
                          {question.reviewed_by_profile && (
                            <span>
                              נבדק ע"י: {question.reviewed_by_profile.full_name}
                            </span>
                          )}
                        </div>

                        {filter === 'pending' && (
                          <div className="flex gap-2">
                            <Button
                              onClick={() => handleApprove(question.id)}
                              disabled={updateStatusMutation.isPending}
                              className="flex-1"
                            >
                              <Check className="w-4 h-4 ml-2" />
                              אשר
                            </Button>
                            <Button
                              variant="outline"
                              disabled
                              className="flex-1"
                            >
                              <Edit className="w-4 h-4 ml-2" />
                              ערוך (בקרוב)
                            </Button>
                            <Button
                              variant="destructive"
                              onClick={() => handleReject(question.id)}
                              disabled={updateStatusMutation.isPending}
                              className="flex-1"
                            >
                              <X className="w-4 h-4 ml-2" />
                              דחה
                            </Button>
                          </div>
                        )}
                      </CardContent>
                    </Card>
                  ))
                ) : (
                  <Alert>
                    <AlertDescription>
                      {filter === 'pending'
                        ? 'אין שאלות הממתינות לאישור'
                        : filter === 'approved'
                        ? 'אין שאלות מאושרות'
                        : 'אין שאלות שנדחו'}
                    </AlertDescription>
                  </Alert>
                )}
              </TabsContent>
            </Tabs>
          </CardContent>
        </Card>
      </div>
    </div>
  )
}
