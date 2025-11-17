#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Create SQL migration for 600 additional questions
"""

import json
import uuid
from datetime import datetime

# Read the questions
with open('/Users/ziv/paramedic/trivia/scripts/additional_600_questions.json', 'r', encoding='utf-8') as f:
    data = json.load(f)

questions = data['questions']

print(f"Processing {len(questions)} questions...")

# Create migration SQL
migration_lines = [
    "-- Migration: Add 600 additional questions from KP8",
    f"-- Generated: {datetime.now().isoformat()}",
    "-- Status: All questions set to 'pending' for review",
    "",
    "-- This migration adds 599 new paramedic questions across all categories",
    "-- All questions are marked as 'pending' and need admin approval",
    "",
    "BEGIN;",
    ""
]

# Track categories
category_map = {}

# We need to get category IDs - for now we'll use placeholders
# In real migration, these would be fetched from DB
categories_sql = """
-- Get category IDs (these will be used in the migration)
-- Note: Replace these with actual UUIDs from your database
"""

migration_lines.append(categories_sql)

# Generate SQL for each question
for idx, q in enumerate(questions, 1):
    category = q['category']
    question_text = q['question'].replace("'", "''")  # Escape quotes
    explanation = q.get('explanation', '').replace("'", "''")
    level = q.get('level', 'basic')

    # Generate UUIDs
    question_id = str(uuid.uuid4())

    # Insert question
    migration_lines.append(f"""
-- Question {idx}: {category}
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '{question_id}',
    '{question_text}',
    (SELECT id FROM public.categories WHERE name = '{category}' LIMIT 1),
    'pending',
    '{explanation}',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);
""")

    # Insert answers
    for answer_idx, answer in enumerate(q['answers'], 1):
        answer_text = answer['text'].replace("'", "''")
        is_correct = 'true' if answer['correct'] else 'false'
        answer_id = str(uuid.uuid4())

        migration_lines.append(f"""INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('{answer_id}', '{question_id}', '{answer_text}', {is_correct}, {answer_idx}, NOW());
""")

migration_lines.append("""
COMMIT;

-- Verify the migration
SELECT
    c.name as category,
    COUNT(*) as question_count
FROM public.questions q
JOIN public.categories c ON c.id = q.category_id
WHERE q.status = 'pending'
GROUP BY c.name
ORDER BY c.name;
""")

# Write migration file
migration_file = '/Users/ziv/paramedic/trivia/supabase/migrations/add_600_questions.sql'
with open(migration_file, 'w', encoding='utf-8') as f:
    f.write('\n'.join(migration_lines))

print(f"✓ Created migration file: {migration_file}")
print(f"✓ Total questions: {len(questions)}")
print(f"✓ Total SQL lines: {len(migration_lines)}")
print("\nTo apply this migration:")
print("  1. Review the migration file")
print("  2. Run it in your Supabase SQL editor")
print("  3. Check the questions in the admin panel")
print("  4. Approve questions as needed")
