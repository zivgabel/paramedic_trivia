-- =====================================================
-- Add Kahoot Multiplayer Tables
-- =====================================================
-- Run this migration to add Kahoot game mode support
-- to an existing database

-- =====================================================
-- 1. ADD KAHOOT TABLES
-- =====================================================

-- Kahoot rooms table
CREATE TABLE IF NOT EXISTS public.kahoot_rooms (
  room_code TEXT PRIMARY KEY,
  host_id UUID REFERENCES public.profiles(id) ON DELETE CASCADE NOT NULL,
  game_id UUID REFERENCES public.games(id) ON DELETE CASCADE,
  status TEXT CHECK (status IN ('waiting', 'playing', 'completed')) DEFAULT 'waiting',
  current_question_index INT DEFAULT 0,
  question_start_time TIMESTAMPTZ,
  total_questions INT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  started_at TIMESTAMPTZ,
  completed_at TIMESTAMPTZ
);

-- Kahoot participants table (anonymous players)
CREATE TABLE IF NOT EXISTS public.kahoot_participants (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  room_code TEXT REFERENCES public.kahoot_rooms(room_code) ON DELETE CASCADE NOT NULL,
  nickname TEXT NOT NULL,
  avatar TEXT NOT NULL,
  score INT DEFAULT 0,
  is_connected BOOLEAN DEFAULT true,
  last_seen TIMESTAMPTZ DEFAULT NOW(),
  joined_at TIMESTAMPTZ DEFAULT NOW()
);

-- Kahoot answers table (track each player's answers)
CREATE TABLE IF NOT EXISTS public.kahoot_answers (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  room_code TEXT REFERENCES public.kahoot_rooms(room_code) ON DELETE CASCADE NOT NULL,
  participant_id UUID REFERENCES public.kahoot_participants(id) ON DELETE CASCADE NOT NULL,
  question_index INT NOT NULL,
  question_id UUID REFERENCES public.questions(id) ON DELETE CASCADE NOT NULL,
  selected_answer_id UUID REFERENCES public.answers(id) ON DELETE SET NULL,
  is_correct BOOLEAN NOT NULL,
  time_taken DECIMAL(5,3) NOT NULL, -- Time in seconds with millisecond precision
  points_earned INT DEFAULT 0,
  answered_at TIMESTAMPTZ DEFAULT NOW()
);

-- =====================================================
-- 2. ADD INDEXES FOR PERFORMANCE
-- =====================================================

-- Kahoot rooms indexes
CREATE INDEX IF NOT EXISTS idx_kahoot_rooms_host ON public.kahoot_rooms(host_id);
CREATE INDEX IF NOT EXISTS idx_kahoot_rooms_status ON public.kahoot_rooms(status);
CREATE INDEX IF NOT EXISTS idx_kahoot_rooms_game ON public.kahoot_rooms(game_id);

-- Kahoot participants indexes
CREATE INDEX IF NOT EXISTS idx_kahoot_participants_room ON public.kahoot_participants(room_code);
CREATE INDEX IF NOT EXISTS idx_kahoot_participants_connected ON public.kahoot_participants(room_code, is_connected);

-- Kahoot answers indexes
CREATE INDEX IF NOT EXISTS idx_kahoot_answers_room ON public.kahoot_answers(room_code);
CREATE INDEX IF NOT EXISTS idx_kahoot_answers_participant ON public.kahoot_answers(participant_id);
CREATE INDEX IF NOT EXISTS idx_kahoot_answers_room_question ON public.kahoot_answers(room_code, question_index);

-- =====================================================
-- 3. ENABLE ROW LEVEL SECURITY
-- =====================================================

ALTER TABLE public.kahoot_rooms ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.kahoot_participants ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.kahoot_answers ENABLE ROW LEVEL SECURITY;

-- =====================================================
-- 4. CREATE RLS POLICIES
-- =====================================================

-- Kahoot Rooms Policies
-- Anyone can view active kahoot rooms (for joining)
DROP POLICY IF EXISTS "Anyone can view active kahoot rooms" ON public.kahoot_rooms;
CREATE POLICY "Anyone can view active kahoot rooms"
  ON public.kahoot_rooms FOR SELECT
  USING (status IN ('waiting', 'playing'));

-- Hosts can create rooms
DROP POLICY IF EXISTS "Hosts can create rooms" ON public.kahoot_rooms;
CREATE POLICY "Hosts can create rooms"
  ON public.kahoot_rooms FOR INSERT
  WITH CHECK (host_id = auth.uid());

-- Hosts can update their rooms
DROP POLICY IF EXISTS "Hosts can update own rooms" ON public.kahoot_rooms;
CREATE POLICY "Hosts can update own rooms"
  ON public.kahoot_rooms FOR UPDATE
  USING (host_id = auth.uid());

-- Hosts can delete their rooms
DROP POLICY IF EXISTS "Hosts can delete own rooms" ON public.kahoot_rooms;
CREATE POLICY "Hosts can delete own rooms"
  ON public.kahoot_rooms FOR DELETE
  USING (host_id = auth.uid());

-- Kahoot Participants Policies (Anonymous access)
-- Anyone can view participants in active rooms
DROP POLICY IF EXISTS "Anyone can view participants in active rooms" ON public.kahoot_participants;
CREATE POLICY "Anyone can view participants in active rooms"
  ON public.kahoot_participants FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM public.kahoot_rooms
      WHERE room_code = kahoot_participants.room_code
      AND status IN ('waiting', 'playing', 'completed')
    )
  );

