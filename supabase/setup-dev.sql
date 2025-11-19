-- =====================================================
-- Trivia Paramedic - Complete Database Setup Script
-- =====================================================
-- This script sets up a fresh database for development/production
-- Run this ONCE in your Supabase SQL Editor after creating a new project
--
-- Created: 2025-11-18
-- =====================================================

-- =====================================================
-- 1. HELPER FUNCTIONS
-- =====================================================

-- Function to check if user is admin or instructor
CREATE OR REPLACE FUNCTION public.is_admin()
RETURNS BOOLEAN
LANGUAGE sql
SECURITY DEFINER
SET search_path = public
STABLE
AS $$
  SELECT EXISTS (
    SELECT 1 FROM public.profiles
    WHERE id = auth.uid()
    AND role IN ('admin', 'instructor')
  );
$$;

-- Function to automatically create profile when user registers
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  INSERT INTO public.profiles (id, email, full_name, role, is_active, created_at, updated_at)
  VALUES (
    NEW.id,
    NEW.email,
    COALESCE(
      NEW.raw_user_meta_data->>'full_name',
      NEW.raw_user_meta_data->>'name',
      split_part(NEW.email, '@', 1)
    ),
    'user',
    true,
    NOW(),
    NOW()
  );
  RETURN NEW;
END;
$$;

-- Function to update updated_at timestamp
CREATE OR REPLACE FUNCTION public.update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ language 'plpgsql';

-- =====================================================
-- 2. TABLES
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
-- 3. INDEXES
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
-- 4. TRIGGERS
-- =====================================================

-- Trigger to auto-create profile when user registers
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW
  EXECUTE FUNCTION public.handle_new_user();

-- Triggers for updated_at
DROP TRIGGER IF EXISTS update_profiles_updated_at ON public.profiles;
CREATE TRIGGER update_profiles_updated_at BEFORE UPDATE ON public.profiles
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

DROP TRIGGER IF EXISTS update_categories_updated_at ON public.categories;
CREATE TRIGGER update_categories_updated_at BEFORE UPDATE ON public.categories
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

DROP TRIGGER IF EXISTS update_questions_updated_at ON public.questions;
CREATE TRIGGER update_questions_updated_at BEFORE UPDATE ON public.questions
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- =====================================================
-- 5. ROW LEVEL SECURITY (RLS) POLICIES
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

DROP POLICY IF EXISTS "Anyone can view profiles" ON public.profiles;
CREATE POLICY "Anyone can view profiles"
  ON public.profiles FOR SELECT
  USING (true);

DROP POLICY IF EXISTS "Users can insert own profile" ON public.profiles;
CREATE POLICY "Users can insert own profile"
  ON public.profiles FOR INSERT
  WITH CHECK (auth.uid() = id);

DROP POLICY IF EXISTS "Users can update own profile" ON public.profiles;
CREATE POLICY "Users can update own profile"
  ON public.profiles FOR UPDATE
  USING (auth.uid() = id);

DROP POLICY IF EXISTS "Admins can manage profiles" ON public.profiles;
CREATE POLICY "Admins can manage profiles"
  ON public.profiles FOR ALL
  USING (public.is_admin());

-- =====================================================
-- Categories Policies
-- =====================================================

DROP POLICY IF EXISTS "Anyone can view categories" ON public.categories;
CREATE POLICY "Anyone can view categories"
  ON public.categories FOR SELECT
  USING (true);

DROP POLICY IF EXISTS "Admins can manage categories" ON public.categories;
CREATE POLICY "Admins can manage categories"
  ON public.categories FOR ALL
  USING (public.is_admin());

-- =====================================================
-- Questions Policies
-- =====================================================

-- Anyone can view approved questions
DROP POLICY IF EXISTS "Anyone can view approved questions" ON public.questions;
CREATE POLICY "Anyone can view approved questions"
  ON public.questions FOR SELECT
  USING (status = 'approved');

-- Admins can view ALL questions (pending, approved, rejected)
DROP POLICY IF EXISTS "Admins can view all questions" ON public.questions;
CREATE POLICY "Admins can view all questions"
  ON public.questions FOR SELECT
  USING (public.is_admin());

-- Users can create questions
DROP POLICY IF EXISTS "Users can create questions" ON public.questions;
CREATE POLICY "Users can create questions"
  ON public.questions FOR INSERT
  WITH CHECK (auth.uid() = created_by);

-- Admins can update ALL questions
DROP POLICY IF EXISTS "Admins can update all questions" ON public.questions;
CREATE POLICY "Admins can update all questions"
  ON public.questions FOR UPDATE
  USING (public.is_admin())
  WITH CHECK (public.is_admin());

