-- Allow admins to view all questions (pending, approved, rejected)
-- Date: 2025-11-18
-- Issue: Admins can't see pending questions in admin panel

-- Drop old policy if exists
DROP POLICY IF EXISTS "Admins can view all questions" ON public.questions;

-- Create policy for admins to see ALL questions regardless of status
CREATE POLICY "Admins can view all questions"
  ON public.questions FOR SELECT
  USING (public.is_admin());

-- Verify policies
SELECT
    policyname,
    cmd,
    qual
FROM pg_policies
WHERE tablename = 'questions'
ORDER BY policyname;
