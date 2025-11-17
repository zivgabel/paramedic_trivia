'use client'

import { useState } from 'react'
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query'
import { createClient } from '@/lib/supabase/client'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Alert, AlertDescription } from '@/components/ui/alert'
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
  DialogFooter,
} from '@/components/ui/dialog'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import { Textarea } from '@/components/ui/textarea'
import {
  CheckCircle,
  XCircle,
  Edit,
  Trash2,
  AlertCircle,
  ArrowRight
} from 'lucide-react'
import Link from 'next/link'
import { useRouter } from 'next/navigation'

interface Answer {
  id: string
  answer_text: string
  is_correct: boolean
  order_num: number
}

interface Question {
  id: string
  question_text: string
  explanation: string
  status: string
  category: {
    id: string
    name: string
  }
  answers: Answer[]
  created_at: string
}

export default function PendingQuestionsPage() {
  const [selectedQuestion, setSelectedQuestion] = useState<Question | null>(null)
  const [isEditModalOpen, setIsEditModalOpen] = useState(false)
  const [editedQuestion, setEditedQuestion] = useState<any>(null)
  const router = useRouter()
  const supabase = createClient()
  const queryClient = useQueryClient()

  // Check if user is admin/instructor
  const { data: user } = useQuery({
    queryKey: ['user'],
    queryFn: async () => {
      const { data: { user } } = await supabase.auth.getUser()
      if (!user) return null

      const { data: profile } = await supabase
        .from('profiles')
        .select('role')
        .eq('id', user.id)
        .single()

      return { ...user, role: (profile as any)?.role }
    },
  })

  // Redirect if not admin/instructor
  if (user && !['admin', 'instructor'].includes(user.role)) {
    router.push('/dashboard')
    return null
  }

  // Fetch pending questions
  const { data: questions, isLoading } = useQuery({
    queryKey: ['pending-questions'],
    queryFn: async () => {
      const { data, error } = await supabase
        .from('questions')
        .select(`
          *,
          category:categories(id, name),
          answers(*)
        `)
        .eq('status', 'pending')
        .order('created_at', { ascending: false })

      if (error) throw error
      return data as Question[]
    },
  })

  // Approve question mutation
  const approveMutation = useMutation({
    mutationFn: async (questionId: string) => {
      const { error } = await (supabase
        .from('questions') as any)
        .update({
          status: 'approved',
          reviewed_by: user?.id,
        })
        .eq('id', questionId)

      if (error) throw error
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['pending-questions'] })
    },
  })

  // Reject/Delete question mutation
  const rejectMutation = useMutation({
    mutationFn: async (questionId: string) => {
      const { error } = await (supabase
        .from('questions') as any)
        .update({
          status: 'rejected',
          reviewed_by: user?.id,
        })
        .eq('id', questionId)

      if (error) throw error
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['pending-questions'] })
    },
  })

  // Delete question permanently
  const deleteMutation = useMutation({
    mutationFn: async (questionId: string) => {
      const { error } = await supabase
        .from('questions')
        .delete()
        .eq('id', questionId)

      if (error) throw error
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['pending-questions'] })
    },
  })

  // Update question mutation
  const updateMutation = useMutation({
    mutationFn: async ({ questionId, data }: { questionId: string; data: any }) => {
      // Update question
      const { error: questionError } = await (supabase
        .from('questions') as any)
        .update({
          question_text: data.question_text,
          explanation: data.explanation,
        })
        .eq('id', questionId)

      if (questionError) throw questionError

      // Update answers
      for (const answer of data.answers) {
        const { error: answerError } = await (supabase
          .from('answers') as any)
          .update({
            answer_text: answer.answer_text,
            is_correct: answer.is_correct,
          })
          .eq('id', answer.id)

        if (answerError) throw answerError
      }
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['pending-questions'] })
      setIsEditModalOpen(false)
      setSelectedQuestion(null)
    },
  })

  const handleEdit = (question: Question) => {
    setSelectedQuestion(question)
    setEditedQuestion({
      question_text: question.question_text,
      explanation: question.explanation,
      answers: question.answers.map(a => ({ ...a })),
    })
    setIsEditModalOpen(true)
  }

  const handleSaveEdit = () => {
    if (selectedQuestion && editedQuestion) {
      updateMutation.mutate({
        questionId: selectedQuestion.id,
        data: editedQuestion,
      })
    }
  }

  if (isLoading) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 dark:from-gray-900 dark:to-gray-800 p-4">
        <div className="container mx-auto max-w-6xl py-8">
          <div className="text-center">טוען שאלות ממתינות...</div>
        </div>
      </div>
    )
  }

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 dark:from-gray-900 dark:to-gray-800 p-4">
      <div className="container mx-auto max-w-6xl py-8">
        {/* Header */}
        <div className="mb-6 flex items-center justify-between">
          <div>
            <h1 className="text-3xl font-bold mb-2">שאלות ממתינות לאישור</h1>
            <p className="text-muted-foreground">
              {questions?.length || 0} שאלות ממתינות לביקורת
            </p>
          </div>
          <div className="flex gap-2">
            <Button variant="ghost" asChild>
              <Link href="/admin/questions">
                <ArrowRight className="w-4 h-4 ml-2" />
                לשאלות מאושרות
              </Link>
            </Button>
            <Button variant="ghost" asChild>
              <Link href="/dashboard">
                <ArrowRight className="w-4 h-4 ml-2" />
                לדף הבית
              </Link>
            </Button>
          </div>
        </div>

        {/* Questions List */}
        {!questions || questions.length === 0 ? (
          <Alert>
            <AlertCircle className="h-4 w-4" />
            <AlertDescription>
              אין שאלות ממתינות לאישור כרגע
            </AlertDescription>
          </Alert>
        ) : (
          <div className="space-y-4">
            {questions.map((question) => (
              <Card key={question.id}>
                <CardHeader>
                  <div className="flex items-start justify-between">
                    <div className="flex-1">
                      <div className="flex items-center gap-2 mb-2">
                        <Badge variant="outline">{question.category.name}</Badge>
                        <Badge variant="secondary">ממתין</Badge>
                      </div>
                      <CardTitle className="text-xl mb-2">
                        {question.question_text}
                      </CardTitle>
                      {question.explanation && (
                        <CardDescription className="text-right">
                          הסבר: {question.explanation}
                        </CardDescription>
                      )}
                    </div>
                  </div>
                </CardHeader>
                <CardContent>
                  {/* Answers */}
                  <div className="space-y-2 mb-4">
                    {question.answers
                      .sort((a, b) => a.order_num - b.order_num)
                      .map((answer, idx) => (
                        <div
                          key={answer.id}
                          className={`p-3 rounded-lg border-2 ${
                            answer.is_correct
                              ? 'border-green-500 bg-green-50 dark:bg-green-950'
                              : 'border-border'
                          }`}
                        >
                          <div className="flex items-center gap-2">
                            <span className="font-bold">{idx + 1}.</span>
                            <span className="flex-1">{answer.answer_text}</span>
                            {answer.is_correct && (
                              <Badge className="bg-green-600">נכון</Badge>
                            )}
                          </div>
                        </div>
                      ))}
                  </div>

                  {/* Action Buttons */}
                  <div className="flex gap-2 flex-wrap">
                    <Button
                      onClick={() => approveMutation.mutate(question.id)}
                      disabled={approveMutation.isPending}
                      className="bg-green-600 hover:bg-green-700"
                    >
                      <CheckCircle className="w-4 h-4 ml-2" />
                      אשר שאלה
                    </Button>
                    <Button
                      variant="outline"
                      onClick={() => handleEdit(question)}
                    >
                      <Edit className="w-4 h-4 ml-2" />
                      ערוך
                    </Button>
                    <Button
                      variant="outline"
                      onClick={() => rejectMutation.mutate(question.id)}
                      disabled={rejectMutation.isPending}
                      className="border-orange-500 text-orange-600 hover:bg-orange-50"
                    >
                      <XCircle className="w-4 h-4 ml-2" />
                      דחה
                    </Button>
                    <Button
                      variant="destructive"
                      onClick={() => {
                        if (confirm('האם אתה בטוח שברצונך למחוק שאלה זו לצמיתות?')) {
                          deleteMutation.mutate(question.id)
                        }
                      }}
                      disabled={deleteMutation.isPending}
                    >
                      <Trash2 className="w-4 h-4 ml-2" />
                      מחק לצמיתות
                    </Button>
                  </div>
                </CardContent>
              </Card>
            ))}
          </div>
        )}

        {/* Edit Modal */}
        <Dialog open={isEditModalOpen} onOpenChange={setIsEditModalOpen}>
          <DialogContent className="max-w-3xl max-h-[90vh] overflow-y-auto">
            <DialogHeader>
              <DialogTitle>עריכת שאלה</DialogTitle>
              <DialogDescription>
                ערוך את השאלה והתשובות לפני אישור
              </DialogDescription>
            </DialogHeader>

            {editedQuestion && (
              <div className="space-y-4">
                {/* Question Text */}
                <div className="space-y-2">
                  <Label>שאלה</Label>
                  <Textarea
                    value={editedQuestion.question_text}
                    onChange={(e) =>
                      setEditedQuestion({
                        ...editedQuestion,
                        question_text: e.target.value,
                      })
                    }
                    rows={3}
                    className="text-right"
                  />
                </div>

                {/* Explanation */}
                <div className="space-y-2">
                  <Label>הסבר</Label>
                  <Textarea
                    value={editedQuestion.explanation}
                    onChange={(e) =>
                      setEditedQuestion({
                        ...editedQuestion,
                        explanation: e.target.value,
                      })
                    }
                    rows={3}
                    className="text-right"
                  />
                </div>

                {/* Answers */}
                <div className="space-y-4">
                  <Label>תשובות</Label>
                  {editedQuestion.answers.map((answer: any, idx: number) => (
                    <div key={answer.id} className="space-y-2">
                      <div className="flex items-center gap-2">
                        <span className="font-bold min-w-6">{idx + 1}.</span>
                        <Input
                          value={answer.answer_text}
                          onChange={(e) => {
                            const newAnswers = [...editedQuestion.answers]
                            newAnswers[idx].answer_text = e.target.value
                            setEditedQuestion({
                              ...editedQuestion,
                              answers: newAnswers,
                            })
                          }}
                          className="flex-1 text-right"
                        />
                        <Button
                          variant={answer.is_correct ? 'default' : 'outline'}
                          size="sm"
                          onClick={() => {
                            const newAnswers = editedQuestion.answers.map(
                              (a: any, i: number) => ({
                                ...a,
                                is_correct: i === idx,
                              })
                            )
                            setEditedQuestion({
                              ...editedQuestion,
                              answers: newAnswers,
                            })
                          }}
                        >
                          {answer.is_correct ? 'נכון ✓' : 'סמן כנכון'}
                        </Button>
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            )}

            <DialogFooter>
              <Button variant="outline" onClick={() => setIsEditModalOpen(false)}>
                ביטול
              </Button>
              <Button
                onClick={handleSaveEdit}
                disabled={updateMutation.isPending}
              >
                {updateMutation.isPending ? 'שומר...' : 'שמור שינויים'}
              </Button>
            </DialogFooter>
          </DialogContent>
        </Dialog>
      </div>
    </div>
  )
}
