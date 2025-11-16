'use client'

import { useRouter } from 'next/navigation'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { useAuth } from '@/contexts/AuthContext'
import { Trophy, BookOpen, BarChart3, Settings, LogOut, GraduationCap } from 'lucide-react'
import Link from 'next/link'

export default function DashboardPage() {
  const { user, profile, signOut } = useAuth()
  const router = useRouter()

  const handleSignOut = async () => {
    await signOut()
    router.push('/auth/login')
  }

  const isAdmin = profile?.role === 'admin' || profile?.role === 'instructor'

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 dark:from-gray-900 dark:to-gray-800">
      <div className="container mx-auto p-4 md:p-8">
        {/* Header */}
        <div className="flex items-center justify-between mb-8">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 bg-primary/10 rounded-full flex items-center justify-center">
              <GraduationCap className="w-8 h-8 text-primary" />
            </div>
            <div>
              <h1 className="text-3xl font-bold">טריוויה פארמדיק</h1>
              <p className="text-muted-foreground">שלום, {profile?.full_name || 'משתמש'}!</p>
            </div>
          </div>
          <Button variant="outline" onClick={handleSignOut}>
            <LogOut className="w-4 h-4 ml-2" />
            התנתק
          </Button>
        </div>

        {/* Main Actions */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-8">
          <Card className="hover:shadow-lg transition-shadow cursor-pointer" onClick={() => router.push('/game/setup')}>
            <CardHeader>
              <div className="w-12 h-12 bg-green-100 dark:bg-green-900/20 rounded-full flex items-center justify-center mb-2">
                <Trophy className="w-6 h-6 text-green-600 dark:text-green-400" />
              </div>
              <CardTitle>משחק חדש</CardTitle>
              <CardDescription>התחל משחק טריוויה חדש</CardDescription>
            </CardHeader>
            <CardContent>
              <Button className="w-full">התחל לשחק</Button>
            </CardContent>
          </Card>

          <Card className="hover:shadow-lg transition-shadow cursor-pointer" onClick={() => router.push('/study')}>
            <CardHeader>
              <div className="w-12 h-12 bg-blue-100 dark:bg-blue-900/20 rounded-full flex items-center justify-center mb-2">
                <BookOpen className="w-6 h-6 text-blue-600 dark:text-blue-400" />
              </div>
              <CardTitle>מצב לימוד</CardTitle>
              <CardDescription>עיון בשאלות ללא ניקוד</CardDescription>
            </CardHeader>
            <CardContent>
              <Button variant="outline" className="w-full">
                התחל לימוד
              </Button>
            </CardContent>
          </Card>

          <Card className="hover:shadow-lg transition-shadow cursor-pointer" onClick={() => router.push('/stats')}>
            <CardHeader>
              <div className="w-12 h-12 bg-purple-100 dark:bg-purple-900/20 rounded-full flex items-center justify-center mb-2">
                <BarChart3 className="w-6 h-6 text-purple-600 dark:text-purple-400" />
              </div>
              <CardTitle>הסטטיסטיקות שלי</CardTitle>
              <CardDescription>צפה בביצועים והתקדמות</CardDescription>
            </CardHeader>
            <CardContent>
              <Button variant="outline" className="w-full">צפה בנתונים</Button>
            </CardContent>
          </Card>
        </div>

        {/* Admin Section */}
        {isAdmin && (
          <Card className="mb-8 border-primary">
            <CardHeader>
              <div className="flex items-center gap-2">
                <Settings className="w-5 h-5" />
                <CardTitle>פאנל ניהול</CardTitle>
              </div>
              <CardDescription>כלים למדריכים ומנהלים</CardDescription>
            </CardHeader>
            <CardContent className="grid grid-cols-1 md:grid-cols-3 gap-4">
              <Button variant="outline" asChild>
                <Link href="/admin/questions">ניהול שאלות</Link>
              </Button>
              {profile?.role === 'admin' && (
                <>
                  <Button variant="outline" asChild>
                    <Link href="/admin/categories">ניהול קטגוריות</Link>
                  </Button>
                  <Button variant="outline" asChild>
                    <Link href="/admin/users">ניהול משתמשים</Link>
                  </Button>
                </>
              )}
            </CardContent>
          </Card>
        )}

        {/* Quick Stats */}
        <Card>
          <CardHeader>
            <CardTitle>סטטיסטיקות מהירות</CardTitle>
          </CardHeader>
          <CardContent>
            <div className="grid grid-cols-2 md:grid-cols-4 gap-4 text-center">
              <div>
                <div className="text-3xl font-bold text-primary">--</div>
                <div className="text-sm text-muted-foreground">משחקים</div>
              </div>
              <div>
                <div className="text-3xl font-bold text-primary">--</div>
                <div className="text-sm text-muted-foreground">ציון ממוצע</div>
              </div>
              <div>
                <div className="text-3xl font-bold text-primary">--</div>
                <div className="text-sm text-muted-foreground">רצף נוכחי</div>
              </div>
              <div>
                <div className="text-3xl font-bold text-primary">--</div>
                <div className="text-sm text-muted-foreground">הישגים</div>
              </div>
            </div>
          </CardContent>
        </Card>
      </div>
    </div>
  )
}
