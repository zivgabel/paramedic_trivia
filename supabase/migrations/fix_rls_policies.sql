-- Migration: Fix RLS policies for all tables
-- Date: 2025-01-17
-- Description: Ensure all necessary RLS policies exist for the application to work

-- =====================================================
-- Enable RLS on all tables (if not already enabled)
-- =====================================================

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

-- Drop existing policies to recreate them (idempotent)
DROP POLICY IF EXISTS "Anyone can view profiles" ON public.profiles;
DROP POLICY IF EXISTS "Users can insert own profile" ON public.profiles;
DROP POLICY IF EXISTS "Users can update own profile" ON public.profiles;
DROP POLICY IF EXISTS "Admins can manage profiles" ON public.profiles;

-- Allow users to read all profiles
CREATE POLICY "Anyone can view profiles"
  ON public.profiles FOR SELECT
  USING (true);

-- Allow users to insert their own profile during registration
CREATE POLICY "Users can insert own profile"
  ON public.profiles FOR INSERT
  WITH CHECK (auth.uid() = id);

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
      WHERE id = auth.uid() AND role IN ('admin', 'instructor')
    )
  );

-- =====================================================
-- Categories Policies
-- =====================================================

DROP POLICY IF EXISTS "Anyone can view categories" ON public.categories;
DROP POLICY IF EXISTS "Admins can manage categories" ON public.categories;

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
      WHERE id = auth.uid() AND role IN ('admin', 'instructor')
    )
  );

-- =====================================================
-- Questions Policies
-- =====================================================

DROP POLICY IF EXISTS "Anyone can view approved questions" ON public.questions;
DROP POLICY IF EXISTS "Users can create questions" ON public.questions;
DROP POLICY IF EXISTS "Users can update own questions" ON public.questions;
DROP POLICY IF EXISTS "Admins can manage all questions" ON public.questions;

-- Anyone can view approved questions
CREATE POLICY "Anyone can view approved questions"
  ON public.questions FOR SELECT
  USING (status = 'approved' OR auth.uid() = created_by);

-- Authenticated users can create questions
CREATE POLICY "Users can create questions"
  ON public.questions FOR INSERT
  WITH CHECK (auth.uid() = created_by);

-- Users can update their own pending questions
CREATE POLICY "Users can update own questions"
  ON public.questions FOR UPDATE
  USING (auth.uid() = created_by AND status = 'pending');

-- Admins can manage all questions
CREATE POLICY "Admins can manage all questions"
  ON public.questions FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM public.profiles
      WHERE id = auth.uid() AND role IN ('admin', 'instructor')
    )
  );

-- =====================================================
-- Answers Policies
-- =====================================================

DROP POLICY IF EXISTS "Anyone can view answers for approved questions" ON public.answers;
DROP POLICY IF EXISTS "Users can manage answers for own questions" ON public.answers;
DROP POLICY IF EXISTS "Admins can manage all answers" ON public.answers;

-- Anyone can view answers for approved questions
CREATE POLICY "Anyone can view answers for approved questions"
  ON public.answers FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM public.questions
      WHERE questions.id = answers.question_id
      AND (questions.status = 'approved' OR questions.created_by = auth.uid())
    )
  );

-- Users can manage answers for their own questions
CREATE POLICY "Users can manage answers for own questions"
  ON public.answers FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM public.questions
      WHERE questions.id = answers.question_id
      AND questions.created_by = auth.uid()
      AND questions.status = 'pending'
    )
  );

-- Admins can manage all answers
CREATE POLICY "Admins can manage all answers"
  ON public.answers FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM public.profiles
      WHERE id = auth.uid() AND role IN ('admin', 'instructor')
    )
  );

-- =====================================================
-- Games Policies
-- =====================================================

DROP POLICY IF EXISTS "Users can view own games" ON public.games;
DROP POLICY IF EXISTS "Users can create own games" ON public.games;
DROP POLICY IF EXISTS "Users can update own games" ON public.games;

-- Users can view their own games
CREATE POLICY "Users can view own games"
  ON public.games FOR SELECT
  USING (auth.uid() = user_id);

-- Users can create their own games
CREATE POLICY "Users can create own games"
  ON public.games FOR INSERT
  WITH CHECK (auth.uid() = user_id);

-- Users can update their own games
CREATE POLICY "Users can update own games"
  ON public.games FOR UPDATE
  USING (auth.uid() = user_id);

-- =====================================================
-- Game Categories Policies
-- =====================================================

DROP POLICY IF EXISTS "Users can manage game categories for own games" ON public.game_categories;

-- Users can manage game categories for their own games
CREATE POLICY "Users can manage game categories for own games"
  ON public.game_categories FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM public.games
      WHERE games.id = game_categories.game_id
      AND games.user_id = auth.uid()
    )
  );

-- =====================================================
-- Game Questions Policies
-- =====================================================

DROP POLICY IF EXISTS "Users can view game questions for own games" ON public.game_questions;
DROP POLICY IF EXISTS "Users can manage game questions for own games" ON public.game_questions;

-- Users can view game questions for their own games
CREATE POLICY "Users can view game questions for own games"
  ON public.game_questions FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM public.games
      WHERE games.id = game_questions.game_id
      AND games.user_id = auth.uid()
    )
  );

-- Users can manage game questions for their own games
CREATE POLICY "Users can manage game questions for own games"
  ON public.game_questions FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM public.games
      WHERE games.id = game_questions.game_id
      AND games.user_id = auth.uid()
    )
  );

-- =====================================================
-- Verification - Show all policies
-- =====================================================

SELECT
  schemaname,
  tablename,
  policyname,
  permissive,
  cmd,
  CASE
    WHEN qual IS NOT NULL THEN 'USING clause exists'
    ELSE 'No USING clause'
  END as using_clause,
  CASE
    WHEN with_check IS NOT NULL THEN 'WITH CHECK clause exists'
    ELSE 'No WITH CHECK clause'
  END as with_check_clause
FROM pg_policies
WHERE schemaname = 'public'
ORDER BY tablename, policyname;
