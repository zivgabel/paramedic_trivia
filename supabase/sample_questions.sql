-- =====================================================
-- Trivia Paramedic - Sample Questions
-- =====================================================
-- Generated: 2025-11-17 01:40
-- Total Questions: 101
-- Total Categories: 10
--
-- IMPORTANT: Before running:
-- 1. Run schema.sql first
-- 2. Replace 'YOUR_ADMIN_USER_ID' with actual UUID
-- =====================================================

-- =====================================================
-- 1. INSERT CATEGORIES
-- =====================================================

INSERT INTO public.categories (id, name, description, icon) VALUES
  (gen_random_uuid(), 'אנטומיה', '8 שאלות מקצועיות מקורס פארמדיקים', '🦴'),
  (gen_random_uuid(), 'פיזיולוגיה', '9 שאלות מקצועיות מקורס פארמדיקים', '❤️'),
  (gen_random_uuid(), 'מערכת נשימתית', '12 שאלות מקצועיות מקורס פארמדיקים', '🫁'),
  (gen_random_uuid(), 'מערכת קרדיווסקולרית', '15 שאלות מקצועיות מקורס פארמדיקים', '💓'),
  (gen_random_uuid(), 'נתיב אוויר', '10 שאלות מקצועיות מקורס פארמדיקים', '🌬️'),
  (gen_random_uuid(), 'פרמקולוגיה', '12 שאלות מקצועיות מקורס פארמדיקים', '💊'),
  (gen_random_uuid(), 'קרדיולוגיה', '15 שאלות מקצועיות מקורס פארמדיקים', '📈'),
  (gen_random_uuid(), 'פרוטוקולים', '10 שאלות מקצועיות מקורס פארמדיקים', '📋'),
  (gen_random_uuid(), 'אלקטרוליטים', '5 שאלות מקצועיות מקורס פארמדיקים', '⚗️'),
  (gen_random_uuid(), 'מערכות נוספות', '5 שאלות מקצועיות מקורס פארמדיקים', '🏥')
ON CONFLICT (name) DO UPDATE SET
  description = EXCLUDED.description,
  icon = EXCLUDED.icon;

-- =====================================================
-- 2. INSERT QUESTIONS AND ANSWERS
-- =====================================================

DO $$
DECLARE
  cat_אנטומיה_id UUID;
  cat_פיזיולוגיה_id UUID;
  cat_מערכת_נשימתית_id UUID;
  cat_מערכת_קרדיווסקולרית_id UUID;
  cat_נתיב_אוויר_id UUID;
  cat_פרמקולוגיה_id UUID;
  cat_קרדיולוגיה_id UUID;
  cat_פרוטוקולים_id UUID;
  cat_אלקטרוליטים_id UUID;
  cat_מערכות_נוספות_id UUID;
  question_id UUID;
