-- =====================================================
-- Trivia Paramedic - Database Schema
-- =====================================================
-- This file contains all tables, indexes, and RLS policies
-- Run this in your Supabase SQL Editor after creating a new project

-- =====================================================
-- 1. TABLES
-- =====================================================

-- Profiles table (extends auth.users)
CREATE TABLE IF NOT EXISTS public.profiles (
  id UUID REFERENCES auth.users(id) ON DELETE CASCADE PRIMARY KEY,
  email TEXT UNIQUE NOT NULL,
  full_name TEXT NOT NULL,
  role TEXT CHECK (role IN ('user', 'instructor', 'admin')) DEFAULT 'user',
  is_active BOOLEAN DEFAULT true,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Categories table
CREATE TABLE IF NOT EXISTS public.categories (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT UNIQUE NOT NULL,
  description TEXT,
  icon TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Questions table
CREATE TABLE IF NOT EXISTS public.questions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  question_text TEXT NOT NULL,
  category_id UUID REFERENCES public.categories(id) ON DELETE CASCADE NOT NULL,
  image_url TEXT,
  status TEXT CHECK (status IN ('pending', 'approved', 'rejected')) DEFAULT 'pending',
  explanation TEXT,
  created_by UUID REFERENCES public.profiles(id) ON DELETE CASCADE NOT NULL,
  reviewed_by UUID REFERENCES public.profiles(id) ON DELETE SET NULL,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Answers table
CREATE TABLE IF NOT EXISTS public.answers (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  question_id UUID REFERENCES public.questions(id) ON DELETE CASCADE NOT NULL,
  answer_text TEXT NOT NULL,
  is_correct BOOLEAN NOT NULL,
  order_num INT NOT NULL CHECK (order_num BETWEEN 1 AND 4),
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Games table
CREATE TABLE IF NOT EXISTS public.games (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES public.profiles(id) ON DELETE CASCADE NOT NULL,
  total_questions INT NOT NULL,
  correct_answers INT DEFAULT 0,
  score_percentage DECIMAL(5,2) DEFAULT 0,
  average_time_per_question INT DEFAULT 0,
  started_at TIMESTAMPTZ DEFAULT NOW(),
  completed_at TIMESTAMPTZ
);

-- Game categories (many-to-many)
CREATE TABLE IF NOT EXISTS public.game_categories (
  game_id UUID REFERENCES public.games(id) ON DELETE CASCADE,
  category_id UUID REFERENCES public.categories(id) ON DELETE CASCADE,
  PRIMARY KEY (game_id, category_id)
);

-- Game questions
CREATE TABLE IF NOT EXISTS public.game_questions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  game_id UUID REFERENCES public.games(id) ON DELETE CASCADE NOT NULL,
  question_id UUID REFERENCES public.questions(id) ON DELETE CASCADE NOT NULL,
  selected_answer_id UUID REFERENCES public.answers(id) ON DELETE SET NULL,
  is_correct BOOLEAN,
  time_taken INT,
  question_order INT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- =====================================================
-- 2. INDEXES
-- =====================================================

-- Questions indexes
CREATE INDEX IF NOT EXISTS idx_questions_status ON public.questions(status);
CREATE INDEX IF NOT EXISTS idx_questions_category ON public.questions(category_id);
CREATE INDEX IF NOT EXISTS idx_questions_status_category ON public.questions(status, category_id);
CREATE INDEX IF NOT EXISTS idx_questions_created_by ON public.questions(created_by);

-- Answers index
CREATE INDEX IF NOT EXISTS idx_answers_question ON public.answers(question_id);

-- Games indexes
CREATE INDEX IF NOT EXISTS idx_games_user ON public.games(user_id);
CREATE INDEX IF NOT EXISTS idx_games_completed ON public.games(completed_at);

-- Game questions index
CREATE INDEX IF NOT EXISTS idx_game_questions_game ON public.game_questions(game_id);
CREATE INDEX IF NOT EXISTS idx_game_questions_order ON public.game_questions(game_id, question_order);

-- =====================================================
-- 3. ROW LEVEL SECURITY (RLS) POLICIES
-- =====================================================

-- Enable RLS on all tables
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.questions ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.answers ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.games ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.game_categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.game_questions ENABLE ROW LEVEL SECURITY;

-- =====================================================
-- Profiles Policies
-- =====================================================

-- Allow users to read all profiles
CREATE POLICY "Anyone can view profiles"
  ON public.profiles FOR SELECT
  USING (true);

-- Allow users to update their own profile
CREATE POLICY "Users can update own profile"
  ON public.profiles FOR UPDATE
  USING (auth.uid() = id);

-- Allow admins to manage all profiles
CREATE POLICY "Admins can manage profiles"
  ON public.profiles FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM public.profiles
      WHERE id = auth.uid() AND role = 'admin'
    )
  );

-- =====================================================
-- Categories Policies
-- =====================================================

-- Anyone can view categories
CREATE POLICY "Anyone can view categories"
  ON public.categories FOR SELECT
  USING (true);

-- Only admins can manage categories
CREATE POLICY "Admins can manage categories"
  ON public.categories FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM public.profiles
      WHERE id = auth.uid() AND role = 'admin'
    )
  );

-- =====================================================
-- Questions Policies
-- =====================================================

-- Anyone can view approved questions
CREATE POLICY "Anyone can view approved questions"
  ON public.questions FOR SELECT
  USING (
    status = 'approved' OR
    created_by = auth.uid() OR
    EXISTS (
      SELECT 1 FROM public.profiles
      WHERE id = auth.uid() AND role IN ('instructor', 'admin')
    )
  );

