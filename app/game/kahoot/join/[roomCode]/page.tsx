'use client'

import { useState, useEffect } from 'react'
import { useRouter, useParams } from 'next/navigation'
import { useQuery } from '@tanstack/react-query'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import { Alert, AlertDescription } from '@/components/ui/alert'
import { createClient } from '@/lib/supabase/client'
import { Shuffle, LogIn } from 'lucide-react'
import Link from 'next/link'

// Available avatars (emojis)
const AVATARS = [
  '😀', '😃', '😄', '😁', '😆', '😅', '🤣', '😂',
  '🙂', '🙃', '😉', '😊', '😇', '🥰', '😍', '🤩',
  '😎', '🤓', '🧐', '🤠', '🥳', '🤡', '🤖', '👽',
  '🐶', '🐱', '🐭', '🐹', '🐰', '🦊', '🐻', '🐼',
  '🐨', '🐯', '🦁', '🐮', '🐷', '🐸', '🐵', '🐔',
  '🦄', '🦋', '🐝', '🐞', '🦖', '🦕', '🐙', '🦀',
]

// Random nickname generators
const ADJECTIVES = [
  'מהיר', 'חכם', 'אמיץ', 'מצחיק', 'מגניב', 'מדהים',
  'זריז', 'מבריק', 'נועז', 'שמח', 'נמרץ', 'יצירתי',
  'מחונן', 'מוכשר', 'מנצח', 'חזק', 'זהיר', 'קשוב',
]

const NOUNS = [
  'אריה', 'נמר', 'דולפין', 'נשר', 'פנתר', 'פלקון',
  'דרקון', 'אבירים', 'נינג׳ה', 'קוסם', 'גיבור', 'אלוף',
  'שחמטאי', 'אומן', 'מתמטיקאי', 'מדען', 'חוקר', 'מנהיג',
]

