'use client'

import { Progress } from '@/components/ui/progress'

interface ProgressBarProps {
  current: number
  total: number
  className?: string
}

export function ProgressBar({ current, total, className }: ProgressBarProps) {
  const percentage = Math.round((current / total) * 100)

  return (
    <div className={className}>
      <div className="flex items-center justify-between mb-2 text-sm text-muted-foreground">
        <span>
          שאלה {current} מתוך {total}
        </span>
        <span>{percentage}%</span>
      </div>
      <Progress value={percentage} className="h-2" />
    </div>
  )
}
