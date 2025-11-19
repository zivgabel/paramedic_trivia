'use client'

import { useState } from 'react'
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query'
import { createClient } from '@/lib/supabase/client'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import { Textarea } from '@/components/ui/textarea'
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
  DialogFooter,
} from '@/components/ui/dialog'
import { Alert, AlertDescription } from '@/components/ui/alert'
import { Edit, Trash2, Plus, ArrowRight, FolderOpen, AlertCircle } from 'lucide-react'
import Link from 'next/link'
import { useRouter } from 'next/navigation'

interface Category {
  id: string
  name: string
  description: string | null
  icon: string | null
  created_at: string
}

export default function CategoriesPage() {
  const [selectedCategory, setSelectedCategory] = useState<Category | null>(null)
  const [isEditModalOpen, setIsEditModalOpen] = useState(false)
  const [isAddModalOpen, setIsAddModalOpen] = useState(false)
  const [editedCategory, setEditedCategory] = useState<any>(null)
  const [error, setError] = useState('')
  const router = useRouter()
  const supabase = createClient()
  const queryClient = useQueryClient()

  // Check if user is admin
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

  // Redirect if not admin
  if (user && user.role !== 'admin') {
    router.push('/dashboard')
    return null
  }

  // Fetch categories
  const { data: categories, isLoading } = useQuery({
    queryKey: ['categories'],
    queryFn: async () => {
      const { data, error } = await supabase
        .from('categories')
        .select('*')
        .order('name')

      if (error) throw error
      return data as Category[]
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

      const counts: Record<string, number> = {}
      data?.forEach((q: any) => {
        counts[q.category_id] = (counts[q.category_id] || 0) + 1
      })

      return counts
    },
  })

  // Create category mutation
  const createCategoryMutation = useMutation({
    mutationFn: async (data: { name: string; description: string; icon: string }) => {
      const { error } = await (supabase
        .from('categories') as any)
        .insert([data])

      if (error) throw error
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['categories'] })
      setIsAddModalOpen(false)
      setEditedCategory(null)
      setError('')
    },
    onError: (err: any) => {
      setError(err.message || 'שגיאה ביצירת קטגוריה')
    },
  })

  // Update category mutation
  const updateCategoryMutation = useMutation({
    mutationFn: async ({ categoryId, data }: { categoryId: string; data: any }) => {
      const { error } = await (supabase
        .from('categories') as any)
        .update(data)
        .eq('id', categoryId)

      if (error) throw error
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['categories'] })
      setIsEditModalOpen(false)
      setSelectedCategory(null)
      setError('')
    },
    onError: (err: any) => {
      setError(err.message || 'שגיאה בעדכון קטגוריה')
    },
  })

  // Delete category mutation
  const deleteCategoryMutation = useMutation({
    mutationFn: async (categoryId: string) => {
      const { error } = await supabase
        .from('categories')
        .delete()
        .eq('id', categoryId)

      if (error) throw error
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['categories'] })
      setError('')
    },
    onError: (err: any) => {
      setError(err.message || 'שגיאה במחיקת קטגוריה')
    },
  })

  const handleAdd = () => {
    setEditedCategory({
      name: '',
      description: '',
      icon: '',
    })
    setError('')
    setIsAddModalOpen(true)
  }

  const handleEdit = (category: Category) => {
    setSelectedCategory(category)
    setEditedCategory({
      name: category.name,
      description: category.description || '',
      icon: category.icon || '',
    })
    setError('')
    setIsEditModalOpen(true)
  }

  const handleSaveNew = () => {
    if (!editedCategory) return

    if (!editedCategory.name.trim()) {
      setError('שם הקטגוריה הוא שדה חובה')
      return
    }

    createCategoryMutation.mutate({
      name: editedCategory.name.trim(),
      description: editedCategory.description.trim() || '',
      icon: editedCategory.icon.trim() || '',
    })
  }

  const handleSaveEdit = () => {
    if (!selectedCategory || !editedCategory) return

    if (!editedCategory.name.trim()) {
      setError('שם הקטגוריה הוא שדה חובה')
      return
    }

    updateCategoryMutation.mutate({
      categoryId: selectedCategory.id,
      data: {
        name: editedCategory.name.trim(),
        description: editedCategory.description.trim() || null,
        icon: editedCategory.icon.trim() || null,
      },
    })
  }

  const handleDelete = (category: Category) => {
    const questionCount = questionCounts?.[category.id] || 0

    if (questionCount > 0) {
      setError(`לא ניתן למחוק קטגוריה עם ${questionCount} שאלות. מחק תחילה את השאלות.`)
      return
    }

    if (confirm(`האם אתה בטוח שברצונך למחוק את הקטגוריה "${category.name}"?`)) {
      deleteCategoryMutation.mutate(category.id)
    }
  }

  if (isLoading) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 dark:from-gray-900 dark:to-gray-800 p-4">
        <div className="container mx-auto max-w-6xl py-8">
          <div className="text-center">טוען קטגוריות...</div>
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
            <h1 className="text-3xl font-bold mb-2 flex items-center gap-2">
              <FolderOpen className="w-8 h-8" />
              ניהול קטגוריות
            </h1>
            <p className="text-muted-foreground">
              {categories?.length || 0} קטגוריות במערכת
            </p>
          </div>
          <div className="flex gap-2">
            <Button onClick={handleAdd}>
              <Plus className="w-4 h-4 ml-2" />
              הוסף קטגוריה
            </Button>
            <Button variant="ghost" asChild>
              <Link href="/dashboard">
                <ArrowRight className="w-4 h-4 ml-2" />
                חזרה
              </Link>
            </Button>
          </div>
        </div>

        {/* Error Alert */}
        {error && (
          <Alert variant="destructive" className="mb-4">
            <AlertCircle className="h-4 w-4" />
            <AlertDescription>{error}</AlertDescription>
          </Alert>
        )}

        {/* Categories Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          {categories?.map((category) => {
            const count = questionCounts?.[category.id] || 0
            return (
              <Card key={category.id}>
                <CardHeader>
                  <div className="flex items-start justify-between">
                    <div className="flex items-center gap-2">
                      {category.icon && (
                        <span className="text-2xl">{category.icon}</span>
                      )}
                      <div>
                        <CardTitle>{category.name}</CardTitle>
                        {category.description && (
                          <p className="text-sm text-muted-foreground mt-1">
                            {category.description}
                          </p>
                        )}
                      </div>
                    </div>
                    <Badge variant="secondary">
                      {count} {count === 1 ? 'שאלה' : 'שאלות'}
                    </Badge>
                  </div>
                </CardHeader>
                <CardContent>
                  <div className="flex gap-2">
                    <Button
                      variant="outline"
                      size="sm"
                      onClick={() => handleEdit(category)}
                    >
                      <Edit className="w-4 h-4 ml-2" />
                      ערוך
                    </Button>
                    <Button
                      variant="destructive"
                      size="sm"
                      onClick={() => handleDelete(category)}
                      disabled={count > 0}
                    >
                      <Trash2 className="w-4 h-4 ml-2" />
                      מחק
                    </Button>
                  </div>
                </CardContent>
              </Card>
            )
          })}
        </div>

        {/* Add Modal */}
        <Dialog open={isAddModalOpen} onOpenChange={setIsAddModalOpen}>
          <DialogContent>
            <DialogHeader>
              <DialogTitle>הוספת קטגוריה חדשה</DialogTitle>
              <DialogDescription>
                הוסף קטגוריה חדשה למערכת
              </DialogDescription>
            </DialogHeader>

            {editedCategory && (
              <div className="space-y-4">
                <div className="space-y-2">
                  <Label>שם הקטגוריה *</Label>
                  <Input
                    value={editedCategory.name}
                    onChange={(e) =>
                      setEditedCategory({ ...editedCategory, name: e.target.value })
                    }
                    placeholder="לדוגמה: אנטומיה"
                  />
                </div>

                <div className="space-y-2">
                  <Label>תיאור</Label>
                  <Textarea
                    value={editedCategory.description}
                    onChange={(e) =>
                      setEditedCategory({
                        ...editedCategory,
                        description: e.target.value,
                      })
                    }
                    placeholder="תיאור קצר של הקטגוריה"
                    rows={3}
                  />
                </div>

                <div className="space-y-2">
                  <Label>אייקון (אימוג'י)</Label>
                  <Input
                    value={editedCategory.icon}
                    onChange={(e) =>
                      setEditedCategory({ ...editedCategory, icon: e.target.value })
                    }
                    placeholder="לדוגמה: 🦴"
                    maxLength={2}
                  />
                </div>
              </div>
            )}

            <DialogFooter>
              <Button
                variant="outline"
                onClick={() => setIsAddModalOpen(false)}
              >
                ביטול
              </Button>
              <Button
                onClick={handleSaveNew}
                disabled={createCategoryMutation.isPending}
              >
                {createCategoryMutation.isPending ? 'יוצר...' : 'הוסף קטגוריה'}
              </Button>
            </DialogFooter>
          </DialogContent>
        </Dialog>

        {/* Edit Modal */}
        <Dialog open={isEditModalOpen} onOpenChange={setIsEditModalOpen}>
          <DialogContent>
            <DialogHeader>
              <DialogTitle>עריכת קטגוריה</DialogTitle>
              <DialogDescription>
                ערוך את פרטי הקטגוריה
              </DialogDescription>
            </DialogHeader>

            {editedCategory && (
              <div className="space-y-4">
                <div className="space-y-2">
                  <Label>שם הקטגוריה *</Label>
                  <Input
                    value={editedCategory.name}
                    onChange={(e) =>
                      setEditedCategory({ ...editedCategory, name: e.target.value })
                    }
                  />
                </div>

                <div className="space-y-2">
                  <Label>תיאור</Label>
                  <Textarea
                    value={editedCategory.description}
                    onChange={(e) =>
                      setEditedCategory({
                        ...editedCategory,
                        description: e.target.value,
                      })
                    }
                    rows={3}
                  />
                </div>

                <div className="space-y-2">
                  <Label>אייקון (אימוג'י)</Label>
                  <Input
                    value={editedCategory.icon}
                    onChange={(e) =>
                      setEditedCategory({ ...editedCategory, icon: e.target.value })
                    }
                    maxLength={2}
                  />
                </div>
              </div>
            )}

            <DialogFooter>
              <Button
                variant="outline"
                onClick={() => setIsEditModalOpen(false)}
              >
                ביטול
              </Button>
              <Button
                onClick={handleSaveEdit}
                disabled={updateCategoryMutation.isPending}
              >
                {updateCategoryMutation.isPending ? 'שומר...' : 'שמור שינויים'}
              </Button>
            </DialogFooter>
          </DialogContent>
        </Dialog>
      </div>
    </div>
  )
}
