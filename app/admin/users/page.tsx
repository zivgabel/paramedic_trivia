'use client'

import { useState } from 'react'
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query'
import { createClient } from '@/lib/supabase/client'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
  DialogFooter,
} from '@/components/ui/dialog'
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from '@/components/ui/select'
import { Alert, AlertDescription } from '@/components/ui/alert'
import { Edit, ArrowRight, Users, AlertCircle } from 'lucide-react'
import Link from 'next/link'
import { useRouter } from 'next/navigation'

interface User {
  id: string
  email: string
  full_name: string
  role: 'user' | 'instructor' | 'admin'
  is_active: boolean
  created_at: string
}

export default function UsersPage() {
  const [selectedUser, setSelectedUser] = useState<User | null>(null)
  const [isEditModalOpen, setIsEditModalOpen] = useState(false)
  const [editedUser, setEditedUser] = useState<any>(null)
  const router = useRouter()
  const supabase = createClient()
  const queryClient = useQueryClient()

  // Get current user
  const { data: currentUser } = useQuery({
    queryKey: ['current-user'],
    queryFn: async () => {
      const { data: { user } } = await supabase.auth.getUser()
      if (!user) return null

      const { data: profile } = await supabase
        .from('profiles')
        .select('*')
        .eq('id', user.id)
        .single()

      return (profile || null) as User | null
    },
  })

  // Redirect if not admin
  if (currentUser && currentUser.role !== 'admin') {
    router.push('/dashboard')
    return null
  }

  // Fetch all users
  const { data: users, isLoading } = useQuery({
    queryKey: ['users'],
    queryFn: async () => {
      const { data, error } = await supabase
        .from('profiles')
        .select('*')
        .order('created_at', { ascending: false })

      if (error) throw error
      return data as User[]
    },
  })

  // Update user mutation
  const updateUserMutation = useMutation({
    mutationFn: async ({ userId, data }: { userId: string; data: Partial<User> }) => {
      const { error } = await (supabase
        .from('profiles') as any)
        .update(data)
        .eq('id', userId)

      if (error) throw error
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['users'] })
      setIsEditModalOpen(false)
      setSelectedUser(null)
    },
  })

  const handleEdit = (user: User) => {
    setSelectedUser(user)
    setEditedUser({
      email: user.email,
      full_name: user.full_name,
      role: user.role,
      is_active: user.is_active,
    })
    setIsEditModalOpen(true)
  }

  const handleSave = () => {
    if (!selectedUser || !editedUser || !currentUser) return

    // Check if editing self
    const isEditingSelf = selectedUser.id === currentUser.id

    // Prepare update data
    const updateData: Partial<User> = {
      email: editedUser.email,
      full_name: editedUser.full_name,
    }

    // Only include role and is_active if NOT editing self
    if (!isEditingSelf) {
      updateData.role = editedUser.role
      updateData.is_active = editedUser.is_active
    }

    updateUserMutation.mutate({
      userId: selectedUser.id,
      data: updateData,
    })
  }

  const getRoleBadgeVariant = (role: string) => {
    switch (role) {
      case 'admin':
        return 'default'
      case 'instructor':
        return 'secondary'
      default:
        return 'outline'
    }
  }

  const getRoleLabel = (role: string) => {
    switch (role) {
      case 'admin':
        return 'מנהל'
      case 'instructor':
        return 'מדריך'
      default:
        return 'תלמיד'
    }
  }

  if (isLoading) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 dark:from-gray-900 dark:to-gray-800 p-4">
        <div className="container mx-auto max-w-6xl py-8">
          <div className="text-center">טוען משתמשים...</div>
        </div>
      </div>
    )
  }

  const isEditingSelf = selectedUser?.id === currentUser?.id

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 dark:from-gray-900 dark:to-gray-800 p-4">
      <div className="container mx-auto max-w-6xl py-8">
        {/* Header */}
        <div className="mb-6 flex items-center justify-between">
          <div>
            <h1 className="text-3xl font-bold mb-2 flex items-center gap-2">
              <Users className="w-8 h-8" />
              ניהול משתמשים
            </h1>
            <p className="text-muted-foreground">
              {users?.length || 0} משתמשים במערכת
            </p>
          </div>
          <Button variant="ghost" asChild>
            <Link href="/dashboard">
              <ArrowRight className="w-4 h-4 ml-2" />
              חזרה לדף הבית
            </Link>
          </Button>
        </div>

        {/* Users Table */}
        <Card>
          <CardHeader>
            <CardTitle>רשימת משתמשים</CardTitle>
          </CardHeader>
          <CardContent>
            <div className="space-y-3">
              {users?.map((user) => (
                <div
                  key={user.id}
                  className="flex items-center justify-between p-4 border rounded-lg hover:bg-accent"
                >
                  <div className="flex-1">
                    <div className="flex items-center gap-2 mb-1">
                      <span className="font-semibold">{user.full_name}</span>
                      <Badge variant={getRoleBadgeVariant(user.role)}>
                        {getRoleLabel(user.role)}
                      </Badge>
                      {!user.is_active && (
                        <Badge variant="destructive">מושבת</Badge>
                      )}
                      {user.id === currentUser?.id && (
                        <Badge variant="outline">את/ה</Badge>
                      )}
                    </div>
                    <div className="text-sm text-muted-foreground">
                      {user.email}
                    </div>
                    <div className="text-xs text-muted-foreground">
                      נרשם: {new Date(user.created_at).toLocaleDateString('he-IL')}
                    </div>
                  </div>
                  <Button
                    variant="outline"
                    size="sm"
                    onClick={() => handleEdit(user)}
                  >
                    <Edit className="w-4 h-4 ml-2" />
                    ערוך
                  </Button>
                </div>
              ))}
            </div>
          </CardContent>
        </Card>

        {/* Edit Modal */}
        <Dialog open={isEditModalOpen} onOpenChange={setIsEditModalOpen}>
          <DialogContent>
            <DialogHeader>
              <DialogTitle>
                {isEditingSelf ? 'עריכת הפרופיל שלך' : 'עריכת משתמש'}
              </DialogTitle>
              <DialogDescription>
                {isEditingSelf
                  ? 'תוכל לערוך רק את האימייל והשם שלך'
                  : 'ערוך את פרטי המשתמש'}
              </DialogDescription>
            </DialogHeader>

            {isEditingSelf && (
              <Alert>
                <AlertCircle className="h-4 w-4" />
                <AlertDescription>
                  לא ניתן לשנות את התפקיד או הסטטוס של עצמך
                </AlertDescription>
              </Alert>
            )}

            {editedUser && (
              <div className="space-y-4">
                {/* Email */}
                <div className="space-y-2">
                  <Label>אימייל</Label>
                  <Input
                    type="email"
                    value={editedUser.email}
                    onChange={(e) =>
                      setEditedUser({ ...editedUser, email: e.target.value })
                    }
                    dir="ltr"
                    className="text-right"
                  />
                </div>

                {/* Full Name */}
                <div className="space-y-2">
                  <Label>שם מלא</Label>
                  <Input
                    value={editedUser.full_name}
                    onChange={(e) =>
                      setEditedUser({ ...editedUser, full_name: e.target.value })
                    }
                  />
                </div>

                {/* Role - disabled if editing self */}
                <div className="space-y-2">
                  <Label>תפקיד</Label>
                  <Select
                    value={editedUser.role}
                    onValueChange={(value) =>
                      setEditedUser({ ...editedUser, role: value })
                    }
                    disabled={isEditingSelf}
                  >
                    <SelectTrigger>
                      <SelectValue />
                    </SelectTrigger>
                    <SelectContent>
                      <SelectItem value="user">תלמיד</SelectItem>
                      <SelectItem value="instructor">מדריך</SelectItem>
                      <SelectItem value="admin">מנהל</SelectItem>
                    </SelectContent>
                  </Select>
                </div>

                {/* Active Status - disabled if editing self */}
                <div className="space-y-2">
                  <Label>סטטוס</Label>
                  <Select
                    value={editedUser.is_active ? 'active' : 'inactive'}
                    onValueChange={(value) =>
                      setEditedUser({ ...editedUser, is_active: value === 'active' })
                    }
                    disabled={isEditingSelf}
                  >
                    <SelectTrigger>
                      <SelectValue />
                    </SelectTrigger>
                    <SelectContent>
                      <SelectItem value="active">פעיל</SelectItem>
                      <SelectItem value="inactive">מושבת</SelectItem>
                    </SelectContent>
                  </Select>
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
                onClick={handleSave}
                disabled={updateUserMutation.isPending}
              >
                {updateUserMutation.isPending ? 'שומר...' : 'שמור שינויים'}
              </Button>
            </DialogFooter>
          </DialogContent>
        </Dialog>
      </div>
    </div>
  )
}
