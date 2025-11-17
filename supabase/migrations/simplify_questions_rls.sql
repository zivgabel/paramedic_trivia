-- Simplify RLS policy for questions
-- Date: 2025-11-18
-- Issue: auth.uid() returns null, blocking access to approved questions
-- Solution: Remove created_by check from SELECT policy

-- Drop the old policy
DROP POLICY IF EXISTS "Anyone can view approved questions" ON public.questions;

-- Create new simple policy - ALL approved questions visible to ALL users
-- No need to check created_by or is_admin for viewing approved questions
CREATE POLICY "Anyone can view approved questions"
  ON public.questions FOR SELECT
  USING (status = 'approved');

-- Verify the new policy
SELECT
    schemaname,
    tablename,
    policyname,
    permissive,
    roles,
    cmd,
    qual,
    with_check
FROM pg_policies
WHERE tablename = 'questions' AND policyname = 'Anyone can view approved questions';

-- Test: Count visible questions per category
SELECT
    c.name as category,
    COUNT(q.id) as approved_questions
FROM public.categories c
LEFT JOIN public.questions q ON q.category_id = c.id AND q.status = 'approved'
GROUP BY c.name
ORDER BY c.name;