-- Anyone can join as a participant (anonymous)
DROP POLICY IF EXISTS "Anyone can join as participant" ON public.kahoot_participants;
CREATE POLICY "Anyone can join as participant"
  ON public.kahoot_participants FOR INSERT
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM public.kahoot_rooms
      WHERE room_code = kahoot_participants.room_code
      AND status = 'waiting'
    )
  );

-- Participants can update their own record (reconnection, score updates)
DROP POLICY IF EXISTS "Participants can update own record" ON public.kahoot_participants;
CREATE POLICY "Participants can update own record"
  ON public.kahoot_participants FOR UPDATE
  USING (true); -- We'll verify participant_id client-side

-- Host can remove participants
DROP POLICY IF EXISTS "Host can remove participants" ON public.kahoot_participants;
CREATE POLICY "Host can remove participants"
  ON public.kahoot_participants FOR DELETE
  USING (
    EXISTS (
      SELECT 1 FROM public.kahoot_rooms
      WHERE room_code = kahoot_participants.room_code
      AND host_id = auth.uid()
    )
  );

-- Kahoot Answers Policies
-- Anyone can view answers in their room
DROP POLICY IF EXISTS "Anyone can view room answers" ON public.kahoot_answers;
CREATE POLICY "Anyone can view room answers"
  ON public.kahoot_answers FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM public.kahoot_rooms
      WHERE room_code = kahoot_answers.room_code
      AND status IN ('playing', 'completed')
    )
  );

-- Participants can submit their answers
DROP POLICY IF EXISTS "Participants can submit answers" ON public.kahoot_answers;
CREATE POLICY "Participants can submit answers"
  ON public.kahoot_answers FOR INSERT
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM public.kahoot_rooms
      WHERE room_code = kahoot_answers.room_code
      AND status = 'playing'
    )
  );

-- Hosts can update answers (for point calculation)
DROP POLICY IF EXISTS "Hosts can update room answers" ON public.kahoot_answers;
CREATE POLICY "Hosts can update room answers"
  ON public.kahoot_answers FOR UPDATE
  USING (
    EXISTS (
      SELECT 1 FROM public.kahoot_rooms
      WHERE room_code = kahoot_answers.room_code
      AND host_id = auth.uid()
    )
  );

-- =====================================================
-- DONE!
-- =====================================================
-- The Kahoot multiplayer game mode is now ready to use!
