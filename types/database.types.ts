// Database Types
export type UserRole = 'user' | 'instructor' | 'admin'
export type QuestionStatus = 'pending' | 'approved' | 'rejected'
export type GameMode = 'standard' | 'kahoot'
export type KahootRoomStatus = 'waiting' | 'playing' | 'completed'

export interface Database {
  public: {
    Tables: {
      profiles: {
        Row: {
          id: string
          email: string
          full_name: string
          role: UserRole
          is_active: boolean
          created_at: string
          updated_at: string
        }
        Insert: {
          id: string
          email: string
          full_name: string
          role?: UserRole
          is_active?: boolean
          created_at?: string
          updated_at?: string
        }
        Update: {
          id?: string
          email?: string
          full_name?: string
          role?: UserRole
          is_active?: boolean
          updated_at?: string
        }
      }
      categories: {
        Row: {
          id: string
          name: string
          description: string | null
          icon: string | null
          created_at: string
          updated_at: string
        }
        Insert: {
          id?: string
          name: string
          description?: string | null
          icon?: string | null
          created_at?: string
          updated_at?: string
        }
        Update: {
          name?: string
          description?: string | null
          icon?: string | null
          updated_at?: string
        }
      }
      questions: {
        Row: {
          id: string
          question_text: string
          category_id: string
          image_url: string | null
          status: QuestionStatus
          explanation: string | null
          created_by: string
          reviewed_by: string | null
          created_at: string
          updated_at: string
        }
        Insert: {
          id?: string
          question_text: string
          category_id: string
          image_url?: string | null
          status?: QuestionStatus
          explanation?: string | null
          created_by: string
          reviewed_by?: string | null
          created_at?: string
          updated_at?: string
        }
        Update: {
          question_text?: string
          category_id?: string
          image_url?: string | null
          status?: QuestionStatus
          explanation?: string | null
          reviewed_by?: string | null
          updated_at?: string
        }
      }
      answers: {
        Row: {
          id: string
          question_id: string
          answer_text: string
          is_correct: boolean
          order_num: number
          created_at: string
        }
        Insert: {
          id?: string
          question_id: string
          answer_text: string
          is_correct: boolean
          order_num: number
          created_at?: string
        }
        Update: {
          answer_text?: string
          is_correct?: boolean
          order_num?: number
        }
      }
      games: {
        Row: {
          id: string
          user_id: string
          game_mode: GameMode
          total_questions: number
          correct_answers: number
          score_percentage: number
          average_time_per_question: number
          started_at: string
          completed_at: string | null
        }
        Insert: {
          id?: string
          user_id: string
          game_mode?: GameMode
          total_questions: number
          correct_answers?: number
          score_percentage?: number
          average_time_per_question?: number
          started_at?: string
          completed_at?: string | null
        }
        Update: {
          game_mode?: GameMode
          correct_answers?: number
          score_percentage?: number
          average_time_per_question?: number
          completed_at?: string | null
        }
      }
      game_categories: {
        Row: {
          game_id: string
          category_id: string
        }
        Insert: {
          game_id: string
          category_id: string
        }
        Update: never
      }
      game_questions: {
        Row: {
          id: string
          game_id: string
          question_id: string
          selected_answer_id: string | null
          is_correct: boolean | null
          time_taken: number | null
          question_order: number
          created_at: string
        }
        Insert: {
          id?: string
          game_id: string
          question_id: string
          selected_answer_id?: string | null
          is_correct?: boolean | null
          time_taken?: number | null
          question_order: number
          created_at?: string
        }
        Update: {
          selected_answer_id?: string | null
          is_correct?: boolean | null
          time_taken?: number | null
        }
      }
      kahoot_rooms: {
        Row: {
          room_code: string
          host_id: string
          game_id: string | null
          status: KahootRoomStatus
          current_question_index: number
          question_start_time: string | null
          total_questions: number
          created_at: string
          started_at: string | null
          completed_at: string | null
        }
        Insert: {
          room_code: string
          host_id: string
          game_id?: string | null
          status?: KahootRoomStatus
          current_question_index?: number
          question_start_time?: string | null
          total_questions: number
          created_at?: string
          started_at?: string | null
          completed_at?: string | null
        }
        Update: {
          game_id?: string | null
          status?: KahootRoomStatus
          current_question_index?: number
          question_start_time?: string | null
          started_at?: string | null
          completed_at?: string | null
        }
      }
      kahoot_participants: {
        Row: {
          id: string
          room_code: string
          nickname: string
          avatar: string
          score: number
          is_connected: boolean
          last_seen: string
          joined_at: string
        }
        Insert: {
          id?: string
          room_code: string
          nickname: string
          avatar: string
          score?: number
          is_connected?: boolean
          last_seen?: string
          joined_at?: string
        }
        Update: {
          nickname?: string
          avatar?: string
          score?: number
          is_connected?: boolean
          last_seen?: string
        }
      }
      kahoot_answers: {
        Row: {
          id: string
          room_code: string
          participant_id: string
          question_index: number
          question_id: string
          selected_answer_id: string | null
          is_correct: boolean
          time_taken: number
          points_earned: number
          answered_at: string
        }
        Insert: {
          id?: string
          room_code: string
          participant_id: string
          question_index: number
          question_id: string
          selected_answer_id?: string | null
          is_correct: boolean
          time_taken: number
          points_earned?: number
          answered_at?: string
        }
        Update: {
          points_earned?: number
        }
      }
    }
  }
}

