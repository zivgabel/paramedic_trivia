-- Debug script to check questions in database
-- Run this in Supabase SQL Editor to diagnose the issue

-- 1. Check total questions by status
SELECT
    status,
    COUNT(*) as count
FROM public.questions
GROUP BY status
ORDER BY status;

-- 2. Check questions per category (approved only)
SELECT
    c.name as category,
    COUNT(q.id) as approved_questions
FROM public.categories c
LEFT JOIN public.questions q ON q.category_id = c.id AND q.status = 'approved'
GROUP BY c.name
ORDER BY c.name;

-- 3. Check if there are any approved questions at all
SELECT COUNT(*) as total_approved
FROM public.questions
WHERE status = 'approved';

-- 4. Sample of approved questions (first 5)
SELECT
    q.id,
    q.question_text,
    q.status,
    c.name as category,
    q.created_at
FROM public.questions q
JOIN public.categories c ON c.id = q.category_id
WHERE q.status = 'approved'
ORDER BY q.created_at DESC
LIMIT 5;

-- 5. Check pending questions
SELECT
    COUNT(*) as total_pending
FROM public.questions
WHERE status = 'pending';

-- 6. Check if answers exist for approved questions
SELECT
    'Approved questions' as type,
    COUNT(DISTINCT q.id) as questions_count,
    COUNT(a.id) as answers_count
FROM public.questions q
LEFT JOIN public.answers a ON a.question_id = q.id
WHERE q.status = 'approved';