-- Users can update their own PENDING questions
DROP POLICY IF EXISTS "Users can update own pending questions" ON public.questions;
CREATE POLICY "Users can update own pending questions"
  ON public.questions FOR UPDATE
  USING (auth.uid() = created_by AND status = 'pending')
  WITH CHECK (auth.uid() = created_by AND status = 'pending');

-- Admins can delete questions
DROP POLICY IF EXISTS "Admins can delete questions" ON public.questions;
CREATE POLICY "Admins can delete questions"
  ON public.questions FOR DELETE
  USING (public.is_admin());

-- =====================================================
-- Answers Policies
-- =====================================================

DROP POLICY IF EXISTS "Anyone can view answers for approved questions" ON public.answers;
CREATE POLICY "Anyone can view answers for approved questions"
  ON public.answers FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM public.questions
      WHERE id = question_id AND status = 'approved'
    )
  );

DROP POLICY IF EXISTS "Admins can view all answers" ON public.answers;
CREATE POLICY "Admins can view all answers"
  ON public.answers FOR SELECT
  USING (public.is_admin());

DROP POLICY IF EXISTS "Users can create answers for their questions" ON public.answers;
CREATE POLICY "Users can create answers for their questions"
  ON public.answers FOR INSERT
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM public.questions
      WHERE id = question_id AND created_by = auth.uid()
    ) OR public.is_admin()
  );

DROP POLICY IF EXISTS "Admins can manage answers" ON public.answers;
CREATE POLICY "Admins can manage answers"
  ON public.answers FOR ALL
  USING (public.is_admin());

-- =====================================================
-- Games Policies
-- =====================================================

DROP POLICY IF EXISTS "Users can view own games" ON public.games;
CREATE POLICY "Users can view own games"
  ON public.games FOR SELECT
  USING (user_id = auth.uid());

DROP POLICY IF EXISTS "Users can create own games" ON public.games;
CREATE POLICY "Users can create own games"
  ON public.games FOR INSERT
  WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "Users can update own games" ON public.games;
CREATE POLICY "Users can update own games"
  ON public.games FOR UPDATE
  USING (user_id = auth.uid());

DROP POLICY IF EXISTS "Admins can view all games" ON public.games;
CREATE POLICY "Admins can view all games"
  ON public.games FOR SELECT
  USING (public.is_admin());

-- =====================================================
-- Game Categories Policies
-- =====================================================

DROP POLICY IF EXISTS "Users can manage own game categories" ON public.game_categories;
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

DROP POLICY IF EXISTS "Users can view own game questions" ON public.game_questions;
CREATE POLICY "Users can view own game questions"
  ON public.game_questions FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM public.games
      WHERE id = game_id AND user_id = auth.uid()
    )
  );

DROP POLICY IF EXISTS "Users can manage own game questions" ON public.game_questions;
CREATE POLICY "Users can manage own game questions"
  ON public.game_questions FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM public.games
      WHERE id = game_id AND user_id = auth.uid()
    )
  );

-- =====================================================
-- 6. SAMPLE DATA
-- =====================================================

-- Insert sample categories
INSERT INTO public.categories (name, description, icon) VALUES
  ('אנטומיה', 'שאלות על מבנה הגוף האנושי', '🦴'),
  ('פיזיולוגיה', 'תפקוד מערכות הגוף', '❤️'),
  ('פרמקולוגיה', 'שאלות על תרופות ופרמקולוגיה', '💊'),
  ('פרוטוקולים', 'נהלי טיפול רפואי', '📋'),
  ('קרדיולוגיה', 'מערכת הלב וכלי הדם', '💓'),
  ('מערכת נשימתית', 'מערכת הנשימה והטיפול בה', '🫁'),
  ('נתיב אוויר', 'ניהול דרכי אוויר', '😮'),
  ('אלקטרוליטים', 'איזון אלקטרוליטים ונוזלים', '⚡'),
  ('מערכת קרדיווסקולרית', 'מערכת הלב וכלי הדם', '🩺'),
  ('מערכות נוספות', 'מערכות גוף נוספות', '🧬')
ON CONFLICT (name) DO NOTHING;

-- =====================================================
-- DONE!
-- =====================================================
-- Database setup complete!
--
-- Next steps:
-- 1. Go to Supabase Dashboard → Project Settings → API
-- 2. Copy your Project URL and anon/public key
-- 3. Add to .env.local:
--    NEXT_PUBLIC_SUPABASE_URL=your-project-url
--    NEXT_PUBLIC_SUPABASE_ANON_KEY=your-anon-key
-- 4. Register your first admin user in the app
-- 5. Manually update their role to 'admin' in the database:
--    UPDATE public.profiles SET role = 'admin' WHERE email = 'your@email.com';
-- =====================================================