// Helper types for common queries
export type Profile = Database['public']['Tables']['profiles']['Row']
export type Category = Database['public']['Tables']['categories']['Row']
export type Question = Database['public']['Tables']['questions']['Row']
export type Answer = Database['public']['Tables']['answers']['Row']
export type Game = Database['public']['Tables']['games']['Row']
export type GameQuestion = Database['public']['Tables']['game_questions']['Row']
export type KahootRoom = Database['public']['Tables']['kahoot_rooms']['Row']
export type KahootParticipant = Database['public']['Tables']['kahoot_participants']['Row']
export type KahootAnswer = Database['public']['Tables']['kahoot_answers']['Row']

// Extended types with relations
export interface QuestionWithAnswers extends Question {
  answers: Answer[]
  category: Category
  created_by_profile?: Profile
}

export interface QuestionWithRelations extends Question {
  answers: Answer[]
  category: Category
  created_by_profile: Profile
  reviewed_by_profile?: Profile
}

export interface GameWithDetails extends Game {
  user: Profile
  categories: Category[]
  questions: (GameQuestion & {
    question: QuestionWithAnswers
  })[]
}

// Form types
export interface CreateQuestionForm {
  question_text: string
  category_id: string
  image_url?: string
  explanation?: string
  answers: {
    answer_text: string
    is_correct: boolean
  }[]
}

export interface GameSetupForm {
  category_ids: string[]
  total_questions: number
}

// Stats types
export interface UserStats {
  total_games: number
  average_score: number
  best_category: {
    id: string
    name: string
    score: number
  } | null
  worst_category: {
    id: string
    name: string
    score: number
  } | null
  recent_scores: number[]
  total_correct: number
  total_questions: number
}

export interface CategoryStats {
  category_id: string
  category_name: string
  total_questions: number
  correct_answers: number
  accuracy: number
  average_time: number
}

// Kahoot extended types
export interface KahootRoomWithParticipants extends KahootRoom {
  participants: KahootParticipant[]
  host: Profile
}

export interface KahootParticipantWithScore extends KahootParticipant {
  rank?: number
  answers?: KahootAnswer[]
}

export interface KahootLeaderboardEntry {
  participant_id: string
  nickname: string
  avatar: string
  score: number
  rank: number
  correct_answers: number
  total_answers: number
}
