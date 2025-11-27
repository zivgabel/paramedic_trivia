'use client'

import { useState, useEffect } from 'react'
import { useRouter, useParams } from 'next/navigation'
import { useQuery } from '@tanstack/react-query'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Alert, AlertDescription } from '@/components/ui/alert'
import { Badge } from '@/components/ui/badge'
import { createClient } from '@/lib/supabase/client'
import { QRCodeSVG } from 'qrcode.react'
import { Users, Copy, Play, ArrowRight } from 'lucide-react'
import Link from 'next/link'
import type { KahootParticipant } from '@/types/database.types'

export default function KahootLobbyPage() {
  const params = useParams()
  const roomCode = params.roomCode as string
  const router = useRouter()
  const supabase = createClient()

  const [participants, setParticipants] = useState<KahootParticipant[]>([])
  const [error, setError] = useState('')
  const [loading, setLoading] = useState(false)
  const [copiedCode, setCopiedCode] = useState(false)

  // Get the join URL for the QR code
  const joinUrl = typeof window !== 'undefined'
    ? `${window.location.origin}/game/kahoot/join/${roomCode}`
    : ''

  // Fetch room details
  const { data: room, isLoading: roomLoading } = useQuery({
    queryKey: ['kahoot-room', roomCode],
    queryFn: async () => {
      const { data, error } = await supabase
        .from('kahoot_rooms')
        .select('*')
        .eq('room_code', roomCode)
        .single()

      if (error) throw error
      return data
    },
    refetchInterval: false,
  })

  // Fetch participants
  const fetchParticipants = async () => {
    const { data, error } = await supabase
      .from('kahoot_participants')
      .select('*')
      .eq('room_code', roomCode)
      .order('joined_at', { ascending: true })

    if (error) {
      console.error('Error fetching participants:', error)
      return
    }

    setParticipants(data || [])
  }

  // Set up real-time subscription for participants
  useEffect(() => {
    fetchParticipants()

    const channel = supabase
      .channel(`room:${roomCode}`)
      .on(
        'postgres_changes',
        {
          event: '*',
          schema: 'public',
          table: 'kahoot_participants',
          filter: `room_code=eq.${roomCode}`,
        },
        (payload) => {
          console.log('Participant change:', payload)
          fetchParticipants()
        }
      )
      .subscribe()

    return () => {
      supabase.removeChannel(channel)
    }
  }, [roomCode])

  const copyRoomCode = () => {
    navigator.clipboard.writeText(roomCode)
    setCopiedCode(true)
    setTimeout(() => setCopiedCode(false), 2000)
  }

  const handleStartGame = async () => {
    if (participants.length < 2) {
      setError('נדרשים לפחות 2 שחקנים כדי להתחיל את המשחק')
      return
    }

    setError('')
    setLoading(true)

    try {
      // Update room status to 'playing'
      const { error: updateError } = await (supabase
        .from('kahoot_rooms') as any)
        .update({
          status: 'playing',
          started_at: new Date().toISOString(),
        })
        .eq('room_code', roomCode)

      if (updateError) throw updateError

      // Redirect to the host control page
      router.push(`/game/kahoot/host/${roomCode}/play`)
    } catch (err: any) {
      console.error('Error starting game:', err)
      setError(err.message || 'אירעה שגיאה בהפעלת המשחק')
    } finally {
      setLoading(false)
    }
  }

  if (roomLoading) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-purple-50 to-pink-100 dark:from-gray-900 dark:to-gray-800 flex items-center justify-center">
        <div className="text-center">
          <div className="text-xl">טוען חדר...</div>
        </div>
      </div>
    )
  }

  if (!room) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-purple-50 to-pink-100 dark:from-gray-900 dark:to-gray-800 flex items-center justify-center">
        <Card className="max-w-md">
          <CardContent className="p-6 text-center">
            <div className="text-xl mb-4">חדר לא נמצא</div>
            <Button asChild>
              <Link href="/game/setup">חזרה להגדרת משחק</Link>
            </Button>
          </CardContent>
        </Card>
      </div>
    )
  }

  return (
    <div className="min-h-screen bg-gradient-to-br from-purple-50 to-pink-100 dark:from-gray-900 dark:to-gray-800 p-4">
      <div className="container mx-auto max-w-5xl py-8">
        <div className="mb-6">
          <Button variant="ghost" asChild>
            <Link href="/dashboard">
              <ArrowRight className="w-4 h-4 ml-2" />
              חזרה
            </Link>
          </Button>
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
          {/* Room Info & QR Code */}
          <div className="lg:col-span-2 space-y-6">
            <Card>
              <CardHeader>
                <CardTitle className="text-3xl text-center">חדר Kahoot</CardTitle>
              </CardHeader>
              <CardContent className="space-y-6">
                {error && (
                  <Alert variant="destructive">
                    <AlertDescription>{error}</AlertDescription>
                  </Alert>
                )}

                {/* Room Code */}
                <div className="text-center space-y-4">
                  <div>
                    <div className="text-sm text-muted-foreground mb-2">קוד חדר</div>
                    <div className="flex items-center justify-center gap-3">
                      <div className="text-6xl font-bold font-mono tracking-wider bg-gradient-to-r from-purple-600 to-pink-600 bg-clip-text text-transparent">
                        {roomCode}
                      </div>
                      <Button
                        variant="outline"
                        size="icon"
                        onClick={copyRoomCode}
                        className="h-12 w-12"
                      >
                        <Copy className="w-5 h-5" />
                      </Button>
                    </div>
                    {copiedCode && (
                      <div className="text-sm text-green-600 mt-2">הועתק ללוח!</div>
                    )}
                  </div>

                  {/* QR Code */}
                  <div className="flex justify-center">
                    <div className="p-6 bg-white rounded-xl shadow-lg">
                      <QRCodeSVG
                        value={joinUrl}
                        size={200}
                        level="M"
                        includeMargin={true}
                      />
                      <div className="text-xs text-muted-foreground mt-3 text-center">
                        סרוק כדי להצטרף
                      </div>
                    </div>
                  </div>

                  {/* Join URL */}
                  <div className="text-sm text-muted-foreground">
                    או הכנס לכתובת:
                    <div className="font-mono mt-1 text-primary">{joinUrl}</div>
                  </div>
                </div>
              </CardContent>
            </Card>

            {/* Start Button */}
            <Card>
              <CardContent className="p-6">
                <Button
                  onClick={handleStartGame}
                  disabled={loading || participants.length < 2}
                  className="w-full"
                  size="lg"
                >
                  <Play className="w-5 h-5 ml-2" />
                  {loading ? 'מתחיל משחק...' : 'התחל משחק!'}
                </Button>
                {participants.length < 2 && (
                  <div className="text-sm text-center text-muted-foreground mt-3">
                    נדרשים לפחות 2 שחקנים כדי להתחיל
                  </div>
                )}
              </CardContent>
            </Card>
          </div>

          {/* Participants List */}
          <div>
            <Card className="sticky top-4">
              <CardHeader>
                <CardTitle className="flex items-center gap-2">
                  <Users className="w-5 h-5" />
                  שחקנים ({participants.length})
                </CardTitle>
              </CardHeader>
              <CardContent>
                {participants.length === 0 ? (
                  <div className="text-center text-muted-foreground py-8">
                    ממתין לשחקנים...
                  </div>
                ) : (
                  <div className="space-y-2 max-h-[500px] overflow-y-auto">
                    {participants.map((participant, index) => (
                      <div
                        key={participant.id}
                        className="flex items-center gap-3 p-3 rounded-lg bg-accent/50 border"
                      >
                        <div className="text-2xl">{participant.avatar}</div>
                        <div className="flex-1">
                          <div className="font-medium">{participant.nickname}</div>
                          <div className="text-xs text-muted-foreground">
                            {participant.is_connected ? (
                              <Badge variant="outline" className="bg-green-50 text-green-700 border-green-200">
                                מחובר
                              </Badge>
                            ) : (
                              <Badge variant="outline" className="bg-gray-50 text-gray-700 border-gray-200">
                                מנותק
                              </Badge>
                            )}
                          </div>
                        </div>
                      </div>
                    ))}
                  </div>
                )}
              </CardContent>
            </Card>
          </div>
        </div>
      </div>
    </div>
  )
}
