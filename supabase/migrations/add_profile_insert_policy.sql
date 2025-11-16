-- Migration: Add INSERT policy for profiles table
-- Date: 2025-01-17
-- Description: Allow users to insert their own profile during registration

-- Drop the policy if it exists (for idempotency)
DROP POLICY IF EXISTS "Users can insert own profile" ON public.profiles;

-- Create the INSERT policy
CREATE POLICY "Users can insert own profile"
  ON public.profiles FOR INSERT
  WITH CHECK (auth.uid() = id);

-- Verify the policy was created
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
WHERE tablename = 'profiles'
ORDER BY policyname;
