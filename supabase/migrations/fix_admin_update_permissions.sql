-- Fix admin permissions to update questions
-- Date: 2025-11-18
-- Issue: Admins can't update question status from pending to approved

-- First, let's make sure the is_admin function exists
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

-- Drop all existing question policies to start fresh
DROP POLICY IF EXISTS "Anyone can view approved questions" ON public.questions;
DROP POLICY IF EXISTS "Users can create questions" ON public.questions;
DROP POLICY IF EXISTS "Users can update own questions" ON public.questions;
DROP POLICY IF EXISTS "Admins can manage all questions" ON public.questions;
DROP POLICY IF EXISTS "Instructors can update questions" ON public.questions;
DROP POLICY IF EXISTS "Admins can delete questions" ON public.questions;

-- Recreate policies with correct permissions

-- 1. Anyone can view approved questions (or their own)
CREATE POLICY "Anyone can view approved questions"
  ON public.questions FOR SELECT
  USING (
    status = 'approved'
    OR created_by = auth.uid()
    OR public.is_admin()
  );

-- 2. Authenticated users can create questions
CREATE POLICY "Users can create questions"
  ON public.questions FOR INSERT
  WITH CHECK (auth.uid() = created_by);

-- 3. Admins can UPDATE all questions (THIS IS THE KEY FIX)
CREATE POLICY "Admins can update all questions"
  ON public.questions FOR UPDATE
  USING (public.is_admin())
  WITH CHECK (public.is_admin());

-- 4. Users can update their own PENDING questions
CREATE POLICY "Users can update own pending questions"
  ON public.questions FOR UPDATE
  USING (auth.uid() = created_by AND status = 'pending')
  WITH CHECK (auth.uid() = created_by AND status = 'pending');

-- 5. Admins can DELETE questions
CREATE POLICY "Admins can delete questions"
  ON public.questions FOR DELETE
  USING (public.is_admin());

-- Verify the policies were created
SELECT
    schemaname,
    tablename,
    policyname,
    permissive,
    roles,
    cmd
FROM pg_policies
WHERE tablename = 'questions'
ORDER BY policyname;

-- Test query: Check if current user is admin
SELECT
    auth.uid() as current_user_id,
    public.is_admin() as is_admin,
    (SELECT role FROM public.profiles WHERE id = auth.uid()) as role;
