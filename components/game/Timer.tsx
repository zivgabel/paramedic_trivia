'use client'

import { useEffect, useState } from 'react'
import { Clock } from 'lucide-react'

interface TimerProps {
  isRunning: boolean
  onTimeUpdate?: (seconds: number) => void
  initialTime?: number
}

export function Timer({ isRunning, onTimeUpdate, initialTime = 0 }: TimerProps) {
  const [seconds, setSeconds] = useState(initialTime)

  useEffect(() => {
    if (!isRunning) return

    const interval = setInterval(() => {
      setSeconds((prev) => {
        const newTime = prev + 1
        onTimeUpdate?.(newTime)
        return newTime
      })
    }, 1000)

    return () => clearInterval(interval)
  }, [isRunning, onTimeUpdate])

  const minutes = Math.floor(seconds / 60)
  const remainingSeconds = seconds % 60

  return (
    <div className="flex items-center gap-2 text-lg font-mono">
      <Clock className="w-5 h-5" />
      <span>
        {minutes.toString().padStart(2, '0')}:{remainingSeconds.toString().padStart(2, '0')}
      </span>
    </div>
  )
}
