-- Fix answers RLS policy to ensure is_correct field is visible during gameplay
-- Date: 2025-01-17

DROP POLICY IF EXISTS "Anyone can view answers for approved questions" ON public.answers;
DROP POLICY IF EXISTS "Users can manage answers for own questions" ON public.answers;
DROP POLICY IF EXISTS "Admins can manage all answers" ON public.answers;

-- Users can view ALL fields of answers (including is_correct) for approved questions
CREATE POLICY "Anyone can view answers for approved questions"
  ON public.answers FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM public.questions
      WHERE questions.id = answers.question_id
      AND questions.status = 'approved'
    )
    OR
    EXISTS (
      SELECT 1 FROM public.game_questions gq
      JOIN public.games g ON g.id = gq.game_id
      WHERE gq.question_id IN (
        SELECT id FROM public.questions WHERE id = answers.question_id
      )
      AND g.user_id = auth.uid()
    )
  );

-- Users can manage answers for their own pending questions
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
  USING (public.is_admin());

-- Verify the policies
SELECT tablename, policyname FROM pg_policies WHERE tablename = 'answers';
