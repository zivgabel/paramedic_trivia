-- =====================================================
-- Add game_mode column to games table
-- =====================================================
-- This migration adds support for different game modes
-- (standard solo play vs kahoot multiplayer)

-- Add game_mode column if it doesn't exist
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public'
    AND table_name = 'games'
    AND column_name = 'game_mode'
  ) THEN
    ALTER TABLE public.games
    ADD COLUMN game_mode TEXT CHECK (game_mode IN ('standard', 'kahoot')) DEFAULT 'standard';

    -- Update existing games to have 'standard' mode
    UPDATE public.games SET game_mode = 'standard' WHERE game_mode IS NULL;

    RAISE NOTICE 'Added game_mode column to games table';
  ELSE
    RAISE NOTICE 'game_mode column already exists in games table';
  END IF;
END $$;

-- =====================================================
-- DONE!
-- =====================================================
