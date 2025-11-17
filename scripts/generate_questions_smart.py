#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Smart question generator - reads KP8 content and generates quality questions
"""

import json
import re

# Read existing questions to avoid duplicates
with open('/Users/ziv/paramedic/trivia/scripts/questions_data.json', 'r', encoding='utf-8') as f:
    existing = json.load(f)
    existing_questions = set(q['question'] for q in existing['questions'])

# Read KP8 full text
with open('/tmp/kp8_full_text.txt', 'r', encoding='utf-8') as f:
    text = f.read()

# Categories and their target count
categories = {
    'אנטומיה': 60,
    'פיזיולוגיה': 60,
    'פרמקולוגיה': 60,
    'קרדיולוגיה': 60,
    'מערכת נשימתית': 60,
    'נתיב אוויר': 60,
    'פרוטוקולים': 60,
    'אלקטרוליטים': 60,
    'מערכת קרדיווסקולרית': 60,
    'מערכות נוספות': 60,
}

all_questions = []

# ============================================
# אנטומיה - Anatomy Questions (60)
# ============================================

anatomy_questions = [
    {
        "category": "אנטומיה",
        "level": "basic",
        "question": "כמה אונות יש לריאה הימנית?",
        "answers": [
            {"text": "3 אונות", "correct": True},
            {"text": "2 אונות", "correct": False},
            {"text": "4 אונות", "correct": False},
            {"text": "5 אונות", "correct": False}
        ],
        "explanation": "לריאה הימנית 3 אונות: עליונה, אמצעית ותחתונה. לריאה השמאלית רק 2 אונות."
    },
    {
        "category": "אנטומיה",
        "level": "basic",
        "question": "כמה אונות יש לריאה השמאלית?",
        "answers": [
            {"text": "2 אונות", "correct": True},
            {"text": "3 אונות", "correct": False},
            {"text": "4 אונות", "correct": False},
            {"text": "1 אונה", "correct": False}
        ],
        "explanation": "לריאה השמאלית 2 אונות בלבד: עליונה ותחתונה, כדי לפנות מקום ללב."
    },
    {
        "category": "אנטומיה",
        "level": "intermediate",
        "question": "מהו המדיאסטינום (Mediastinum)?",
        "answers": [
            {"text": "החלל המרכזי בחזה בין שתי הריאות", "correct": True},
            {"text": "הממברנה המקיפה את הריאות", "correct": False},
            {"text": "השריר המפריד בין החזה לבטן", "correct": False},
            {"text": "המרווח בין צלעות", "correct": False}
        ],
        "explanation": "המדיאסטינום הוא החלל המרכזי בחזה בין שתי הריאות, ובו נמצאים הלב, הקנה, הוושט וכלי דם גדולים."
    },
    {
        "category": "אנטומיה",
        "level": "basic",
        "question": "מהו השם של הסחוס הגדול ביותר בגרון?",
        "answers": [
            {"text": "סחוס התריואיד (Thyroid Cartilage)", "correct": True},
            {"text": "סחוס הקריקואיד (Cricoid Cartilage)", "correct": False},
            {"text": "האפיגלוטיס (Epiglottis)", "correct": False},
            {"text": "סחוס האריתנואיד (Arytenoid)", "correct": False}
        ],
        "explanation": "סחוס התריואיד הוא הסחוס הגדול ביותר בגרון, ידוע גם כ'תפוח אדם'."
    },
    {
        "category": "אנטומיה",
        "level": "intermediate",
        "question": "מהו הסחוס היחיד בדרכי האוויר שהוא טבעת שלמה?",
        "answers": [
            {"text": "סחוס הקריקואיד (Cricoid)", "correct": True},
            {"text": "סחוס התריואיד (Thyroid)", "correct": False},
            {"text": "סחוסי הקנה", "correct": False},
            {"text": "האפיגלוטיס", "correct": False}
        ],
        "explanation": "סחוס הקריקואיד הוא הסחוס היחיד שהוא טבעת שלמה, והוא משמש כנקודת ציון לקריקותירואידוטומיה."
    },
    {
        "category": "אנטומיה",
        "level": "advanced",
        "question": "באיזה גובה נמצא החלק הצר ביותר של דרכי האוויר בילדים?",
        "answers": [
            {"text": "מתחת לסחוס הקריקואיד", "correct": True},
            {"text": "במיתרי הקול", "correct": False},
            {"text": "בגרון", "correct": False},
            {"text": "בקנה העליון", "correct": False}
        ],
        "explanation": "בילדים, החלק הצר ביותר נמצא מתחת לסחוס הקריקואיד, ולא במיתרי הקול כמו במבוגרים."
    },
    {
        "category": "אנטומיה",
        "level": "basic",
        "question": "מהו שם השריר העיקרי של הנשימה?",
        "answers": [
            {"text": "הסרעפת (Diaphragm)", "correct": True},
            {"text": "שרירים בין צלעיים", "correct": False},
            {"text": "שרירי הבטן", "correct": False},
            {"text": "שרירי הצוואר", "correct": False}
        ],
        "explanation": "הסרעפת היא השריר העיקרי של הנשימה, היא מפרידה בין חלל החזה לחלל הבטן."
    },
    {
        "category": "אנטומיה",
        "level": "intermediate",
        "question": "איזה עצב מעצבב את הסרעפת?",
        "answers": [
            {"text": "עצב הפרניק (Phrenic Nerve)", "correct": True},
            {"text": "עצב הוואגוס (Vagus)", "correct": False},
            {"text": "עצב האקססורי", "correct": False},
            {"text": "עצבי החזה", "correct": False}
        ],
        "explanation": "עצב הפרניק (C3-C5) מעצבב את הסרעפת. פגיעה בו עלולה לגרום לשיתוק הסרעפת."
    },
    {
        "category": "אנטומיה",
        "level": "basic",
        "question": "מהו הפלאורה (Pleura)?",
        "answers": [
            {"text": "הממברנה המקיפה את הריאות", "correct": True},
            {"text": "השריר המפריד בין החזה לבטן", "correct": False},
            {"text": "הרקמה המרפדת את הלב", "correct": False},
            {"text": "הסחוס המחבר את הצלעות", "correct": False}
        ],
        "explanation": "הפלאורה היא ממברנה דו-שכבתית המקיפה את הריאות ומצפה את דופן החזה מבפנים."
    },
    {
        "category": "אנטומיה",
        "level": "intermediate",
        "question": "מהו הפריקרד (Pericardium)?",
        "answers": [
            {"text": "שק סיבי המקיף את הלב", "correct": True},
            {"text": "שכבת השריר של הלב", "correct": False},
            {"text": "המסתם בין העליה לחדר", "correct": False},
            {"text": "הרקמה המוליכה בלב", "correct": False}
        ],
        "explanation": "הפריקרד הוא שק סיבי המקיף את הלב ומכיל כמות קטנה של נוזל לשימון."
    }
]

# Add to master list
all_questions.extend(anatomy_questions[:60])

# Continue with more questions...
print(f"Generated {len(all_questions)} questions so far...")
print("This is a template - need to generate 600 total questions")
print("Will continue generating questions for all 10 categories...")

# Save what we have so far
output = {
    "metadata": {
        "total_questions": len(all_questions),
        "target": 600,
        "source": "kp8_second_edition.pdf",
        "created": "2025-11-17",
        "status": "in_progress"
    },
    "questions": all_questions
}

with open('/Users/ziv/paramedic/trivia/scripts/additional_600_questions.json', 'w', encoding='utf-8') as f:
    json.dump(output, f, ensure_ascii=False, indent=2)

print(f"Saved {len(all_questions)} questions to file")
