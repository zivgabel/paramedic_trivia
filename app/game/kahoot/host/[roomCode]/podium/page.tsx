'use client'

import { useState, useEffect } from 'react'
import { useParams } from 'next/navigation'
import { Card, CardContent } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { createClient } from '@/lib/supabase/client'
import { motion } from 'framer-motion'
import { Trophy, Medal, Award, Home } from 'lucide-react'
import Link from 'next/link'
import type { KahootParticipant } from '@/types/database.types'

export default function KahootPodiumPage() {
  const params = useParams()
  const roomCode = params.roomCode as string
  const supabase = createClient()

  const [participants, setParticipants] = useState<KahootParticipant[]>([])
  const [showConfetti, setShowConfetti] = useState(false)

  useEffect(() => {
    const fetchParticipants = async () => {
      const { data, error } = await supabase
        .from('kahoot_participants')
        .select('*')
        .eq('room_code', roomCode)
        .order('score', { ascending: false })

      if (error) {
        console.error('Error fetching participants:', error)
        return
      }

      setParticipants(data || [])

      // Show confetti after a short delay
      setTimeout(() => setShowConfetti(true), 500)
    }

    fetchParticipants()
  }, [roomCode])

  const top3 = participants.slice(0, 3)
  const [second, first, third] = [top3[1], top3[0], top3[2]].filter(Boolean)

  return (
    <div className="min-h-screen bg-gradient-to-br from-purple-600 via-pink-600 to-orange-500 p-4 relative overflow-hidden">
      {/* Confetti effect */}
      {showConfetti && (
        <div className="absolute inset-0 pointer-events-none">
          {[...Array(50)].map((_, i) => (
            <motion.div
              key={i}
              className="absolute w-2 h-2 rounded-full"
              style={{
                background: ['#FFD700', '#FF1493', '#00CED1', '#FF6347', '#7FFF00'][i % 5],
                left: `${Math.random() * 100}%`,
                top: '-10px',
              }}
              animate={{
                y: ['0vh', '110vh'],
                x: [0, Math.random() * 200 - 100],
                rotate: [0, 360],
              }}
              transition={{
                duration: Math.random() * 3 + 2,
                delay: Math.random() * 2,
                repeat: Infinity,
              }}
            />
          ))}
        </div>
      )}

      <div className="container mx-auto max-w-6xl py-8 relative z-10">
        {/* Title */}
        <motion.div
          initial={{ opacity: 0, y: -50 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.8 }}
          className="text-center mb-12"
        >
          <h1 className="text-6xl font-bold text-white mb-4">
            <Trophy className="inline-block w-16 h-16 mb-2" />
            <br />
            סיימנו!
          </h1>
          <p className="text-2xl text-white/90">הזוכים הם...</p>
        </motion.div>

        {/* Podium */}
        <div className="flex items-end justify-center gap-8 mb-12 min-h-[400px]">
          {/* Second Place */}
          {second && (
            <motion.div
              initial={{ opacity: 0, y: 100 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ duration: 0.8, delay: 0.2 }}
              className="flex flex-col items-center"
            >
              <motion.div
                animate={{ y: [0, -10, 0] }}
                transition={{ duration: 2, repeat: Infinity }}
                className="mb-4"
              >
                <div className="text-8xl mb-2">{second.avatar}</div>
                <div className="text-white text-center">
                  <div className="font-bold text-xl">{second.nickname}</div>
                  <div className="text-3xl font-bold mt-2">{second.score}</div>
                  <div className="text-sm opacity-90">נקודות</div>
                </div>
              </motion.div>
              <div className="w-40 bg-gradient-to-t from-gray-400 to-gray-300 rounded-t-lg flex flex-col items-center justify-end p-6 h-48 shadow-2xl">
                <Medal className="w-12 h-12 text-white mb-2" />
                <div className="text-4xl font-bold text-white">2</div>
              </div>
            </motion.div>
          )}

          {/* First Place */}
          {first && (
            <motion.div
              initial={{ opacity: 0, y: 100 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ duration: 0.8, delay: 0.4 }}
              className="flex flex-col items-center"
            >
              <motion.div
                animate={{ y: [0, -15, 0], scale: [1, 1.1, 1] }}
                transition={{ duration: 2, repeat: Infinity }}
                className="mb-4"
              >
                <motion.div
                  animate={{ rotate: [0, 5, -5, 0] }}
                  transition={{ duration: 1, repeat: Infinity }}
                  className="text-9xl mb-2"
                >
                  {first.avatar}
                </motion.div>
                <div className="text-white text-center">
                  <div className="font-bold text-2xl">{first.nickname}</div>
                  <div className="text-5xl font-bold mt-2 text-yellow-300">{first.score}</div>
                  <div className="text-sm opacity-90">נקודות</div>
                </div>
              </motion.div>
              <div className="w-40 bg-gradient-to-t from-yellow-500 to-yellow-300 rounded-t-lg flex flex-col items-center justify-end p-6 h-64 shadow-2xl relative">
                <motion.div
                  animate={{ rotate: [0, 360] }}
                  transition={{ duration: 3, repeat: Infinity, ease: 'linear' }}
                  className="absolute -top-8"
                >
                  <Trophy className="w-16 h-16 text-yellow-200" />
                </motion.div>
                <div className="text-5xl font-bold text-white mt-8">1</div>
              </div>
            </motion.div>
          )}

          {/* Third Place */}
          {third && (
            <motion.div
              initial={{ opacity: 0, y: 100 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ duration: 0.8, delay: 0.3 }}
              className="flex flex-col items-center"
            >
              <motion.div
                animate={{ y: [0, -8, 0] }}
                transition={{ duration: 2, repeat: Infinity, delay: 0.5 }}
                className="mb-4"
              >
                <div className="text-7xl mb-2">{third.avatar}</div>
                <div className="text-white text-center">
                  <div className="font-bold text-lg">{third.nickname}</div>
                  <div className="text-2xl font-bold mt-2">{third.score}</div>
                  <div className="text-sm opacity-90">נקודות</div>
                </div>
              </motion.div>
              <div className="w-40 bg-gradient-to-t from-orange-600 to-orange-400 rounded-t-lg flex flex-col items-center justify-end p-6 h-40 shadow-2xl">
                <Award className="w-10 h-10 text-white mb-2" />
                <div className="text-3xl font-bold text-white">3</div>
              </div>
            </motion.div>
          )}
        </div>

        {/* All Participants */}
        {participants.length > 3 && (
          <motion.div
            initial={{ opacity: 0, y: 50 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.8, delay: 1 }}
          >
            <Card className="mb-8">
              <CardContent className="p-6">
                <h3 className="text-xl font-bold mb-4 text-center">כל המשתתפים</h3>
                <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
                  {participants.slice(3).map((participant, index) => (
                    <div
                      key={participant.id}
                      className="flex items-center gap-2 p-3 bg-accent/50 rounded-lg"
                    >
                      <div className="font-bold">{index + 4}.</div>
                      <div className="text-2xl">{participant.avatar}</div>
                      <div className="flex-1 min-w-0">
                        <div className="font-medium truncate text-sm">{participant.nickname}</div>
                        <div className="text-xs text-primary font-bold">{participant.score}</div>
                      </div>
                    </div>
                  ))}
                </div>
              </CardContent>
            </Card>
          </motion.div>
        )}

        {/* Actions */}
        <motion.div
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ duration: 0.8, delay: 1.5 }}
          className="text-center"
        >
          <Button asChild size="lg" className="bg-white text-purple-600 hover:bg-gray-100">
            <Link href="/dashboard">
              <Home className="w-5 h-5 ml-2" />
              חזרה לדף הבית
            </Link>
          </Button>
        </motion.div>
      </div>
    </div>
  )
}
