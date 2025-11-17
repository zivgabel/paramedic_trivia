#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Generate 600 additional paramedic questions from KP8 text.
This script extracts definitions, protocols, values, and procedures
and converts them into multiple-choice questions.
"""

import json
import re
from typing import List, Dict, Tuple
import random

def read_kp8_text(filepath: str) -> str:
    """Read the KP8 full text file."""
    with open(filepath, 'r', encoding='utf-8') as f:
        return f.read()

def extract_definitions(text: str) -> List[Dict]:
    """Extract medical definitions and terms."""
    questions = []

    # Pattern 1: "X הוא/היא/זוהי Y"
    definition_patterns = [
        r'([א-ת\s]{3,30})\s+(?:הוא|היא|זוהי|זהו|נקרא|נקראת|משמעות|פירוש)\s+([א-ת\s\-\,\.]{10,150})',
        r'([א-ת\s]{3,30})\s*[–\-]\s*([א-ת\s]{10,100})',
    ]

    for pattern in definition_patterns:
        matches = re.findall(pattern, text)
        for match in matches[:100]:  # Limit to avoid too many
            term = match[0].strip()
            definition = match[1].strip()
            if len(term) > 2 and len(definition) > 8:
                questions.append({
                    'term': term,
                    'definition': definition,
                    'type': 'definition'
                })

    return questions

def extract_numeric_values(text: str) -> List[Dict]:
    """Extract numeric clinical values (ranges, dosages, etc.)."""
    questions = []

    # Pattern: "ערך נורמלי/טווח של X הוא Y"
    numeric_patterns = [
        r'(?:ערך נורמלי|טווח נורמלי|ערכים נורמליים)\s+(?:של\s+)?([א-ת\s]{3,30})\s+(?:הוא|היא|הם|הן)\s+([0-9\-\.\s\/]+)',
        r'([א-ת\s]{3,30})\s+(?:נע בין|בטווח של|בערך)\s+([0-9\-\.\s\/]+)',
    ]

    for pattern in numeric_patterns:
        matches = re.findall(pattern, text)
        for match in matches[:50]:
            parameter = match[0].strip()
            value = match[1].strip()
            if len(parameter) > 2:
                questions.append({
                    'parameter': parameter,
                    'value': value,
                    'type': 'numeric'
                })

    return questions

def extract_drug_info(text: str) -> List[Dict]:
    """Extract drug names, dosages, and indications."""
    questions = []

    # Look for drug sections and dosage information
    drug_patterns = [
        r'([A-Z][a-z]+[a-z]*)\s*[–\-]\s*מינון\s*:?\s*([0-9\.\s]+(?:mg|mcg|ml|units))',
        r'תרופה\s*:?\s*([A-Z][a-z]+)\s+(?:מינון|משמש ל|אינדיקציה)\s*:?\s*([א-ת\s]{5,80})',
    ]

    for pattern in drug_patterns:
        matches = re.findall(pattern, text)
        for match in matches[:80]:
            questions.append({
                'drug': match[0].strip(),
                'info': match[1].strip(),
                'type': 'drug'
            })

    return questions

def create_question_from_definition(data: Dict, category: str) -> Dict:
    """Convert a definition into a multiple-choice question."""
    term = data['term']
    correct_def = data['definition']

    # Create the question
    question_templates = [
        f"מהו {term}?",
        f"כיצד מוגדר {term}?",
        f"מה המשמעות של {term}?",
    ]

    question_text = random.choice(question_templates)

    # Create distractors (wrong answers)
    # These should be plausible but incorrect
    distractors = generate_distractors(correct_def, 3)

    answers = [
        {"text": correct_def, "correct": True}
    ]
    for distractor in distractors:
        answers.append({"text": distractor, "correct": False})

    random.shuffle(answers)

    return {
        "category": category,
        "level": "basic",
        "question": question_text,
        "answers": answers,
        "explanation": f"{term} הוא {correct_def}"
    }

def generate_distractors(correct_answer: str, count: int = 3) -> List[str]:
    """Generate plausible but incorrect answers."""
    # This is a simplified version - in production you'd want more sophisticated logic
    distractors = []

    # Strategy 1: Modify numbers if present
    numbers = re.findall(r'\d+', correct_answer)
    if numbers:
        for num in numbers[:count]:
            modified = correct_answer.replace(num, str(int(num) + random.randint(1, 5)))
            distractors.append(modified)

    # Strategy 2: Swap key medical terms
    medical_swaps = {
        'חיובי': 'שלילי',
        'עליה': 'ירידה',
        'מהיר': 'איטי',
        'גבוה': 'נמוך',
        'חמצן': 'פחמן דו חמצני',
        'סיסטולי': 'דיאסטולי',
        'עלייה': 'חדר',
        'ימני': 'שמאלי',
    }

    for original, replacement in medical_swaps.items():
        if original in correct_answer and len(distractors) < count:
            distractors.append(correct_answer.replace(original, replacement))

    # Strategy 3: Generic medical distractors
    generic_distractors = [
        "תופעה פיזיולוגית נורמלית ללא חשיבות קלינית",
        "מצב פתולוגי הדורש טיפול מיידי",
        "סימפטום שכיח אך לא אבחנתי",
        "ממצא קליני נדיר ללא משמעות",
    ]

    while len(distractors) < count:
        distractors.append(random.choice(generic_distractors))

    return distractors[:count]

def generate_questions_by_category(text: str, categories: List[str], total: int = 600) -> List[Dict]:
    """Generate questions distributed across categories."""
    all_questions = []
    questions_per_category = total // len(categories)

    # Extract raw data
    definitions = extract_definitions(text)
    numeric_values = extract_numeric_values(text)
    drugs = extract_drug_info(text)

    print(f"Extracted {len(definitions)} definitions")
    print(f"Extracted {len(numeric_values)} numeric values")
    print(f"Extracted {len(drugs)} drug info")

    # Map data types to categories
    category_mapping = {
        'אנטומיה': {'types': ['definition'], 'keywords': ['עצם', 'שריר', 'איבר', 'מבנה', 'אנטומי']},
        'פיזיולוגיה': {'types': ['definition', 'numeric'], 'keywords': ['תפקוד', 'תהליך', 'פיזיולוגי', 'מנגנון']},
        'פרמקולוגיה': {'types': ['drug'], 'keywords': ['תרופה', 'מינון', 'אינדיקציה']},
        'קרדיולוגיה': {'types': ['definition', 'numeric'], 'keywords': ['לב', 'קרדיו', 'אק"ג', 'קצב']},
        'מערכת נשימתית': {'types': ['definition', 'numeric'], 'keywords': ['ריאה', 'נשימה', 'חמצן']},
        'נתיב אוויר': {'types': ['definition'], 'keywords': ['אינטובציה', 'קנה', 'אוויר']},
        'פרוטוקולים': {'types': ['definition', 'drug'], 'keywords': ['פרוטוקול', 'טיפול', 'נוהל']},
        'אלקטרוליטים': {'types': ['numeric'], 'keywords': ['אלקטרוליט', 'נתרן', 'אשלגן', 'סידן']},
        'מערכת קרדיווסקולרית': {'types': ['definition', 'numeric'], 'keywords': ['דם', 'כלי דם', 'לחץ דם']},
        'מערכות נוספות': {'types': ['definition'], 'keywords': ['מערכת', 'עצבים', 'הורמונים']},
    }

    # Generate questions for each category
    for category in categories:
        category_questions = []
        mapping = category_mapping.get(category, {'types': ['definition'], 'keywords': []})

        # Use definitions for this category
        relevant_defs = [d for d in definitions if any(kw in d['term'].lower() or kw in d['definition'].lower()
                                                       for kw in mapping['keywords'])]

        for def_data in relevant_defs[:questions_per_category]:
            try:
                q = create_question_from_definition(def_data, category)
                category_questions.append(q)
            except Exception as e:
                print(f"Error creating question: {e}")
                continue

        all_questions.extend(category_questions)

    return all_questions

def main():
    """Main function to generate 600 questions."""
    print("Starting question generation...")

    # Read the text
    text = read_kp8_text('/tmp/kp8_full_text.txt')
    print(f"Loaded text: {len(text)} characters")

    # Define categories (same as existing questions)
    categories = [
        'אנטומיה', 'פיזיולוגיה', 'פרמקולוגיה', 'קרדיולוגיה',
        'מערכת נשימתית', 'נתיב אוויר', 'פרוטוקולים', 'אלקטרוליטים',
        'מערכת קרדיווסקולרית', 'מערכות נוספות'
    ]

    # Generate questions
    questions = generate_questions_by_category(text, categories, total=600)

    print(f"\nGenerated {len(questions)} questions")

    # Create output structure
    output = {
        "metadata": {
            "total_questions": len(questions),
            "source": "kp8_second_edition.pdf",
            "created": "2025-11-17",
            "extraction_method": "automated_pattern_extraction",
            "status": "pending"
        },
        "questions": questions
    }

    # Save to file
    output_file = '/Users/ziv/paramedic/trivia/scripts/additional_600_questions.json'
    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump(output, f, ensure_ascii=False, indent=2)

    print(f"\nSaved questions to {output_file}")

    # Print summary
    print("\nQuestions by category:")
    category_counts = {}
    for q in questions:
        cat = q['category']
        category_counts[cat] = category_counts.get(cat, 0) + 1

    for cat, count in sorted(category_counts.items()):
        print(f"  {cat}: {count}")

if __name__ == '__main__':
    main()