BEGIN

  -- Get category IDs
  SELECT id INTO cat_אנטומיה_id FROM public.categories WHERE name = 'אנטומיה';
  SELECT id INTO cat_פיזיולוגיה_id FROM public.categories WHERE name = 'פיזיולוגיה';
  SELECT id INTO cat_מערכת_נשימתית_id FROM public.categories WHERE name = 'מערכת נשימתית';
  SELECT id INTO cat_מערכת_קרדיווסקולרית_id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית';
  SELECT id INTO cat_נתיב_אוויר_id FROM public.categories WHERE name = 'נתיב אוויר';
  SELECT id INTO cat_פרמקולוגיה_id FROM public.categories WHERE name = 'פרמקולוגיה';
  SELECT id INTO cat_קרדיולוגיה_id FROM public.categories WHERE name = 'קרדיולוגיה';
  SELECT id INTO cat_פרוטוקולים_id FROM public.categories WHERE name = 'פרוטוקולים';
  SELECT id INTO cat_אלקטרוליטים_id FROM public.categories WHERE name = 'אלקטרוליטים';
  SELECT id INTO cat_מערכות_נוספות_id FROM public.categories WHERE name = 'מערכות נוספות';

  -- ==================
  -- שאלות בסיסיות
  -- ==================

  -- מהו תפקיד המסתם האורטלי בלב?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו תפקיד המסתם האורטלי בלב?',
    cat_אנטומיה_id,
    'approved',
    'המסתם האורטלי נמצא בין החדר השמאלי לאאורטה ומונע זרימה חוזרת של דם בזמן הדיאסטולה.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'מונע זרימה חוזרת של דם מהאאורטה לחדר שמאל', true, 1),
    (question_id, 'מונע זרימה חוזרת של דם מהעליה השמאלית לחדר שמאל', false, 2),
    (question_id, 'מפריד בין החדר הימני לחדר השמאלי', false, 3),
    (question_id, 'מאפשר זרימת דם מהעליה לאאורטה', false, 4);

  -- איזה איבר נמצא ב-Mediastinum?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'איזה איבר נמצא ב-Mediastinum?',
    cat_אנטומיה_id,
    'approved',
    'המדיאסטינום הוא החלל בחזה שבין שתי הריאות ובו נמצאים הלב, הקנה והוושט.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'הלב', true, 1),
    (question_id, 'הכליות', false, 2),
    (question_id, 'הכבד', false, 3),
    (question_id, 'הטחול', false, 4);

  -- איזה עצב מעצבב את הלב כחלק מהמערכת הפרא-סימפתטית?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'איזה עצב מעצבב את הלב כחלק מהמערכת הפרא-סימפתטית?',
    cat_אנטומיה_id,
    'approved',
    'עצב הוואגוס הוא חלק מהמערכת הפרא-סימפתטית ומאט את קצב הלב.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'עצב הוואגוס (Vagus)', true, 1),
    (question_id, 'עצב הפריניק (Phrenic)', false, 2),
    (question_id, 'עצב הפמורל (Femoral)', false, 3),
    (question_id, 'עצב הרדיאלי (Radial)', false, 4);

  -- איזה איבר מפריש Epinephrine (אדרנלין)?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'איזה איבר מפריש Epinephrine (אדרנלין)?',
    cat_אנטומיה_id,
    'approved',
    'Epinephrine מופרש מה-Adrenal Medulla, החלק הפנימי של בלוטת יותרת הכליה.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'Adrenal Medulla (חלק הפנימי של בלוטת יותרת הכליה)', true, 1),
    (question_id, 'Adrenal Cortex (חלק החיצוני של בלוטת יותרת הכליה)', false, 2),
    (question_id, 'הלבלב', false, 3),
    (question_id, 'בלוטת התריס', false, 4);

  -- מהו Cardiac Output?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Cardiac Output?',
    cat_פיזיולוגיה_id,
    'approved',
    'Cardiac Output הוא כמות הדם שהלב שואב בדקה אחת, ומחושב כמכפלה של קצב הלב ב-Stroke Volume.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'כמות הדם שהלב מוציא בדקה', true, 1),
    (question_id, 'כמות הדם שהלב מכיל בכל רגע', false, 2),
    (question_id, 'לחץ הדם בעורקים', false, 3),
    (question_id, 'קצב פעימות הלב בדקה', false, 4);

  -- מהו Stroke Volume?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Stroke Volume?',
    cat_פיזיולוגיה_id,
    'approved',
    'Stroke Volume הוא כמות הדם שהחדרים מצליחים להוציא החוצה בסחיטה אחת, כלומר בפעימה אחת.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'כמות הדם שהחדרים מוציאים בפעימה אחת', true, 1),
    (question_id, 'כמות הדם הכוללת בגוף', false, 2),
    (question_id, 'קצב הלב בדקה', false, 3),
    (question_id, 'לחץ הדם הסיסטולי', false, 4);

  -- מהו תפקיד המערכת הסימפתטית על הלב?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו תפקיד המערכת הסימפתטית על הלב?',
    cat_פיזיולוגיה_id,
    'approved',
    'המערכת הסימפתטית מגבירה את קצב הלב (chronotropic) ואת כוח ההתכווצות (inotropic).',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'מגבירה את קצב הלב וכוח ההתכווצות', true, 1),
    (question_id, 'מאטה את קצב הלב', false, 2),
    (question_id, 'מפחיתה את כוח ההתכווצות', false, 3),
    (question_id, 'לא משפיעה על הלב', false, 4);

  -- איזה אלקטרוליט הוא העיקרי במרווח הבין-תאי?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'איזה אלקטרוליט הוא העיקרי במרווח הבין-תאי?',
    cat_פיזיולוגיה_id,
    'approved',
    'נתרן (Na+) הוא יון חיובי עיקרי במרווח הבין-תאי ואחראי על איזון נוזלים ופעילות חשמלית.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'נתרן (Sodium)', true, 1),
    (question_id, 'אשלגן (Potassium)', false, 2),
    (question_id, 'סידן (Calcium)', false, 3),
    (question_id, 'מגנזיום (Magnesium)', false, 4);

  -- מהו תפקיד מערכת הנשימה?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו תפקיד מערכת הנשימה?',
    cat_מערכת_נשימתית_id,
    'approved',
    'מערכת הנשימה (Respiratory System) אחראית על תהליך הנשימה, חילוף גזים, ואיזון חומצה-בסיס.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'אחראית על תהליך הנשימה וחילוף גזים', true, 1),
    (question_id, 'שאיבת דם לכל הגוף', false, 2),
    (question_id, 'סינון פסולת מהדם', false, 3),
    (question_id, 'ייצור תאי דם אדומים', false, 4);

  -- איפה מתרחש חילוף הגזים בריאות?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'איפה מתרחש חילוף הגזים בריאות?',
    cat_מערכת_נשימתית_id,
    'approved',
    'חילוף הגזים מתרחש בנאדיות הריאה (Alveoli) שם מתבצע מעבר של חמצן ל-CO2.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'בנאדיות (Alveoli)', true, 1),
    (question_id, 'בסימפונות', false, 2),
    (question_id, 'בקנה (Trachea)', false, 3),
    (question_id, 'בגרון (Larynx)', false, 4);

  -- איזה מרכז נשימה יושב ב-Pons?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'איזה מרכז נשימה יושב ב-Pons?',
    cat_מערכת_נשימתית_id,
    'approved',
    'מרכז נשימה נוסף יושב ב-Pons ונקרא Pontine Respiratory Group, פועל כשיש צורך בהעמקת הנשימה.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'Pontine Respiratory Group', true, 1),
    (question_id, 'Ventral Respiratory Group', false, 2),
    (question_id, 'Dorsal Respiratory Group', false, 3),
    (question_id, 'Medullary Respiratory Center', false, 4);

  -- מהו Pneumothorax?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Pneumothorax?',
    cat_מערכת_נשימתית_id,
    'approved',
    'Pneumothorax הוא חזה אוויר - מצב בו נכנס אוויר לחלל הפלאורלי בין דפנות בית החזה לריאה.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'חזה אוויר - אוויר בחלל הפלאורלי', true, 1),
    (question_id, 'דם בחלל הפלאורלי', false, 2),
    (question_id, 'נוזל בחלל הפלאורלי', false, 3),
    (question_id, 'דלקת בריאות', false, 4);

  -- מהו תפקיד המערכת הקרדיווסקולרית?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו תפקיד המערכת הקרדיווסקולרית?',
    cat_מערכת_קרדיווסקולרית_id,
    'approved',
    'המערכת הקרדיווסקולרית (Cardiovascular System) אחראית על תפקוד הלב וכלי הדם, שאיבת דם וזילוח רקמות.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'אחראית על תפקוד הלב וכלי הדם', true, 1),
    (question_id, 'סינון פסולת מהגוף', false, 2),
    (question_id, 'ייצור הורמונים', false, 3),
    (question_id, 'עיכול מזון', false, 4);

  -- מהו IHD (Ischemic Heart Disease)?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו IHD (Ischemic Heart Disease)?',
    cat_מערכת_קרדיווסקולרית_id,
    'approved',
    'IHD (Ischemic Heart Disease) היא מחלת לב איסכמית הנגרמת מחסימה בעורקים הכליליים.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'מחלת לב איסכמית - חסימה בעורקים הכליליים', true, 1),
    (question_id, 'דלקת שריר הלב', false, 2),
    (question_id, 'הפרעת קצב', false, 3),
    (question_id, 'מום במסתמי הלב', false, 4);

  -- מהו Normal Heart Axis?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Normal Heart Axis?',
    cat_מערכת_קרדיווסקולרית_id,
    'approved',
    'Normal Heart Axis הוא ציר הלב התקין המופיע ב-ECG, המייצג את הכיוון הכללי של הפעילות החשמלית.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'ציר הלב התקין ב-ECG', true, 1),
    (question_id, 'קצב הלב התקין', false, 2),
    (question_id, 'כיוון זרימת הדם בלב', false, 3),
    (question_id, 'מיקום הלב בחזה', false, 4);

  -- מהו Hypovolemic Shock?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Hypovolemic Shock?',
    cat_מערכת_קרדיווסקולרית_id,
    'approved',
    'Hypovolemic Shock הוא הלם היפו-וולמי, הנגרם מאובדן משמעותי של נפח הדם או נוזלים.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'הלם על רקע אובדן נפח דם', true, 1),
    (question_id, 'הלם על רקע אי ספיקת לב', false, 2),
    (question_id, 'הלם על רקע זיהום', false, 3),
    (question_id, 'הלם על רקע אלרגי', false, 4);

  -- מהו תפקיד נתיב האוויר?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו תפקיד נתיב האוויר?',
    cat_נתיב_אוויר_id,
    'approved',
    'נתיב האוויר אחראי על העברת אוויר לריאות, הגנה מפני גופים זרים, ואיזון חומצה-בסיס.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'העברת אוויר לריאות, הגנה, ואיזון חומצה-בסיס', true, 1),
    (question_id, 'שאיבת דם', false, 2),
    (question_id, 'סינון פסולת', false, 3),
    (question_id, 'ייצור הורמונים', false, 4);

  -- מהי אינטובציה?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהי אינטובציה?',
    cat_נתיב_אוויר_id,
    'approved',
    'אינטובציה (Endotracheal Intubation) היא החדרת צינור דרך הגרון והקנה לריאות כדי לאבטח נתיב אוויר.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'Endotracheal Intubation - החדרת צינור דרך הקנה לריאות', true, 1),
    (question_id, 'החדרת צינור דרך האף', false, 2),
    (question_id, 'מתן חמצן באמצעות מסכה', false, 3),
    (question_id, 'הנשמה באמבו', false, 4);

  -- מהי Difficult Airway?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהי Difficult Airway?',
    cat_נתיב_אוויר_id,
    'approved',
    'Difficult Airway הוא מצב בו ההנהלה והאבטחה של נתיב האוויר מהווים אתגר טכני משמעותי.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'נתיב אוויר קשה להנהלה ולאינטובציה', true, 1),
    (question_id, 'חולה שסירב לטיפול', false, 2),
    (question_id, 'נתיב אוויר תקין', false, 3),
    (question_id, 'חולה עם אלרגיה', false, 4);

  -- מהו Epinephrine (אדרנלין)?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Epinephrine (אדרנלין)?',
    cat_פרמקולוגיה_id,
    'approved',
    'Epinephrine הוא הורמון של המערכת הסימפתטית המופרש מה-Adrenal Medulla, משמש בהחייאה ובאנאפילקסיס.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'הורמון של המערכת הסימפתטית המופרש מ-Adrenal Medulla', true, 1),
    (question_id, 'אנטיביוטיקה', false, 2),
    (question_id, 'משכך כאבים', false, 3),
    (question_id, 'תרופה להורדת לחץ דם', false, 4);

  -- מהו Aspirin?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Aspirin?',
    cat_פרמקולוגיה_id,
    'approved',
    'Aspirin הוא תרופה נוגדת טסיות (antiplatelet) המשמשת בטיפול ב-ACS למניעת הרחבת הקריש.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'תרופה נוגדת טסיות המשמשת ב-ACS', true, 1),
    (question_id, 'אנטיביוטיקה', false, 2),
    (question_id, 'תרופה להרדמה', false, 3),
    (question_id, 'תרופה נוגדת כאב בלבד', false, 4);

  -- מהו Glucose?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Glucose?',
    cat_פרמקולוגיה_id,
    'approved',
    'Glucose הוא סוכר פשוט המשמש לטיפול בהיפוגליקמיה (סוכר נמוך), ניתן IV במינון 25g.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'סוכר פשוט לטיפול בהיפוגליקמיה', true, 1),
    (question_id, 'תרופה להורדת סוכר', false, 2),
    (question_id, 'אנטיביוטיקה', false, 3),
    (question_id, 'משכך כאבים', false, 4);

  -- מהו Oxygen?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Oxygen?',
    cat_פרמקולוגיה_id,
    'approved',
    'חמצן (Oxygen) הוא גז חיוני לחיים המשמש לטיפול בהיפוקסיה והעלאת רמת החמצן בדם.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'גז חיוני לטיפול בהיפוקסיה', true, 1),
    (question_id, 'תרופה להרדמה', false, 2),
    (question_id, 'אנטיביוטיקה', false, 3),
    (question_id, 'משכך כאבים', false, 4);

  -- מהו ECG?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו ECG?',
    cat_קרדיולוגיה_id,
    'approved',
    'ECG (Electrocardiogram) קורא את המעבר החשמלי של הלב ומפענח בצורה גרפית את הפעילות החשמלית.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'אלקטרוקרדיוגרם - בדיקה הקוראת את הפעילות החשמלית של הלב', true, 1),
    (question_id, 'בדיקת דם', false, 2),
    (question_id, 'צילום רנטגן של הלב', false, 3),
    (question_id, 'בדיקת קולות לב', false, 4);

  -- כמה לידים (leads) יש ב-ECG סטנדרטי?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'כמה לידים (leads) יש ב-ECG סטנדרטי?',
    cat_קרדיולוגיה_id,
    'approved',
    'ECG סטנדרטי כולל 12 לידים המסתכלים על הלב מזוויות שונות.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, '12 לידים', true, 1),
    (question_id, '6 לידים', false, 2),
    (question_id, '8 לידים', false, 3),
    (question_id, '15 לידים', false, 4);

  -- מהי Sinus Tachycardia?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהי Sinus Tachycardia?',
    cat_קרדיולוגיה_id,
    'approved',
    'Sinus Tachycardia היא קצב סינוסי תקין אבל מהיר (מעל 100 פעימות לדקה).',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'קצב סינוסי מעל 100 פעימות לדקה', true, 1),
    (question_id, 'קצב סינוסי מתחת ל-60 פעימות לדקה', false, 2),
    (question_id, 'הפרעת קצב לא סינוסית', false, 3),
    (question_id, 'פרפור עליות', false, 4);

  -- מהי Sinus Bradycardia?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהי Sinus Bradycardia?',
    cat_קרדיולוגיה_id,
    'approved',
    'Sinus Bradycardia היא קצב סינוסי איטי (מתחת ל-60 פעימות לדקה).',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'קצב סינוסי מתחת ל-60 פעימות לדקה', true, 1),
    (question_id, 'קצב סינוסי מעל 100 פעימות לדקה', false, 2),
    (question_id, 'הפרעת קצב חדרית', false, 3),
    (question_id, 'פרפור עליות', false, 4);

  -- מהו Defibrillation?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Defibrillation?',
    cat_קרדיולוגיה_id,
    'approved',
    'Defibrillation היא דפיברילציה - מתן שוק חשמלי כטיפול בדום לב מסוג VF/VT.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'דפיברילציה - מתן שוק חשמלי לטיפול ב-VF/VT', true, 1),
    (question_id, 'הנשמה מלאכותית', false, 2),
    (question_id, 'עיסוי לב', false, 3),
    (question_id, 'מתן תרופות', false, 4);

  -- מהו פרוטוקול ACS?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו פרוטוקול ACS?',
    cat_פרוטוקולים_id,
    'approved',
    'פרוטוקול ACS מיועד לטיפול בתסמונת כלילית חריפה (Acute Coronary Syndrome) הכוללת STEMI ו-NSTEMI.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'פרוטוקול לטיפול בתסמונת כלילית חריפה', true, 1),
    (question_id, 'פרוטוקול לטיפול באסטמה', false, 2),
    (question_id, 'פרוטוקול לטיפול בדום לב', false, 3),
    (question_id, 'פרוטוקול לטיפול בשבץ', false, 4);

  -- מהו פרוטוקול דום לב VF/VT?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו פרוטוקול דום לב VF/VT?',
    cat_פרוטוקולים_id,
    'approved',
    'פרוטוקול זה מתמקד בטיפול בדום לב מסוג VF (פרפור חדרים) או VT (טכיקרדיה חדרית ללא דופק).',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'פרוטוקול לטיפול בדום לב עם קצבים הניתנים לדפיברילציה', true, 1),
    (question_id, 'פרוטוקול לטיפול באסיסטולה', false, 2),
    (question_id, 'פרוטוקול לטיפול בברדיקרדיה', false, 3),
    (question_id, 'פרוטוקול לטיפול בהלם', false, 4);

  -- מהו פרוטוקול אנאפילקסיס?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו פרוטוקול אנאפילקסיס?',
    cat_פרוטוקולים_id,
    'approved',
    'פרוטוקול אנאפילקסיס מיועד לטיפול בתגובה אלרגית חמורה ומסכנת חיים.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'פרוטוקול לטיפול בתגובה אלרגית חמורה', true, 1),
    (question_id, 'פרוטוקול לטיפול בהלם היפו-וולמי', false, 2),
    (question_id, 'פרוטוקול לטיפול באסטמה', false, 3),
    (question_id, 'פרוטוקול לטיפול בשבץ', false, 4);

  -- מהו פרוטוקול אסטמה?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו פרוטוקול אסטמה?',
    cat_פרוטוקולים_id,
    'approved',
    'פרוטוקול אסטמה כולל מתן מרחיבי סימפונות (ונטולין, אטרוונט), סטרואידים ובמקרה קשה CPAP.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'פרוטוקול לטיפול בהתקף אסטמה עם מרחיבי סימפונות', true, 1),
    (question_id, 'פרוטוקול לטיפול בדלקת ריאות', false, 2),
    (question_id, 'פרוטוקול לטיפול בבצקת ריאות', false, 3),
    (question_id, 'פרוטוקול לטיפול בפרכוסים', false, 4);

  -- מהו תפקיד האלקטרוליטים בגוף?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו תפקיד האלקטרוליטים בגוף?',
    cat_אלקטרוליטים_id,
    'approved',
    'אלקטרוליטים (Electrolytes) הם מרכיבים אנ-אורגניים האחראיים על הפעילות הכימית והחשמלית בתאים.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'אחראיים על הפעילות הכימית והחשמלית בתאים', true, 1),
    (question_id, 'אחראיים רק על איזון נוזלים', false, 2),
    (question_id, 'אחראיים רק על הולכה עצבית', false, 3),
    (question_id, 'אחראיים רק על התכווצות שרירים', false, 4);

  -- מהם האלקטרוליטים העיקריים בגוף?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהם האלקטרוליטים העיקריים בגוף?',
    cat_אלקטרוליטים_id,
    'approved',
    'האלקטרוליטים העיקריים הם: K+, Mg2+, PO43-, Na+, Ca2+, Cl-.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'Potassium, Magnesium, Phosphate, Sodium, Calcium, Chloride', true, 1),
    (question_id, 'רק נתרן ואשלגן', false, 2),
    (question_id, 'רק סידן ומגנזיום', false, 3),
    (question_id, 'רק כלוריד ופוספט', false, 4);

  -- מהו Diabetes Mellitus?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Diabetes Mellitus?',
    cat_מערכות_נוספות_id,
    'approved',
    'Diabetes Mellitus (סוכרת) היא מחלה בה הגוף אינו מייצר מספיק אינסולין או לא משתמש בו כראוי.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'סוכרת - מחלה של הפרעה בייצור או שימוש באינסולין', true, 1),
    (question_id, 'מחלת כליות', false, 2),
    (question_id, 'מחלת לב', false, 3),
    (question_id, 'מחלת ריאות', false, 4);

  -- מהו Stroke (שבץ)?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Stroke (שבץ)?',
    cat_מערכות_נוספות_id,
    'approved',
    'Stroke הוא הפרעה נוירולוגית חריפה הנגרמת מהפסקה באספקת הדם למוח (איסכמי או דימומי).',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'הפרעה נוירולוגית חריפה עקב הפסקת אספקת הדם למוח', true, 1),
    (question_id, 'דום לב', false, 2),
    (question_id, 'התקף פרכוסים', false, 3),
    (question_id, 'התעלפות', false, 4);

  -- ==================
  -- שאלות בינוניות
  -- ==================

  -- מהו הסדר הנכון של זרימת הדם בלב?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו הסדר הנכון של זרימת הדם בלב?',
    cat_אנטומיה_id,
    'approved',
    'הדם מגיע מהגוף לעליה הימנית, עובר לחדר הימני, משם לריאות להחמצן, חוזר לעליה השמאלית, לחדר השמאלי ומשם לאאורטה.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'עליה ימנית → חדר ימני → ריאות → עליה שמאלית → חדר שמאלי → אאורטה', true, 1),
    (question_id, 'חדר ימני → עליה ימנית → ריאות → חדר שמאלי → עליה שמאלית → אאורטה', false, 2),
    (question_id, 'עליה ימנית → ריאות → חדר ימני → עליה שמאלית → חדר שמאלי → אאורטה', false, 3),
    (question_id, 'עליה שמאלית → חדר שמאלי → ריאות → עליה ימנית → חדר ימני → אאורטה', false, 4);

  -- מהו Cardiac Plexus?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Cardiac Plexus?',
    cat_אנטומיה_id,
    'approved',
    'ה-Cardiac Plexus הוא צבר עצבים השייך למערכת הסימפתטית ומעצבב את הלב, משפיע על קצב הלב וכוח ההתכווצות.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'צבר עצבים סימפתטי שמעצבב את הלב', true, 1),
    (question_id, 'מסתם בין החדר לעליה', false, 2),
    (question_id, 'כלי דם המזין את שריר הלב', false, 3),
    (question_id, 'חלק ממערכת ההולכה החשמלית בלב', false, 4);

  -- מהו האפיגלוטיס (Epiglottis)?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו האפיגלוטיס (Epiglottis)?',
    cat_אנטומיה_id,
    'approved',
    'האפיגלוטיס הוא סחוס בצורת מכסה שסוגר את הקנה בזמן בליעה כדי למנוע אספירציה.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'סחוס המכסה את הקנה בזמן בליעה', true, 1),
    (question_id, 'פתח הקנה', false, 2),
    (question_id, 'מיתרי הקול', false, 3),
    (question_id, 'הסימפון הראשי', false, 4);

  -- מהו Preload?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Preload?',
    cat_פיזיולוגיה_id,
    'approved',
    'Preload הוא הלחץ שנוצר על דפנות החדר בסוף הדיאסטולה, ולפי חוק סטרלינג הוא הגורם המכריע ב-Stroke Volume.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'הלחץ על דפנות החדר בסוף הדיאסטולה', true, 1),
    (question_id, 'הלחץ בעורקים בזמן הסיסטולה', false, 2),
    (question_id, 'כוח התכווצות שריר הלב', false, 3),
    (question_id, 'התנגודת בכלי הדם', false, 4);

  -- מהו Afterload?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Afterload?',
    cat_פיזיולוגיה_id,
    'approved',
    'Afterload הוא הלחץ שעל החדר להפעיל כדי לפתוח את המסתמים האורטלי/פולמונרי, והוא למעשה לחץ הדם.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'הלחץ שעל החדר להפעיל כדי לפתוח את המסתמים האורטלי/פולמונרי', true, 1),
    (question_id, 'הלחץ בעליות בזמן הדיאסטולה', false, 2),
    (question_id, 'כמות הדם הנותרת בחדר לאחר הסיסטולה', false, 3),
    (question_id, 'קצב פעימות הלב', false, 4);

  -- מהו ה-Cardiac Cycle?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו ה-Cardiac Cycle?',
    cat_פיזיולוגיה_id,
    'approved',
    'Cardiac Cycle הוא פעימה אחת שבה נראים דיאסטולה (מילוי) וסיסטולה (התכווצות) של החדרים.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'פעימה אחת הכוללת דיאסטולה וסיסטולה', true, 1),
    (question_id, 'זמן מילוי החדרים', false, 2),
    (question_id, 'זמן התכווצות החדרים', false, 3),
    (question_id, 'זמן חזרת הדם לעליות', false, 4);

  -- מהי Respiratory Acidosis?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהי Respiratory Acidosis?',
    cat_מערכת_נשימתית_id,
    'approved',
    'Respiratory Acidosis היא חמצת נשימתית שנגרמת מייצור מוגבר של CO2 או אי יכולת להפטר ממנו.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'חמצת נשימתית עקב ייצור מוגבר של CO2', true, 1),
    (question_id, 'בססת נשימתית עקב הורדת CO2', false, 2),
    (question_id, 'חמצת מטבולית עקב צבירת חומצות', false, 3),
    (question_id, 'בססת מטבולית עקב איבוד חומצות', false, 4);

  -- מהי Respiratory Alkalosis?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהי Respiratory Alkalosis?',
    cat_מערכת_נשימתית_id,
    'approved',
    'Respiratory Alkalosis נגרמת כאשר החולה מוריד את רמת ה-CO2 עקב היפרוונטילציה (נשימה מוגברת).',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'בססת נשימתית עקב הורדת רמת CO2 (היפרוונטילציה)', true, 1),
    (question_id, 'חמצת נשימתית עקב עלייה ב-CO2', false, 2),
    (question_id, 'בססת מטבולית עקב נטילת בסיסים', false, 3),
    (question_id, 'חמצת מטבולית עקב כשל כלייתי', false, 4);

  -- מהי ההגדרה של Acute Respiratory Failure?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהי ההגדרה של Acute Respiratory Failure?',
    cat_מערכת_נשימתית_id,
    'approved',
    'Acute Respiratory Failure היא אי ספיקה נשימתית חריפה המהווה אחד ממצבי החירום הנפוצים ביותר.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'אי ספיקה נשימתית חריפה שמהווה מצב חירום נפוץ', true, 1),
    (question_id, 'תחושת קוצר נשימה קל', false, 2),
    (question_id, 'ירידה קלה ברמת החמצן בדם', false, 3),
    (question_id, 'עייפות שרירי הנשימה', false, 4);

  -- מהו Hyperventilation Syndrome (HVS)?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Hyperventilation Syndrome (HVS)?',
    cat_מערכת_נשימתית_id,
    'approved',
    'HVS הוא תסמונת היפרוונטילציה שבה החולה נושם מהר מדי ומוריד CO2, גורם לבססת נשימתית.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'נשימה מוגברת שגורמת לבססת נשימתית', true, 1),
    (question_id, 'חמצת נשימתית עקב נשימה איטית', false, 2),
    (question_id, 'דלקת בסימפונות', false, 3),
    (question_id, 'חסימה בדרכי הנשימה', false, 4);

  -- מהו Respiratory Zone?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Respiratory Zone?',
    cat_מערכת_נשימתית_id,
    'approved',
    'Respiratory Zone הוא החלק הנשימתי שמשתתף בחילוף גזים, כולל את נאדיות הריאה.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'החלק הנשימתי שמשתתף בחילוף גזים - נאדיות הריאה', true, 1),
    (question_id, 'דרכי האוויר העליונות', false, 2),
    (question_id, 'הסימפונות הגדולות', false, 3),
    (question_id, 'הקנה והגרון', false, 4);

  -- מהו Heart Failure?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Heart Failure?',
    cat_מערכת_קרדיווסקולרית_id,
    'approved',
    'Heart Failure היא אי ספיקת לב, מצב בו הלב אינו מסוגל לשאוב מספיק דם לצרכי הגוף.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'אי ספיקת לב - הלב אינו מסוגל לשאוב מספיק דם', true, 1),
    (question_id, 'הפרעת קצב חולפת', false, 2),
    (question_id, 'דלקת בשריר הלב', false, 3),
    (question_id, 'חסימה בעורקים הכליליים', false, 4);

  -- מהו Cardiogenic Shock?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Cardiogenic Shock?',
    cat_מערכת_קרדיווסקולרית_id,
    'approved',
    'Cardiogenic Shock הוא מצב בו הלחץ דם כבר כל כך נמוך שכל מנגנוני הפיצוי קרסו, יש בצקת ריאות ולחץ נמוך.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'בצקת ריאות ולחץ דם נמוך - כל מנגנוני הפיצוי קרסו', true, 1),
    (question_id, 'הלם על רקע דימום', false, 2),
    (question_id, 'הלם על רקע זיהומי', false, 3),
    (question_id, 'הלם על רקע אלרגי', false, 4);

  -- מהו Cardiac Contusion?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Cardiac Contusion?',
    cat_מערכת_קרדיווסקולרית_id,
    'approved',
    'Cardiac Contusion היא חבלת לב - פגיעה טראומטית בשריר הלב, בדרך כלל עקב טראומה קהה לחזה.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'חבלת לב - פגיעה טראומטית בשריר הלב', true, 1),
    (question_id, 'דלקת שריר הלב', false, 2),
    (question_id, 'אוטם שריר הלב', false, 3),
    (question_id, 'קרע בשריר הלב', false, 4);

  -- מהו Heart Murmur?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Heart Murmur?',
    cat_מערכת_קרדיווסקולרית_id,
    'approved',
    'Heart Murmur (אוושה) הוא קול לא תקין הנשמע בהאזנה ללב, לרוב עקב זרימת דם סוערת דרך המסתמים.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'אוושה - קול לא תקין הנשמע בהאזנה ללב', true, 1),
    (question_id, 'הפרעת קצב', false, 2),
    (question_id, 'כאב בחזה', false, 3),
    (question_id, 'קוצר נשימה', false, 4);

  -- מהו Valvular Heart Disease?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Valvular Heart Disease?',
    cat_מערכת_קרדיווסקולרית_id,
    'approved',
    'Valvular Heart Disease היא מחלת מסתמי הלב, הכוללת היצרות (stenosis) או אי ספיקה (regurgitation) של המסתמים.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'מחלת מסתמי הלב - פגיעה במסתמים', true, 1),
    (question_id, 'חסימה בעורקים הכליליים', false, 2),
    (question_id, 'דלקת בשריר הלב', false, 3),
    (question_id, 'הפרעת קצב', false, 4);

  -- מהי Conjunctive Heart Failure?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהי Conjunctive Heart Failure?',
    cat_מערכת_קרדיווסקולרית_id,
    'approved',
    'Conjunctive Heart Failure (CHF) היא אי ספיקת לב גודשת, מצב בו הלב לא מצליח לשאוב דם ביעילות.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'אי ספיקת לב גודשת - CHF', true, 1),
    (question_id, 'דלקת בשריר הלב', false, 2),
    (question_id, 'הפרעת קצב', false, 3),
    (question_id, 'חסימה בעורקים', false, 4);

  -- כמה ניסיונות אינטובציה מותרים לפי הפרוטוקול?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'כמה ניסיונות אינטובציה מותרים לפי הפרוטוקול?',
    cat_נתיב_אוויר_id,
    'approved',
    'הפרוטוקול מגביל לעד 3 ניסיונות אינטובציה כאשר לפחות אחד מהם חייב להיות תוך שימוש ב-Bougie.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'עד 3 ניסיונות, לפחות אחד מהם עם Bougie', true, 1),
    (question_id, 'ניסיון אחד בלבד', false, 2),
    (question_id, 'ניסיונות בלתי מוגבלים', false, 3),
    (question_id, 'עד 5 ניסיונות', false, 4);

  -- מהו LMA (Laryngeal Mask Airway)?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו LMA (Laryngeal Mask Airway)?',
    cat_נתיב_אוויר_id,
    'approved',
    'LMA הוא מכשיר למאבטח נתיב אוויר שמוכנס דרך החך העליון ללא צורך בלרינגוסקופ.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'מכשיר למאבטח נתיב אוויר שמוכנס ללא לרינגוסקופ', true, 1),
    (question_id, 'צינור אינטובציה רגיל', false, 2),
    (question_id, 'מסכת חמצן', false, 3),
    (question_id, 'מכשיר סקשן', false, 4);

  -- מהו Jet Ventilation?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Jet Ventilation?',
    cat_נתיב_אוויר_id,
    'approved',
    'Jet Ventilation היא שיטת הנשמה חירום בלחץ גבוה המשמשת במצבי Difficult Airway.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'שיטת הנשמה חלופית בלחץ גבוה', true, 1),
    (question_id, 'הנשמה רגילה באמבו', false, 2),
    (question_id, 'מתן חמצן במסכה', false, 3),
    (question_id, 'הנשמה מכנית במנשם', false, 4);

  -- מהו CPAP (Continuous Positive Airway Pressure)?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו CPAP (Continuous Positive Airway Pressure)?',
    cat_נתיב_אוויר_id,
    'approved',
    'CPAP היא שיטה לאספקת תמיכה נשימתית לא פולשנית בלחץ חיובי רציף.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'תמיכה נשימתית לא פולשנית בלחץ חיובי רציף', true, 1),
    (question_id, 'אינטובציה', false, 2),
    (question_id, 'הנשמה מכנית פולשנית', false, 3),
    (question_id, 'מתן חמצן במסכה רגילה', false, 4);

  -- מהו Midazolam (דורמיקום)?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Midazolam (דורמיקום)?',
    cat_פרמקולוגיה_id,
    'approved',
    'Midazolam (דורמיקום) הוא בנזודיאזפין המשמש להרדמה, הרגעה ובקרת פרכוסים.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'בנזודיאזפין להרדמה והרגעה', true, 1),
    (question_id, 'אנטיביוטיקה', false, 2),
    (question_id, 'משכך כאבים אופיאטי', false, 3),
    (question_id, 'תרופה ללחץ דם', false, 4);

  -- מהו Amiodarone?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Amiodarone?',
    cat_פרמקולוגיה_id,
    'approved',
    'Amiodarone היא תרופה אנטי-אריתמית המשמשת בטיפול בהפרעות קצב חדריות ועלייתיות.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'תרופה אנטי-אריתמית לטיפול בהפרעות קצב', true, 1),
    (question_id, 'משכך כאבים', false, 2),
    (question_id, 'אנטיביוטיקה', false, 3),
    (question_id, 'תרופה להרדמה', false, 4);

  -- מהו Atropine?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Atropine?',
    cat_פרמקולוגיה_id,
    'approved',
    'Atropine הוא תרופה אנטי-כולינרגית החוסמת את המערכת הפרא-סימפתטית ומגבירה את קצב הלב.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'תרופה אנטי-כולינרגית להגברת קצב הלב', true, 1),
    (question_id, 'תרופה להורדת קצב הלב', false, 2),
    (question_id, 'אנטיביוטיקה', false, 3),
    (question_id, 'משכך כאבים', false, 4);

  -- מהם Beta Blockers?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהם Beta Blockers?',
    cat_פרמקולוגיה_id,
    'approved',
    'Beta Blockers הם אנטגוניסטים למערכת הסימפתטית, חוסמים קולטני בטא ומאטים קצב הלב ומורידים לחץ דם.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'חוסמי בטא - תרופות המאטות קצב הלב ומורידות לחץ דם', true, 1),
    (question_id, 'תרופות המגבירות קצב הלב', false, 2),
    (question_id, 'אנטיביוטיקות', false, 3),
    (question_id, 'משככי כאבים', false, 4);

  -- מהו Sodium Bicarbonate?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Sodium Bicarbonate?',
    cat_פרמקולוגיה_id,
    'approved',
    'Sodium Bicarbonate (נתרן ביקרבונט) משמש לטיפול בחמצת מטבולית ע״י העלאת ה-pH.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'תרופה לטיפול בחמצת מטבולית', true, 1),
    (question_id, 'תרופה לטיפול בבססת', false, 2),
    (question_id, 'אנטיביוטיקה', false, 3),
    (question_id, 'משכך כאבים', false, 4);

  -- מהו Enoxaparin Sodium?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Enoxaparin Sodium?',
    cat_פרמקולוגיה_id,
    'approved',
    'Enoxaparin Sodium הוא הפרין במשקל מולקולרי נמוך (LMWH) המשמש למניעת קרישה ב-ACS.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'הפרין במשקל מולקולרי נמוך - תרופה נוגדת קרישה', true, 1),
    (question_id, 'תרופה מקריזה דם', false, 2),
    (question_id, 'אנטיביוטיקה', false, 3),
    (question_id, 'משכך כאבים', false, 4);

  -- מהו STEMI?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו STEMI?',
    cat_קרדיולוגיה_id,
    'approved',
    'STEMI הוא אוטם שריר הלב עם עליות של מקטע ה-ST ב-ECG, מצריך טיפול דחוף.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'ST Elevation Myocardial Infarction - אוטם עם עליות ST', true, 1),
    (question_id, 'אוטם ללא עליות ST', false, 2),
    (question_id, 'הפרעת קצב', false, 3),
    (question_id, 'אנגינה יציבה', false, 4);

  -- מהו ACS (Acute Coronary Syndrome)?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו ACS (Acute Coronary Syndrome)?',
    cat_קרדיולוגיה_id,
    'approved',
    'ACS (Acute Coronary Syndrome) היא תסמונת כלילית חריפה הכוללת STEMI, Non-STEMI ואנגינה לא יציבה.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'תסמונת כלילית חריפה הכוללת STEMI, NSTEMI ואנגינה לא יציבה', true, 1),
    (question_id, 'רק אוטם שריר הלב', false, 2),
    (question_id, 'רק אנגינה יציבה', false, 3),
    (question_id, 'הפרעת קצב בלבד', false, 4);

  -- מהו Atrial Fibrillation?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Atrial Fibrillation?',
    cat_קרדיולוגיה_id,
    'approved',
    'Atrial Fibrillation (A fib) הוא פרפור עליות - הפרעת קצב בה העליות מתכווצות בצורה כאוטית.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'פרפור עליות - הפרעת קצב עלייתית לא מסודרת', true, 1),
    (question_id, 'פרפור חדרים', false, 2),
    (question_id, 'קצב סינוסי תקין', false, 3),
    (question_id, 'חסם הולכה', false, 4);

  -- מהו VT (Ventricular Tachycardia)?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו VT (Ventricular Tachycardia)?',
    cat_קרדיולוגיה_id,
    'approved',
    'Ventricular Tachycardia (VT) היא טכיקרדיה חדרית - קצב מהיר ממוצא חדרי, עלול להיות מסכן חיים.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'טכיקרדיה חדרית - קצב מהיר ממוצא חדרי', true, 1),
    (question_id, 'טכיקרדיה עלייתית', false, 2),
    (question_id, 'קצב סינוסי מהיר', false, 3),
    (question_id, 'ברדיקרדיה חדרית', false, 4);

  -- מהו WCT (Wide Complex Tachycardia)?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו WCT (Wide Complex Tachycardia)?',
    cat_קרדיולוגיה_id,
    'approved',
    'WCT היא טכיקרדיה עם קומפלקס רחב, לרוב מעידה על קצב ממוצא חדרי או הולכה לקויה.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'טכיקרדיה עם קומפלקס רחב - חשד לקצב חדרי', true, 1),
    (question_id, 'טכיקרדיה עם קומפלקס צר', false, 2),
    (question_id, 'ברדיקרדיה', false, 3),
    (question_id, 'קצב סינוסי תקין', false, 4);

  -- מהו NCT (Narrow Complex Tachycardia)?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו NCT (Narrow Complex Tachycardia)?',
    cat_קרדיולוגיה_id,
    'approved',
    'NCT היא טכיקרדיה עם קומפלקס צר, לרוב ממוצא על-חדרי (עליות או ג''נקשיין).',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'טכיקרדיה עם קומפלקס צר - לרוב ממוצא על-חדרי', true, 1),
    (question_id, 'טכיקרדיה עם קומפלקס רחב', false, 2),
    (question_id, 'ברדיקרדיה סינוסית', false, 3),
    (question_id, 'פרפור חדרים', false, 4);

  -- מהו פרוטוקול הפסקת נשימה?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו פרוטוקול הפסקת נשימה?',
    cat_פרוטוקולים_id,
    'approved',
    'פרוטוקול הפסקת נשימה מכתיב את הצורה של איך מבצעים הנשמה, מתי, איך מרדימים את המטופל ואיך מתמודדים עם כישלון.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'פרוטוקול המכתיב כיצד ומתי לבצע אינטובציה והרדמה', true, 1),
    (question_id, 'פרוטוקול להפסקת החייאה', false, 2),
    (question_id, 'פרוטוקול לניתוק מנשם', false, 3),
    (question_id, 'פרוטוקול למתן חמצן', false, 4);

  -- מהו פרוטוקול ROSC?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו פרוטוקול ROSC?',
    cat_פרוטוקולים_id,
    'approved',
    'פרוטוקול ROSC מיועד לטיפול לאחר החזרת דופק ספונטני (Return Of Spontaneous Circulation).',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'Return Of Spontaneous Circulation - פרוטוקול לאחר החזרת דופק', true, 1),
    (question_id, 'פרוטוקול לתחילת החייאה', false, 2),
    (question_id, 'פרוטוקול להפסקת החייאה', false, 3),
    (question_id, 'פרוטוקול לדום לב', false, 4);

  -- מהו פרוטוקול ברדיקרדיה?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו פרוטוקול ברדיקרדיה?',
    cat_פרוטוקולים_id,
    'approved',
    'פרוטוקול ברדיקרדיה מיועד לטיפול בקצב לב איטי עם סימפטומים (לרוב מתחת ל-50 פעימות לדקה).',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'פרוטוקול לטיפול בקצב לב איטי מדי', true, 1),
    (question_id, 'פרוטוקול לטיפול בקצב לב מהיר', false, 2),
    (question_id, 'פרוטוקול לטיפול בפרפור עליות', false, 3),
    (question_id, 'פרוטוקול לטיפול בדום לב', false, 4);

  -- מהו פרוטוקול בצקת ריאות?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו פרוטוקול בצקת ריאות?',
    cat_פרוטוקולים_id,
    'approved',
    'פרוטוקול בצקת ריאות כולל שימוש ב-CPAP, ניטרטים ודיאורטיקה (פורוסמיד) לטיפול בבצקת ריאות קרדיאלית.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'פרוטוקול לטיפול בבצקת ריאות כולל CPAP ותרופות', true, 1),
    (question_id, 'פרוטוקול לטיפול בדלקת ריאות', false, 2),
    (question_id, 'פרוטוקול לטיפול ב-PE', false, 3),
    (question_id, 'פרוטוקול לטיפול באסטמה', false, 4);

  -- מהו פרוטוקול פרכוסים?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו פרוטוקול פרכוסים?',
    cat_פרוטוקולים_id,
    'approved',
    'פרוטוקול פרכוסים כולל בדיקת גלוקוז, מתן בנזודיאזפינים (מידאזולם) ובקרת נתיב אוויר.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'פרוטוקול לטיפול בפעילות פרכוסית כולל בנזודיאזפינים', true, 1),
    (question_id, 'פרוטוקול לטיפול בשבץ', false, 2),
    (question_id, 'פרוטוקול לטיפול בהתעלפות', false, 3),
    (question_id, 'פרוטוקול לטיפול בכאב ראש', false, 4);

  -- מה קורה כאשר Sodium עובר מהתסנין לדם?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מה קורה כאשר Sodium עובר מהתסנין לדם?',
    cat_אלקטרוליטים_id,
    'approved',
    'ספיגה חוזרת של נתרן (יון חיובי) גורמת למעבר פסיבי של אשלגן (גם יון חיובי) אל הנפרון.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'גורם למעבר פסיבי של Potassium אל הנפרון', true, 1),
    (question_id, 'גורם לעלייה ב-Potassium בדם', false, 2),
    (question_id, 'גורם לירידה ב-Calcium', false, 3),
    (question_id, 'לא משפיע על אלקטרוליטים אחרים', false, 4);

  -- מהו Ionized Calcium?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Ionized Calcium?',
    cat_אלקטרוליטים_id,
    'approved',
    'Ionized Calcium (Ca++) הוא הצורה הפעילה של הסידן בגוף, חשוב להתכווצות שרירים והולכה עצבית.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'סידן מיונן (Ca++) הפעיל בגוף', true, 1),
    (question_id, 'סידן הקשור לחלבון', false, 2),
    (question_id, 'סידן באגירה בעצמות', false, 3),
    (question_id, 'תוסף סידן', false, 4);

  -- מהו DKA (Diabetic Ketoacidosis)?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו DKA (Diabetic Ketoacidosis)?',
    cat_מערכות_נוספות_id,
    'approved',
    'DKA היא חמצת קטואצידוטית שבה יש הרבה סוכר בדם אבל בתאים אין, טיפוסי ל-Type 1 Diabetes.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'חמצת קטואצידוטית סוכרתית - סיבוך של סוכרת Type 1', true, 1),
    (question_id, 'סיבוך של סוכרת Type 2 בלבד', false, 2),
    (question_id, 'היפוגליקמיה חמורה', false, 3),
    (question_id, 'עודף אינסולין', false, 4);

  -- מהו Syncope?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Syncope?',
    cat_מערכות_נוספות_id,
    'approved',
    'Syncope היא התעלפות - אובדן הכרה זמני עקב היפו-פרפוזיה (אספקת דם לקויה) למוח.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'התעלפות - אובדן הכרה זמני עקב היפו-פרפוזיה מוחית', true, 1),
    (question_id, 'פרכוס', false, 2),
    (question_id, 'שבץ', false, 3),
    (question_id, 'דום לב', false, 4);

  -- ==================
  -- שאלות מתקדמות
  -- ==================

  -- מהו Cardiac Septum?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Cardiac Septum?',
    cat_אנטומיה_id,
    'approved',
    'ה-Cardiac Septum הוא המחיצה החדרית המפרידה בין החדר הימני לשמאלי.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'המחיצה המפרידה בין החדר הימני לשמאלי', true, 1),
    (question_id, 'המסתם בין העליה לחדר', false, 2),
    (question_id, 'שכבת השריר החיצונית של הלב', false, 3),
    (question_id, 'הכיס המקיף את הלב', false, 4);

  -- כיצד הנשמה בלחץ חיובי משפיעה על הפיזיולוגיה הקרדיווסקולרית?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'כיצד הנשמה בלחץ חיובי משפיעה על הפיזיולוגיה הקרדיווסקולרית?',
    cat_פיזיולוגיה_id,
    'approved',
    'הנשמה בלחץ חיובי מקטינה את ה-Preload (מקטינה החזר ורידי) ואת ה-Afterload (לחץ על החדרים בסיסטולה).',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'מקטינה Preload ו-Afterload', true, 1),
    (question_id, 'מגדילה Preload ו-Afterload', false, 2),
    (question_id, 'מגדילה Preload ומקטינה Afterload', false, 3),
    (question_id, 'לא משפיעה על הפרמטרים המודינמיים', false, 4);

  -- איך מחושב לחץ הדם?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'איך מחושב לחץ הדם?',
    cat_פיזיולוגיה_id,
    'approved',
    'לחץ הדם מחושב כמכפלה של Cardiac Output בהתנגודת כלי הדם המערכתית (Systemic Vascular Resistance).',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'Cardiac Output × Systemic Vascular Resistance', true, 1),
    (question_id, 'Heart Rate × Stroke Volume', false, 2),
    (question_id, 'Preload × Afterload', false, 3),
    (question_id, 'Systolic pressure - Diastolic pressure', false, 4);

  -- מהי הבעיה העיקרית ב-ARDS (Acute Respiratory Distress Syndrome)?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהי הבעיה העיקרית ב-ARDS (Acute Respiratory Distress Syndrome)?',
    cat_מערכת_נשימתית_id,
    'approved',
    'ARDS היא בצקת ריאות שלא על רקע קרדיאלי (non-cardiogenic), ללא מנגנון קומפנסציה של הלב.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'בצקת ריאות שלא על רקע לבבי', true, 1),
    (question_id, 'בצקת ריאות על רקע אי ספיקת לב', false, 2),
    (question_id, 'הצטברות נוזל בחלל הפלאורלי', false, 3),
    (question_id, 'דלקת חיידקית בריאות', false, 4);

  -- מהו V/Q mismatch?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו V/Q mismatch?',
    cat_מערכת_נשימתית_id,
    'approved',
    'V/Q mismatch משמעו חוסר התאמה בין ventilation (אוורור) ל-perfusion (זילוח דם) בריאות.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'חוסר התאמה בין החמצון והאיוורור לבין הפרפוזיה (אספקת הדם) לריאות', true, 1),
    (question_id, 'חוסר איזון בין החדר הימני לשמאלי', false, 2),
    (question_id, 'הפרש בין הלחץ האורטלי לפולמונרי', false, 3),
    (question_id, 'הבדל בין קיבולת הריאות לנפח הנשימה', false, 4);

  -- מה קורה לרמת CO2 באמפיזמה (סוג של COPD)?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מה קורה לרמת CO2 באמפיזמה (סוג של COPD)?',
    cat_מערכת_נשימתית_id,
    'approved',
    'באמפיזמה יש ירידה ב-V (אוורור) בגלל ירידה בפרפוזיה וגם ירידה ב-Q (זילוח) בגלל הרס כלי דם, אך V/Q נשמר.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'יש ירידה גם ב-V וגם ב-Q, אך V/Q נשמר', true, 1),
    (question_id, 'עלייה חדה ב-CO2 בלבד', false, 2),
    (question_id, 'ירידה ב-V בלבד', false, 3),
    (question_id, 'עלייה ב-Q בלבד', false, 4);

  -- מהו Cardiac Asthma?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Cardiac Asthma?',
    cat_מערכת_קרדיווסקולרית_id,
    'approved',
    'Cardiac Asthma היא בצקת ריאות שבה במקום חרחורים שומעים צפצופים אינספירטוריים ואקספירטוריים.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'בצקת ריאות שבמקום חרחורים שומעים צפצופים', true, 1),
    (question_id, 'אסטמה רגילה המחמירה בגלל בעיית לב', false, 2),
    (question_id, 'ברונכוספזם עקב תרופות לב', false, 3),
    (question_id, 'קוצר נשימה על רקע אלרגי', false, 4);

  -- מה קורה לברדיקרדיה מתחת ל-50 פעימות לדקה?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מה קורה לברדיקרדיה מתחת ל-50 פעימות לדקה?',
    cat_מערכת_קרדיווסקולרית_id,
    'approved',
    'ברדיקרדיה מתחת ל-50 מוריד את ה-Cardiac Output בצורה מסוכנת ולכן מופיעים סימנים קליניים של ירידות לחץ.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'זה מוריד את ה-Cardiac Output בצורה מסוכנת', true, 1),
    (question_id, 'זה מגביר את ה-Cardiac Output', false, 2),
    (question_id, 'אין השפעה על ה-Cardiac Output', false, 3),
    (question_id, 'זה משפיע רק על ה-Stroke Volume', false, 4);

  -- מהו Cardiac Tamponade?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Cardiac Tamponade?',
    cat_מערכת_קרדיווסקולרית_id,
    'approved',
    'Cardiac Tamponade הוא הצטברות נוזל או דם בכיס הפריקרד שלוחץ על הלב ומפריע לתפקודו.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'הצטברות נוזל/דם בכיס הפריקרד הלוחץ על הלב', true, 1),
    (question_id, 'חסימה בעורקים הכליליים', false, 2),
    (question_id, 'קרע במסתם הלב', false, 3),
    (question_id, 'דלקת בכיס הפריקרד', false, 4);

  -- מהו CRT (Cardiac Resynchronization Therapy)?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו CRT (Cardiac Resynchronization Therapy)?',
    cat_מערכת_קרדיווסקולרית_id,
    'approved',
    'CRT היא טיפול בסנכרון מחדש של הלב באמצעות קוצב מיוחד לחולים עם אי ספיקת לב.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'טיפול בסנכרון מחדש של הלב באמצעות קוצב', true, 1),
    (question_id, 'החייאה לבבית-ריאתית', false, 2),
    (question_id, 'דפיברילציה חשמלית', false, 3),
    (question_id, 'צנתור לב', false, 4);

  -- מה ההבדל בין Compensated Shock ל-Uncompensated Shock?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מה ההבדל בין Compensated Shock ל-Uncompensated Shock?',
    cat_מערכת_קרדיווסקולרית_id,
    'approved',
    'Compensated Shock (Pre-Shock) הוא הלם מפוצה עם מנגנוני פיצוי פעילים, ואילו Uncompensated Shock הוא כשהמנגנונים קרסו.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'ב-Compensated יש מנגנוני פיצוי פעילים, ב-Uncompensated הם קרסו', true, 1),
    (question_id, 'ב-Compensated יש לחץ דם נמוך, ב-Uncompensated לחץ תקין', false, 2),
    (question_id, 'ב-Compensated יש אובדן הכרה, ב-Uncompensated לא', false, 3),
    (question_id, 'אין הבדל, זה אותו מצב', false, 4);

  -- מהי קוניוטומיה?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהי קוניוטומיה?',
    cat_נתיב_אוויר_id,
    'approved',
    'קוניוטומיה היא פתיחת נתיב אוויר חירום כירורגי דרך הממברנה הקריקו-תירואידית כאשר אינטובציה נכשלת.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'פתיחת נתיב אוויר חירום דרך הממברנה הקריקו-תירואידית', true, 1),
    (question_id, 'אינטובציה רגילה', false, 2),
    (question_id, 'החדרת צינור דרך האף', false, 3),
    (question_id, 'הנשמה באמבו', false, 4);

  -- מהי One Lung Intubation?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהי One Lung Intubation?',
    cat_נתיב_אוויר_id,
    'approved',
    'One Lung Intubation היא סיבוך של אינטובציה עמוקה מדי, שבה הטובוס חדר מעבר לנקודת הקרינה וב-90% חודר לריאה הימנית.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'הטובוס חדר מעבר לנקודת הקרינה וב-90% חודר לריאה ימין', true, 1),
    (question_id, 'אינטובציה מכוונת לריאה אחת', false, 2),
    (question_id, 'אינטובציה של חולה עם ריאה אחת', false, 3),
    (question_id, 'שיטת אינטובציה מיוחדת', false, 4);

  -- מהי אנטומיה בעייתית לאינטובציה?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהי אנטומיה בעייתית לאינטובציה?',
    cat_נתיב_אוויר_id,
    'approved',
    'אנטומיה בעייתית כוללת מבנים כמו צוואר קצר, לסת קטנה, או הגבלת פתיחת הפה המקשים על אינטובציה.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'מבנה אנטומי המקשה על ביצוע אינטובציה', true, 1),
    (question_id, 'גוף זר בדרכי הנשימה', false, 2),
    (question_id, 'זיהום בגרון', false, 3),
    (question_id, 'שבר בצוואר', false, 4);

  -- מהו Ketamine ומהם היתרונות שלו?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Ketamine ומהם היתרונות שלו?',
    cat_פרמקולוגיה_id,
    'approved',
    'Ketamine משמש להרדמה, יש לו השפעה אנלגטית טובה עם אופיאטים, ומרחיב סימפונות לכן מצוין ב-COPD/אסטמה.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'תרופה להרדמה עם השפעה אנלגטית ומרחיבה סימפונות', true, 1),
    (question_id, 'תרופה להורדת לחץ דם בלבד', false, 2),
    (question_id, 'אנטיביוטיקה רחבת טווח', false, 3),
    (question_id, 'תרופה נוגדת קרישה', false, 4);

  -- מהן קונטרה-אינדיקציות למתן Ketamine?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהן קונטרה-אינדיקציות למתן Ketamine?',
    cat_פרמקולוגיה_id,
    'approved',
    'לפי הפרוטוקול והמודולה, Ketamine לא ניתן כאשר לחץ הדם פחות מ-90-100 סיסטולי, אלא אם אין ברירה.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'לחץ דם פחות מ-90-100 סיסטולי (קונטרה יחסית)', true, 1),
    (question_id, 'כל חולה מעל גיל 65', false, 2),
    (question_id, 'חולה עם סוכרת', false, 3),
    (question_id, 'חולה עם אסטמה', false, 4);

  -- מהו VF (Ventricular Fibrillation)?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו VF (Ventricular Fibrillation)?',
    cat_קרדיולוגיה_id,
    'approved',
    'Ventricular Fibrillation (VF) הוא פרפור חדרים - הפרעת קצב קטלנית בה החדרים רועדים ללא התכווצות יעילה.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'פרפור חדרים - הפרעת קצב קטלנית הדורשת דפיברילציה מיידית', true, 1),
    (question_id, 'פרפור עליות', false, 2),
    (question_id, 'טכיקרדיה חדרית', false, 3),
    (question_id, 'אסיסטולה', false, 4);

  -- מהו PSVT (Paroxysmal Supra-Ventricular Tachycardia)?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו PSVT (Paroxysmal Supra-Ventricular Tachycardia)?',
    cat_קרדיולוגיה_id,
    'approved',
    'PSVT היא טכיקרדיה על-חדרית התקפית, הפרעת קצב Reentrant המתחילה ומסתיימת באופן פתאומי.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'טכיקרדיה על-חדרית התקפית - הפרעת קצב Reentrant', true, 1),
    (question_id, 'טכיקרדיה חדרית', false, 2),
    (question_id, 'פרפור עליות', false, 3),
    (question_id, 'ברדיקרדיה סינוסית', false, 4);

  -- מהו LBBB (Left Bundle Branch Block)?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו LBBB (Left Bundle Branch Block)?',
    cat_קרדיולוגיה_id,
    'approved',
    'LBBB הוא חסם בצרור השמאלי, כאשר הוא חדש מטופל כמו STEMI בפרוטוקול ACS.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'חסם הולכה בצרור השמאלי - יכול להחקות STEMI', true, 1),
    (question_id, 'חסם הולכה בצרור הימני', false, 2),
    (question_id, 'הפרעת קצב עלייתית', false, 3),
    (question_id, 'אוטם שריר הלב', false, 4);

  -- מתי מבצעים ECG ימני-אחורי?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מתי מבצעים ECG ימני-אחורי?',
    cat_קרדיולוגיה_id,
    'approved',
    'ECG ימני-אחורי מבוצע כדי לראות את הקירות הימני והאחורי של הלב שלא נראים ב-ECG רגיל.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'כשיש חשד לאוטם בקיר הימני או האחורי של הלב', true, 1),
    (question_id, 'בכל מקרה של כאבים בחזה', false, 2),
    (question_id, 'רק בהפרעות קצב', false, 3),
    (question_id, 'לא מבצעים בשטח', false, 4);

  -- מהו פרוטוקול Asystole & PEA?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו פרוטוקול Asystole & PEA?',
    cat_פרוטוקולים_id,
    'approved',
    'פרוטוקול זה מיועד לטיפול בדום לב מסוג אסיסטולה (קו ישר) או PEA (פעילות חשמלית ללא דופק).',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'פרוטוקול לטיפול בדום לב עם קצבים שאינם ניתנים לדפיברילציה', true, 1),
    (question_id, 'פרוטוקול לטיפול ב-VF/VT', false, 2),
    (question_id, 'פרוטוקול לטיפול בברדיקרדיה', false, 3),
    (question_id, 'פרוטוקול לטיפול בטכיקרדיה', false, 4);

  -- מהו תפקיד Potassium-Sparing Diuretics?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו תפקיד Potassium-Sparing Diuretics?',
    cat_אלקטרוליטים_id,
    'approved',
    'Potassium-Sparing Diuretics הם משתנים מיוחדים ששומרים על אשלגן ומונעים אובדן יתר שלו בשתן.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'משתנים ששומרים על אשלגן ומונעים אובדן שלו', true, 1),
    (question_id, 'משתנים המגבירים הפרשת אשלגן', false, 2),
    (question_id, 'תרופות להעלאת אשלגן בלבד', false, 3),
    (question_id, 'תרופות להורדת אשלגן', false, 4);

  -- מהו Hypertension Crisis?
  INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by)
  VALUES (
    gen_random_uuid(),
    'מהו Hypertension Crisis?',
    cat_מערכות_נוספות_id,
    'approved',
    'Hypertension Crisis הוא משבר בו לחץ הדם עולה בצורה מאוד משמעותית ברמה מסכנת חיים.',
    'YOUR_ADMIN_USER_ID'
  )
  RETURNING id INTO question_id;

  INSERT INTO public.answers (question_id, answer_text, is_correct, order_num) VALUES
    (question_id, 'משבר יתר לחץ דם - עלייה משמעותית ומסכנת חיים בלחץ הדם', true, 1),
    (question_id, 'לחץ דם נמוך מאוד', false, 2),
    (question_id, 'לחץ דם תקין', false, 3),
    (question_id, 'הפרעת קצב', false, 4);

END $$;

-- =====================================================
-- DONE!
-- Total 101 questions inserted
-- =====================================================