-- Authenticated users can create questions
CREATE POLICY "Authenticated users can create questions"
  ON public.questions FOR INSERT
  WITH CHECK (auth.uid() = created_by);

-- Instructors and admins can update questions
CREATE POLICY "Instructors can update questions"
  ON public.questions FOR UPDATE
  USING (
    EXISTS (
      SELECT 1 FROM public.profiles
      WHERE id = auth.uid() AND role IN ('instructor', 'admin')
    )
  );

-- Only admins can delete questions
CREATE POLICY "Admins can delete questions"
  ON public.questions FOR DELETE
  USING (
    EXISTS (
      SELECT 1 FROM public.profiles
      WHERE id = auth.uid() AND role = 'admin'
    )
  );

-- =====================================================
-- Answers Policies
-- =====================================================

-- Read answers when reading questions (handled by question policies)
CREATE POLICY "Anyone can view answers for viewable questions"
  ON public.answers FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM public.questions
      WHERE id = question_id AND (
        status = 'approved' OR
        created_by = auth.uid() OR
        EXISTS (
          SELECT 1 FROM public.profiles
          WHERE id = auth.uid() AND role IN ('instructor', 'admin')
        )
      )
    )
  );

-- Create answers with questions
CREATE POLICY "Users can create answers for their questions"
  ON public.answers FOR INSERT
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM public.questions
      WHERE id = question_id AND created_by = auth.uid()
    ) OR
    EXISTS (
      SELECT 1 FROM public.profiles
      WHERE id = auth.uid() AND role IN ('instructor', 'admin')
    )
  );

-- Update/delete answers (instructors/admins)
CREATE POLICY "Instructors can manage answers"
  ON public.answers FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM public.profiles
      WHERE id = auth.uid() AND role IN ('instructor', 'admin')
    )
  );

-- =====================================================
-- Games Policies
-- =====================================================

-- Users can view their own games
CREATE POLICY "Users can view own games"
  ON public.games FOR SELECT
  USING (user_id = auth.uid());

-- Users can create their own games
CREATE POLICY "Users can create own games"
  ON public.games FOR INSERT
  WITH CHECK (user_id = auth.uid());

-- Users can update their own games
CREATE POLICY "Users can update own games"
  ON public.games FOR UPDATE
  USING (user_id = auth.uid());

-- Admins can view all games
CREATE POLICY "Admins can view all games"
  ON public.games FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM public.profiles
      WHERE id = auth.uid() AND role = 'admin'
    )
  );

-- =====================================================
-- Game Categories Policies
-- =====================================================

-- Users can manage game categories for their games
CREATE POLICY "Users can manage own game categories"
  ON public.game_categories FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM public.games
      WHERE id = game_id AND user_id = auth.uid()
    )
  );

-- =====================================================
-- Game Questions Policies
-- =====================================================

-- Users can view questions from their games
CREATE POLICY "Users can view own game questions"
  ON public.game_questions FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM public.games
      WHERE id = game_id AND user_id = auth.uid()
    )
  );

-- Users can manage questions in their games
CREATE POLICY "Users can manage own game questions"
  ON public.game_questions FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM public.games
      WHERE id = game_id AND user_id = auth.uid()
    )
  );

-- =====================================================
-- 4. FUNCTIONS
-- =====================================================

-- Function to update updated_at timestamp
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ language 'plpgsql';

-- Add triggers for updated_at
CREATE TRIGGER update_profiles_updated_at BEFORE UPDATE ON public.profiles
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_categories_updated_at BEFORE UPDATE ON public.categories
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_questions_updated_at BEFORE UPDATE ON public.questions
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- =====================================================
-- 5. SAMPLE DATA (Optional - for testing)
-- =====================================================

-- Insert sample categories
INSERT INTO public.categories (name, description, icon) VALUES
  ('אנטומיה', 'שאלות על מבנה הגוף האנושי', '🦴'),
  ('פיזיולוגיה', 'תפקוד מערכות הגוף', '❤️'),
  ('תרופות', 'שאלות על תרופות ומינונים', '💊'),
  ('פרוטוקולים', 'נהלי טיפול רפואי', '📋'),
  ('טראומה', 'טיפול בחבלות ופציעות', '🚑'),
  ('קרדיולוגיה', 'מערכת הלב וכלי הדם', '💓')
ON CONFLICT (name) DO NOTHING;

-- =====================================================
-- 6. STORAGE (for question images)
-- =====================================================

-- Run this separately in Supabase Dashboard > Storage
-- Or uncomment if using SQL:

/*
INSERT INTO storage.buckets (id, name, public)
VALUES ('question-images', 'question-images', true)
ON CONFLICT DO NOTHING;

CREATE POLICY "Anyone can view question images"
  ON storage.objects FOR SELECT
  USING (bucket_id = 'question-images');

CREATE POLICY "Authenticated users can upload question images"
  ON storage.objects FOR INSERT
  WITH CHECK (
    bucket_id = 'question-images' AND
    auth.role() = 'authenticated'
  );

CREATE POLICY "Users can update their own question images"
  ON storage.objects FOR UPDATE
  USING (
    bucket_id = 'question-images' AND
    auth.uid()::text = (storage.foldername(name))[1]
  );
*/

-- =====================================================
-- DONE!
-- =====================================================
-- Your database is now ready to use.
-- Next steps:
-- 1. Copy your Supabase URL and anon key to .env.local
-- 2. Run your Next.js app: npm run dev
-- 3. Register your first admin user
-- 4. Start adding questions!
