// Database Types
export type UserRole = 'user' | 'instructor' | 'admin'
export type QuestionStatus = 'pending' | 'approved' | 'rejected'

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
          total_questions: number
          correct_answers?: number
          score_percentage?: number
          average_time_per_question?: number
          started_at?: string
          completed_at?: string | null
        }
        Update: {
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
