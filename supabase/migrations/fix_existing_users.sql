-- Migration: Fix existing users who registered without profiles
-- Date: 2025-01-17
-- Description: Create profile records for users who registered before the INSERT policy was added

-- This script creates profiles for any auth.users who don't have a profile record yet
-- It uses the email and user_metadata.full_name from the auth.users table

INSERT INTO public.profiles (id, email, full_name, role, is_active)
SELECT
  au.id,
  au.email,
  COALESCE(
    au.raw_user_meta_data->>'full_name',
    au.raw_user_meta_data->>'name',
    split_part(au.email, '@', 1)  -- fallback to email username if no name
  ) as full_name,
  'user' as role,
  true as is_active
FROM auth.users au
WHERE NOT EXISTS (
  SELECT 1 FROM public.profiles p WHERE p.id = au.id
)
AND au.email IS NOT NULL;

-- Display the results
SELECT
  p.email,
  p.full_name,
  p.role,
  p.created_at
FROM public.profiles p
ORDER BY p.created_at DESC;
