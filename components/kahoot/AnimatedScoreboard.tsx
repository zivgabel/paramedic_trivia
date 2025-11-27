'use client'

import { motion, AnimatePresence } from 'framer-motion'
import { Trophy, TrendingUp, TrendingDown, Minus } from 'lucide-react'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import type { KahootParticipant } from '@/types/database.types'

interface AnimatedScoreboardProps {
  participants: KahootParticipant[]
  previousScores?: Record<string, number>
  questionNumber: number
  totalQuestions: number
}

export function AnimatedScoreboard({
  participants,
  previousScores = {},
  questionNumber,
  totalQuestions,
}: AnimatedScoreboardProps) {
  // Sort participants by score
  const sortedParticipants = [...participants].sort((a, b) => b.score - a.score)

  // Calculate rank changes
  const getRankChange = (participant: KahootParticipant, currentRank: number) => {
    if (!previousScores[participant.id]) return 0

    // Find previous rank
    const prevSorted = [...participants]
      .map(p => ({ ...p, score: previousScores[p.id] || 0 }))
      .sort((a, b) => b.score - a.score)

    const prevRank = prevSorted.findIndex(p => p.id === participant.id)
    return prevRank - currentRank
  }

  const getScoreChange = (participant: KahootParticipant) => {
    const prevScore = previousScores[participant.id] || 0
    return participant.score - prevScore
  }

  return (
    <div className="min-h-screen bg-gradient-to-br from-purple-600 to-pink-600 p-4 flex items-center justify-center">
      <Card className="w-full max-w-4xl">
        <CardHeader>
          <CardTitle className="text-center text-3xl">
            <Trophy className="inline-block w-8 h-8 ml-2 text-yellow-500" />
            לוח תוצאות
          </CardTitle>
          <div className="text-center text-muted-foreground">
            אחרי שאלה {questionNumber} מתוך {totalQuestions}
          </div>
        </CardHeader>
        <CardContent>
          <div className="space-y-3">
            <AnimatePresence mode="popLayout">
              {sortedParticipants.map((participant, index) => {
                const rankChange = getRankChange(participant, index)
                const scoreChange = getScoreChange(participant)
                const rank = index + 1

                return (
                  <motion.div
                    key={participant.id}
                    layout
                    initial={{ opacity: 0, x: -50 }}
                    animate={{ opacity: 1, x: 0 }}
                    exit={{ opacity: 0, x: 50 }}
                    transition={{
                      layout: { duration: 0.5, type: 'spring' },
                      opacity: { duration: 0.3 },
                    }}
                    className={`
                      flex items-center gap-4 p-4 rounded-lg border-2
                      ${rank === 1 ? 'bg-yellow-50 border-yellow-400' : ''}
                      ${rank === 2 ? 'bg-gray-50 border-gray-400' : ''}
                      ${rank === 3 ? 'bg-orange-50 border-orange-400' : ''}
                      ${rank > 3 ? 'bg-white border-gray-200' : ''}
                    `}
                  >
                    {/* Rank */}
                    <div className="flex items-center gap-2 w-16">
                      <motion.div
                        key={`rank-${rank}`}
                        initial={{ scale: 1.5, color: '#10b981' }}
                        animate={{ scale: 1, color: '#000' }}
                        transition={{ duration: 0.5 }}
                        className="font-bold text-2xl"
                      >
                        {rank}
                      </motion.div>

                      {/* Rank Change Indicator */}
                      {rankChange !== 0 && (
                        <motion.div
                          initial={{ opacity: 0, y: -10 }}
                          animate={{ opacity: 1, y: 0 }}
                          transition={{ delay: 0.5 }}
                        >
                          {rankChange > 0 ? (
                            <TrendingUp className="w-5 h-5 text-green-600" />
                          ) : rankChange < 0 ? (
                            <TrendingDown className="w-5 h-5 text-red-600" />
                          ) : (
                            <Minus className="w-5 h-5 text-gray-400" />
                          )}
                        </motion.div>
                      )}
                    </div>

                    {/* Avatar */}
                    <motion.div
                      animate={{ rotate: scoreChange > 0 ? [0, 10, -10, 0] : 0 }}
                      transition={{ duration: 0.5, delay: 0.3 }}
                      className="text-4xl"
                    >
                      {participant.avatar}
                    </motion.div>

                    {/* Name */}
                    <div className="flex-1 min-w-0">
                      <div className="font-bold text-lg truncate">{participant.nickname}</div>
                      {scoreChange > 0 && (
                        <motion.div
                          initial={{ opacity: 0, y: -5 }}
                          animate={{ opacity: 1, y: 0 }}
                          transition={{ delay: 0.6 }}
                          className="text-sm text-green-600 font-medium"
                        >
                          +{scoreChange} נקודות
                        </motion.div>
                      )}
                    </div>

                    {/* Score with animation */}
                    <div className="text-right">
                      <motion.div
                        key={`score-${participant.score}`}
                        initial={{ scale: 1.5, color: '#10b981' }}
                        animate={{ scale: 1, color: '#7c3aed' }}
                        transition={{ duration: 0.8 }}
                        className="text-3xl font-bold text-primary"
                      >
                        {participant.score}
                      </motion.div>
                      <div className="text-xs text-muted-foreground">נקודות</div>
                    </div>

                    {/* Trophy for top 3 */}
                    {rank <= 3 && (
                      <motion.div
                        initial={{ scale: 0, rotate: -180 }}
                        animate={{ scale: 1, rotate: 0 }}
                        transition={{ delay: 0.4, type: 'spring' }}
                      >
                        {rank === 1 && <Trophy className="w-8 h-8 text-yellow-500" />}
                        {rank === 2 && <Trophy className="w-7 h-7 text-gray-400" />}
                        {rank === 3 && <Trophy className="w-6 h-6 text-orange-500" />}
                      </motion.div>
                    )}
                  </motion.div>
                )
              })}
            </AnimatePresence>
          </div>
        </CardContent>
      </Card>
    </div>
  )
}