export default function JoinKahootPage() {
  const params = useParams()
  const roomCode = params.roomCode as string
  const router = useRouter()
  const supabase = createClient()

  const [avatar, setAvatar] = useState('')
  const [nickname, setNickname] = useState('')
  const [error, setError] = useState('')
  const [loading, setLoading] = useState(false)

  // Generate random avatar and nickname on mount
  useEffect(() => {
    generateRandomPlayer()
  }, [])

  // Fetch room to validate it exists
  const { data: room, isLoading: roomLoading } = useQuery({
    queryKey: ['kahoot-room', roomCode],
    queryFn: async () => {
      const { data, error } = await (supabase
        .from('kahoot_rooms') as any)
        .select('*')
        .eq('room_code', roomCode)
        .single()

      if (error) throw error
      return data
    },
  })

  const generateRandomPlayer = () => {
    // Random avatar
    const randomAvatar = AVATARS[Math.floor(Math.random() * AVATARS.length)]
    setAvatar(randomAvatar)

    // Random nickname
    const adjective = ADJECTIVES[Math.floor(Math.random() * ADJECTIVES.length)]
    const noun = NOUNS[Math.floor(Math.random() * NOUNS.length)]
    const number = Math.floor(Math.random() * 99) + 1
    setNickname(`${adjective} ${noun} ${number}`)
  }

  const handleJoinRoom = async () => {
    if (!nickname.trim()) {
      setError('יש להזין כינוי')
      return
    }

    if (!room) {
      setError('החדר לא נמצא')
      return
    }

    if (room.status !== 'waiting') {
      setError('המשחק כבר התחיל')
      return
    }

    setError('')
    setLoading(true)

    try {
      // Create participant record
      const { data: participant, error: participantError } = await (supabase
        .from('kahoot_participants') as any)
        .insert({
          room_code: roomCode,
          nickname: nickname.trim(),
          avatar: avatar,
          score: 0,
          is_connected: true,
        })
        .select()
        .single()

      if (participantError) throw participantError

      // Store participant ID in localStorage for reconnection
      localStorage.setItem(`kahoot_${roomCode}`, participant.id)

      // Redirect to player waiting page
      router.push(`/game/kahoot/play/${roomCode}`)
    } catch (err: any) {
      console.error('Error joining room:', err)
      setError(err.message || 'אירעה שגיאה בהצטרפות לחדר')
    } finally {
      setLoading(false)
    }
  }

  if (roomLoading) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-purple-50 to-pink-100 dark:from-gray-900 dark:to-gray-800 flex items-center justify-center">
        <div className="text-center">
          <div className="text-xl">בודק חדר...</div>
        </div>
      </div>
    )
  }

  if (!room) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-purple-50 to-pink-100 dark:from-gray-900 dark:to-gray-800 flex items-center justify-center">
        <Card className="max-w-md">
          <CardContent className="p-6 text-center space-y-4">
            <div className="text-xl mb-4">חדר לא נמצא</div>
            <div className="text-muted-foreground">
              קוד החדר <span className="font-mono font-bold">{roomCode}</span> אינו קיים או פג תוקפו
            </div>
            <Button asChild>
              <Link href="/dashboard">חזרה לדף הבית</Link>
            </Button>
          </CardContent>
        </Card>
      </div>
    )
  }

  if (room.status !== 'waiting') {
    return (
      <div className="min-h-screen bg-gradient-to-br from-purple-50 to-pink-100 dark:from-gray-900 dark:to-gray-800 flex items-center justify-center">
        <Card className="max-w-md">
          <CardContent className="p-6 text-center space-y-4">
            <div className="text-xl mb-4">המשחק כבר התחיל</div>
            <div className="text-muted-foreground">
              לא ניתן להצטרף למשחק שכבר החל
            </div>
            <Button asChild>
              <Link href="/dashboard">חזרה לדף הבית</Link>
            </Button>
          </CardContent>
        </Card>
      </div>
    )
  }

  return (
    <div className="min-h-screen bg-gradient-to-br from-purple-50 to-pink-100 dark:from-gray-900 dark:to-gray-800 flex items-center justify-center p-4">
      <Card className="max-w-md w-full">
        <CardHeader>
          <CardTitle className="text-3xl text-center">הצטרפות למשחק</CardTitle>
          <div className="text-center text-muted-foreground">
            קוד חדר: <span className="font-mono font-bold text-lg">{roomCode}</span>
          </div>
        </CardHeader>
        <CardContent className="space-y-6">
          {error && (
            <Alert variant="destructive">
              <AlertDescription>{error}</AlertDescription>
            </Alert>
          )}

          {/* Avatar Selection */}
          <div className="space-y-3">
            <Label>הדמות שלך</Label>
            <div className="flex items-center gap-3">
              <div className="text-7xl">{avatar}</div>
              <Button
                variant="outline"
                onClick={generateRandomPlayer}
                className="flex-1"
              >
                <Shuffle className="w-4 h-4 ml-2" />
                דמות אקראית
              </Button>
            </div>
          </div>

          {/* Nickname Input */}
          <div className="space-y-2">
            <Label htmlFor="nickname">כינוי</Label>
            <Input
              id="nickname"
              type="text"
              value={nickname}
              onChange={(e) => setNickname(e.target.value)}
              placeholder="הזן את הכינוי שלך"
              maxLength={30}
              onKeyDown={(e) => {
                if (e.key === 'Enter') {
                  handleJoinRoom()
                }
              }}
            />
            <div className="text-xs text-muted-foreground text-left">
              {nickname.length}/30 תווים
            </div>
          </div>

          {/* Join Button */}
          <Button
            onClick={handleJoinRoom}
            disabled={loading || !nickname.trim()}
            className="w-full"
            size="lg"
          >
            <LogIn className="w-5 h-5 ml-2" />
            {loading ? 'מצטרף...' : 'הצטרף למשחק!'}
          </Button>

          <div className="text-center text-sm text-muted-foreground">
            לא נדרשת הרשמה - רק הכינוי שלך!
          </div>
        </CardContent>
      </Card>
    </div>
  )
}
