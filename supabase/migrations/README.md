# Database Migrations

## How to Apply Migrations

### Option 1: Supabase Dashboard (Recommended)

1. Go to your Supabase project dashboard
2. Navigate to **SQL Editor** (in the left sidebar)
3. Click **New Query**
4. Copy the contents of the migration file you want to run
5. Paste it into the SQL editor
6. Click **Run** to execute the migration

### Option 2: Supabase CLI

If you have the Supabase CLI installed:

```bash
# Apply all pending migrations
supabase db push

# Or apply a specific migration
supabase db execute --file supabase/migrations/add_profile_insert_policy.sql
```

## Current Migrations

### `add_profile_insert_policy.sql` (2025-01-17)

**Purpose:** Fix registration issue where new users cannot create their profile

**Issue:** Users registering for the first time couldn't insert their profile record due to missing RLS policy. This caused their name to show as "משתמש" instead of their actual name.

**Solution:** Adds an INSERT policy to the profiles table allowing authenticated users to create their own profile during registration.

**To apply:**
```sql
-- Copy and paste this into Supabase SQL Editor
DROP POLICY IF EXISTS "Users can insert own profile" ON public.profiles;

CREATE POLICY "Users can insert own profile"
  ON public.profiles FOR INSERT
  WITH CHECK (auth.uid() = id);
```

**After applying this migration:**
- New users will be able to register and create their profile successfully
- Their full name will be saved and displayed correctly
- Existing users who registered before this fix may need to manually update their profile or re-register

## Verifying Migrations

After applying a migration, you can verify it worked by running:

```sql
-- Check all policies on the profiles table
SELECT
  schemaname,
  tablename,
  policyname,
  permissive,
  cmd
FROM pg_policies
WHERE tablename = 'profiles'
ORDER BY policyname;
```

You should see a policy named "Users can insert own profile" with cmd = 'INSERT'.
