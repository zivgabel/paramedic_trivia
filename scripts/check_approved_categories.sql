-- Check which categories have approved questions from the new batch

SELECT
    c.name as category,
    COUNT(q.id) as approved_count
FROM public.categories c
LEFT JOIN public.questions q ON q.category_id = c.id AND q.status = 'approved'
GROUP BY c.id, c.name
ORDER BY approved_count DESC;

-- Also check the last 20 approved questions to see their categories
SELECT
    q.question_text,
    c.name as category,
    q.created_at,
    q.status
FROM public.questions q
JOIN public.categories c ON c.id = q.category_id
WHERE q.status = 'approved'
ORDER BY q.created_at DESC
LIMIT 20;
