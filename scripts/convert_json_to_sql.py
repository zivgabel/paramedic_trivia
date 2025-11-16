#!/usr/bin/env python3
"""
Convert questions JSON to Supabase SQL format
Usage: python scripts/convert_json_to_sql.py
"""

import json
import uuid
from datetime import datetime

def generate_sql(json_file, output_file):
    """Convert questions JSON to SQL file"""

    # Read JSON
    with open(json_file, 'r', encoding='utf-8') as f:
        data = json.load(f)

    questions = data['questions']

    # Group questions by category
    categories = {}
    for q in questions:
        cat = q['category']
        if cat not in categories:
            categories[cat] = []
        categories[cat].append(q)

    # Start SQL file
    sql = []
    sql.append("-- =====================================================")
    sql.append("-- Trivia Paramedic - Sample Questions")
    sql.append("-- =====================================================")
    sql.append(f"-- Generated: {datetime.now().strftime('%Y-%m-%d %H:%M')}")
    sql.append(f"-- Total Questions: {len(questions)}")
    sql.append(f"-- Total Categories: {len(categories)}")
    sql.append("--")
    sql.append("-- IMPORTANT: Before running:")
    sql.append("-- 1. Run schema.sql first")
    sql.append("-- 2. Replace 'YOUR_ADMIN_USER_ID' with actual UUID")
    sql.append("-- =====================================================")
    sql.append("")

    # Category icons mapping
    category_icons = {
        'אנטומיה': '🦴',
        'פיזיולוגיה': '❤️',
        'מערכת נשימתית': '🫁',
        'מערכת קרדיווסקולרית': '💓',
        'נתיב אוויר': '🌬️',
        'פרמקולוגיה': '💊',
        'קרדיולוגיה': '📈',
        'פרוטוקולים': '📋',
        'אלקטרוליטים': '⚗️',
        'מערכות נוספות': '🏥'
    }

    # Insert categories
    sql.append("-- =====================================================")
    sql.append("-- 1. INSERT CATEGORIES")
    sql.append("-- =====================================================")
    sql.append("")
    sql.append("INSERT INTO public.categories (id, name, description, icon) VALUES")

    cat_values = []
    for i, (cat_name, questions_list) in enumerate(categories.items()):
        icon = category_icons.get(cat_name, '📚')
        desc = f'{len(questions_list)} שאלות מקצועיות מקורס פארמדיקים'
        cat_values.append(f"  (gen_random_uuid(), '{cat_name}', '{desc}', '{icon}')")

    sql.append(',\n'.join(cat_values))
    sql.append("ON CONFLICT (name) DO UPDATE SET")
    sql.append("  description = EXCLUDED.description,")
    sql.append("  icon = EXCLUDED.icon;")
    sql.append("")

    # Insert questions and answers
    sql.append("-- =====================================================")
    sql.append("-- 2. INSERT QUESTIONS AND ANSWERS")
    sql.append("-- =====================================================")
    sql.append("")
    sql.append("DO $$")
    sql.append("DECLARE")

    # Declare category ID variables
    for cat_name in categories.keys():
        var_name = cat_name.replace(' ', '_').replace('-', '_')
        sql.append(f"  cat_{var_name}_id UUID;")

    sql.append("  question_id UUID;")
    sql.append("BEGIN")
    sql.append("")

    # Get category IDs
    sql.append("  -- Get category IDs")
    for cat_name in categories.keys():
        var_name = cat_name.replace(' ', '_').replace('-', '_')
        sql.append(f"  SELECT id INTO cat_{var_name}_id FROM public.categories WHERE name = '{cat_name}';")

    sql.append("")

    # Insert questions by level
    for level, level_name in [('basic', 'בסיסיות'), ('intermediate', 'בינוניות'), ('advanced', 'מתקדמות')]:
        level_questions = [q for q in questions if q['level'] == level]
        if not level_questions:
            continue

        sql.append(f"  -- ==================")
        sql.append(f"  -- שאלות {level_name}")
        sql.append(f"  -- ==================")
        sql.append("")

        for q in level_questions:
            cat_var = q['category'].replace(' ', '_').replace('-', '_')

            # Escape single quotes in text
            question_text = q['question'].replace("'", "''")
            explanation = q['explanation'].replace("'", "''")

            sql.append(f"  -- {question_text}")
            sql.append(f"  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)")
            sql.append(f"  VALUES (")
            sql.append(f"    gen_random_uuid(),")
            sql.append(f"    '{question_text}',")
            sql.append(f"    cat_{cat_var}_id,")
            sql.append(f"    'approved',")
            sql.append(f"    '{explanation}',")
            sql.append(f"    'YOUR_ADMIN_USER_ID'")
            sql.append(f"  )")
            sql.append(f"  RETURNING id INTO question_id;")
            sql.append("")

            # Insert answers
            sql.append(f"  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES")
            answer_values = []
            for idx, ans in enumerate(q['answers'], 1):
                answer_text = ans['text'].replace("'", "''")
                is_correct = 'true' if ans['correct'] else 'false'
                answer_values.append(f"    (question_id, '{answer_text}', {is_correct}, {idx})")

            sql.append(',\n'.join(answer_values) + ";")
            sql.append("")

    sql.append("END $$;")
    sql.append("")
    sql.append("-- =====================================================")
    sql.append("-- DONE!")
    sql.append(f"-- Total {len(questions)} questions inserted")
    sql.append("-- =====================================================")

    # Write SQL file
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write('\n'.join(sql))

    print(f"✅ SQL file created: {output_file}")
    print(f"📊 Statistics:")
    print(f"   - Total questions: {len(questions)}")
    print(f"   - Categories: {len(categories)}")
    for cat_name, qs in categories.items():
        print(f"   - {cat_name}: {len(qs)} questions")

    # Level breakdown
    levels = {'basic': 0, 'intermediate': 0, 'advanced': 0}
    for q in questions:
        levels[q['level']] += 1

    print(f"\n📈 By level:")
    print(f"   - Basic: {levels['basic']}")
    print(f"   - Intermediate: {levels['intermediate']}")
    print(f"   - Advanced: {levels['advanced']}")

if __name__ == "__main__":
    json_file = "scripts/questions_data.json"
    output_file = "supabase/sample_questions.sql"

    print("🔄 Converting JSON to SQL...")
    generate_sql(json_file, output_file)
    print("\n✨ Done!")
