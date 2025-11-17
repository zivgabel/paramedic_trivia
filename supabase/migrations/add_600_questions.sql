-- Migration: Add 600 additional questions from KP8
-- Generated: 2025-11-18T01:03:01.700861
-- Status: All questions set to 'pending' for review

-- This migration adds 599 new paramedic questions across all categories
-- All questions are marked as 'pending' and need admin approval

BEGIN;


-- Get category IDs (these will be used in the migration)
-- Note: Replace these with actual UUIDs from your database


-- Question 1: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd51c0d54-2061-445e-8592-2384cc2a7e03',
    'כמה חדרים יש ללב?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'ללב 4 חדרים: עליה ימנית, עליה שמאלית, חדר ימני וחדר שמאלי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('09e6fc95-e039-45c5-9a86-ea93fb3e8715', 'd51c0d54-2061-445e-8592-2384cc2a7e03', '4 חדרים - 2 עליות ו-2 חדרים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9e584d0d-8bbd-4741-adc5-492e5c27baa2', 'd51c0d54-2061-445e-8592-2384cc2a7e03', '2 חדרים בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2d806709-d1fd-47ea-89ef-5303b39e8854', 'd51c0d54-2061-445e-8592-2384cc2a7e03', '3 חדרים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ec60373a-4b55-47ba-9844-fd0079b82c4f', 'd51c0d54-2061-445e-8592-2384cc2a7e03', '6 חדרים', false, 4, NOW());


-- Question 2: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '5392270f-7d18-48a0-98c7-e4c5a53b6009',
    'מהו המדיאסטינום (Mediastinum)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'המדיאסטינום הוא חלל בית החזה ובתוכו נמצאים הצלעות, הלב, הריאות והגבול התחתון שלו הוא בסרעפת.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4f354dd8-37bb-4837-8765-5bbc781febd1', '5392270f-7d18-48a0-98c7-e4c5a53b6009', 'חלל בית החזה שבו נמצאים הלב, הקנה והוושט', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('da00c2aa-929a-4b0c-a1c7-9199bafce476', '5392270f-7d18-48a0-98c7-e4c5a53b6009', 'החלל שבין שתי הריאות בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9c7dc3f7-59a5-46b5-8f5b-e834cdf578d5', '5392270f-7d18-48a0-98c7-e4c5a53b6009', 'המרחב מאחורי הסרעפת', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4eb25064-6d2a-41ee-bc23-c4f7701b1cf8', '5392270f-7d18-48a0-98c7-e4c5a53b6009', 'החלל בין הצלעות', false, 4, NOW());


-- Question 3: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a90b609d-1f84-4f7e-ba47-467fde64d014',
    'מהי הקרינה (Carina)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'הקרינה (Carina) היא נקודת ההתפצלות של הקנה לשני סימפונות ראשיים, ונמצאת בגובה קשת הסטרנום (Angle of Louise).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('762492a7-252e-432f-a09a-15e02bb291e9', 'a90b609d-1f84-4f7e-ba47-467fde64d014', 'נקודת ההתפצלות של הקנה לשני סימפונות ראשיים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5229f0f6-d67f-4dd0-a9b1-4e792cb2b5ed', 'a90b609d-1f84-4f7e-ba47-467fde64d014', 'החיבור בין הגרון לקנה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8db2b1d9-61a2-42d8-b88b-4414c70f7124', 'a90b609d-1f84-4f7e-ba47-467fde64d014', 'הממברנה הקריקותירואידית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('84adcdaa-1136-4f1d-aa07-8248127e0a67', 'a90b609d-1f84-4f7e-ba47-467fde64d014', 'פתח הקנה', false, 4, NOW());


-- Question 4: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '98355549-a16a-4597-9bee-e6f82d390850',
    'מהו תפקיד האפיגלוטיס (Epiglottis)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'האפיגלוטיס הוא שריר קטן שיושב על קנה הנשימה. באופן שוטף הוא פתוח, אך נסגר בזמן בליעה כדי למנוע כניסת אוכל לקנה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7ebafda1-22eb-4819-836a-17cce8bc9641', '98355549-a16a-4597-9bee-e6f82d390850', 'לסגור את הקנה בזמן בליעה ולמנוע אספירציה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('788468e4-1522-4a45-8d30-9a2e12ff941b', '98355549-a16a-4597-9bee-e6f82d390850', 'לסגור את הושט בזמן נשימה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('acc6d2a6-2150-4993-9704-bd0d553ecc0c', '98355549-a16a-4597-9bee-e6f82d390850', 'ליצור קול', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4ae80c66-86d1-40b2-9dac-6c4e596ba541', '98355549-a16a-4597-9bee-e6f82d390850', 'לחמם את האוויר הנשאף', false, 4, NOW());


-- Question 5: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd3f652a2-008e-4d0f-8f4a-909e4955fb0a',
    'מהם מיתרי הקול (Vocal Cords)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'מיתרי הקול הם שתי דלתות הנמצאות בכניסה לקנה (מתחת לאפיגלוטיס), ותפקידם ליצור קול ולשמור על נתיב האוויר.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5d35aaae-95b5-45b3-be7a-af9ef7994f5e', 'd3f652a2-008e-4d0f-8f4a-909e4955fb0a', 'שתי דלתות הנמצאות בכניסה לקנה ומייצרות קול', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e2de0424-204c-4f88-b647-335299b14a73', 'd3f652a2-008e-4d0f-8f4a-909e4955fb0a', 'סחוסים בגרון', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('934bfb19-5d60-473c-b444-8f6b7cd65efc', 'd3f652a2-008e-4d0f-8f4a-909e4955fb0a', 'שרירי הגרון', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2473fed1-b850-4cb6-addd-ea75abb10091', 'd3f652a2-008e-4d0f-8f4a-909e4955fb0a', 'חלק מהאפיגלוטיס', false, 4, NOW());


-- Question 6: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '70549397-1718-4ce9-aa8f-bbb0dbf3fd01',
    'מהי הולקולה (Vallecula)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'הולקולה (Vallecula) היא מרווח משולש שנוצר בחיבור בין הלשון לאפיגלוטיס, ומשמש כנקודת ציון בעת אינטובציה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0de8eb96-3989-45b6-b752-8b739f641888', '70549397-1718-4ce9-aa8f-bbb0dbf3fd01', 'מרווח משולש בחיבור בין הלשון לאפיגלוטיס', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c11fcc31-fb8e-40f2-b823-1fb937eca1a6', '70549397-1718-4ce9-aa8f-bbb0dbf3fd01', 'החלק התחתון של הקנה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f7b3c9be-7a14-42d3-a5a0-d903549e2e0c', '70549397-1718-4ce9-aa8f-bbb0dbf3fd01', 'המרווח בין מיתרי הקול', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('586f9350-4c91-45c4-b090-365d1557ec33', '70549397-1718-4ce9-aa8f-bbb0dbf3fd01', 'פתח הגרון', false, 4, NOW());


-- Question 7: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '402b5be0-d71c-4268-b074-62b5ca75203d',
    'מהו אורך קנה הנשימה (Trachea)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'קנה הנשימה הוא צינור באורך 10-15 ס"מ, המתחיל מתחת לגרוגרת (Adam''s Apple) ומסתיים בקרינה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8f86fd59-7b98-49db-ba44-b841660444dc', '402b5be0-d71c-4268-b074-62b5ca75203d', '10-15 ס"מ', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a9e12366-0620-4814-b177-bba687129520', '402b5be0-d71c-4268-b074-62b5ca75203d', '5-8 ס"מ', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('03a0005a-f24a-4431-bbd7-626eda08a33a', '402b5be0-d71c-4268-b074-62b5ca75203d', '20-25 ס"מ', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('58954c3d-5f61-4234-9d7d-64794d79f5ec', '402b5be0-d71c-4268-b074-62b5ca75203d', '30-35 ס"מ', false, 4, NOW());


-- Question 8: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd45f4a5c-262b-48e0-b4d4-919a4b7dfe6c',
    'מדוע לקנה הנשימה יש סחוסים?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'הסחוסים (הקריקואידים) יושבים מסביב לקנה ומאפשרים לו להיות פתוח כל הזמן, תוך מתן גמישות לוושט להתרחב על חשבונו.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d6581937-baf3-47d3-bef1-5623571a757f', 'd45f4a5c-262b-48e0-b4d4-919a4b7dfe6c', 'כדי לשמור על הקנה פתוח כל הזמן ולמנוע קריסה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('697e4764-7e98-43fb-8ec5-758a9d055a13', 'd45f4a5c-262b-48e0-b4d4-919a4b7dfe6c', 'כדי לאפשר לקנה להתכווץ', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8f295566-8788-477e-a6b4-84a0d9d6292d', 'd45f4a5c-262b-48e0-b4d4-919a4b7dfe6c', 'כדי להגן על הקנה מפציעות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bc73cf41-6176-431e-a002-c3fa4b75f5cf', 'd45f4a5c-262b-48e0-b4d4-919a4b7dfe6c', 'כדי לסגור את הקנה בזמן בליעה', false, 4, NOW());


-- Question 9: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '9fa9dcb5-cc6e-442b-9fa8-3c5c4301c71e',
    'כמה אונות יש בריאה הימנית?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'בריאה הימנית החלוקה היא ל-3 אונות (3 פיצולים), ואילו בריאה השמאלית יש 2 אונות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('584b25c0-3dd1-4d95-a1cc-d9ccc9b83bae', '9fa9dcb5-cc6e-442b-9fa8-3c5c4301c71e', '3 אונות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0b75cecf-8a3d-496c-bf7a-e095c78b57b6', '9fa9dcb5-cc6e-442b-9fa8-3c5c4301c71e', '2 אונות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2a622d8c-b38a-4359-ac2b-034a5cf4d722', '9fa9dcb5-cc6e-442b-9fa8-3c5c4301c71e', '4 אונות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6b6a3c63-e915-432d-9a60-38bcde9c3a6c', '9fa9dcb5-cc6e-442b-9fa8-3c5c4301c71e', '5 אונות', false, 4, NOW());


-- Question 10: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ed244c3c-7bdc-4915-99e2-bf308c8681b2',
    'מהן הנאדיות (Alveoli)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'הנאדיות (Alveoli) הן שקים קטנים בריאה שבהם מתבצע רוב חילוף החומרים בין האוויר לדם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0d32d4bc-9689-4228-b510-ed85a51b9fdd', 'ed244c3c-7bdc-4915-99e2-bf308c8681b2', 'שקים קטנים בריאה שבהם מתבצע חילוף הגזים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('90b41d7f-cf8b-406e-a1e4-937169d10cc0', 'ed244c3c-7bdc-4915-99e2-bf308c8681b2', 'הסימפונות הגדולים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5597e72a-a449-4d9e-b143-5321e758f085', 'ed244c3c-7bdc-4915-99e2-bf308c8681b2', 'כלי הדם בריאה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('136f82fc-da5f-4d05-b8b7-736eaaee879f', 'ed244c3c-7bdc-4915-99e2-bf308c8681b2', 'שרירי הנשימה', false, 4, NOW());


-- Question 11: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1d9c51a4-da6c-4098-aaed-33c3c5cd1fc1',
    'מהו הסורפקטנט (Surfactant)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'הסורפקטנט הוא חומר שמורכב מחלבונים ושומנים, פרוס על פני חלל הנאדיות ומקטין את פני השטח כדי למנוע התמוטטות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('017e8ec6-a3ef-44a4-9b0f-160b9e96a1f9', '1d9c51a4-da6c-4098-aaed-33c3c5cd1fc1', 'חומר מחלבונים ושומנים שמונע התמוטטות הנאדיות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3cde1934-fb26-4d7d-8157-63d1ecd16555', '1d9c51a4-da6c-4098-aaed-33c3c5cd1fc1', 'הורמון המווסת נשימה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1692c484-5427-441f-a912-311b47890054', '1d9c51a4-da6c-4098-aaed-33c3c5cd1fc1', 'נוזל בחלל הפלאורלי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bf4b40cc-989d-4fb0-a008-28faefa4b981', '1d9c51a4-da6c-4098-aaed-33c3c5cd1fc1', 'אנזים המפרק חמצן', false, 4, NOW());


-- Question 12: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a6e7d987-b998-49b6-8da3-d09e1033a48a',
    'מהם קרומי הפלאורה?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'מסביב לכל ריאה יש שני קרומים הנקראים קרומי הפלאורה - הפלאורה הויסרלית (צמודה לריאה) והפלאורה הפריאטלית (צמודה לדופן החזה).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e6dcc58d-0168-4f30-a956-676feffd6abe', 'a6e7d987-b998-49b6-8da3-d09e1033a48a', 'שני קרומים המקיפים את הריאות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5d7aa3bd-7b51-4998-8d59-7091aaf7b958', 'a6e7d987-b998-49b6-8da3-d09e1033a48a', 'הממברנה הקריקותירואידית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e256676d-4fb8-4aba-ac7d-eeddd18f3df6', 'a6e7d987-b998-49b6-8da3-d09e1033a48a', 'הקרום המקיף את הלב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('01d73718-0d31-485c-9605-7583a75f1d11', 'a6e7d987-b998-49b6-8da3-d09e1033a48a', 'הקרום בתוך הקנה', false, 4, NOW());


-- Question 13: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c6760e8d-ae32-4056-85d7-5849d32970d2',
    'מהו השער הריאתי (Pulmonary Hilum)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'השער הריאתי הוא הנקודה שבה הקנה יוצא כסימפון ודוקר את הריאה, ביחד עם עורק ושני ורידים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2da55d4a-56a0-49cf-869d-4efdddd6b469', 'c6760e8d-ae32-4056-85d7-5849d32970d2', 'הנקודה שבה הסימפון, העורק והורידים נכנסים ליוצאים מהריאה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('51fff4df-9a6d-42c0-97b7-d678663e282d', 'c6760e8d-ae32-4056-85d7-5849d32970d2', 'הנקודה העליונה של הריאה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5e8cfa4a-642a-4989-b782-77668583dbec', 'c6760e8d-ae32-4056-85d7-5849d32970d2', 'נקודת החיבור בין הריאה לסרעפת', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('dd58dbab-9c72-40ca-8048-8c94ede3a856', 'c6760e8d-ae32-4056-85d7-5849d32970d2', 'מרכז הריאה', false, 4, NOW());


-- Question 14: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1c417ed8-4789-408a-82de-a8f8198a534e',
    'כמה דורות של התפצלויות יש לסימפונות עד להפיכתם לסימפוניות?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'איפה שהוא בין דור 18 לדור 20, הברונכוס (סימפון) הופך לברונכיון (סימפוניות), ובדורות האחרונים מתחילים השקים הנקראים נאדיות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e7bfd4c7-89cf-4c25-967e-e3e996197501', '1c417ed8-4789-408a-82de-a8f8198a534e', 'בין דור 18 לדור 20', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('19a033d2-7e50-4052-adf1-396c2176080c', '1c417ed8-4789-408a-82de-a8f8198a534e', 'בין דור 5 לדור 8', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9db89776-ea7f-4d25-aecb-ea0bb972f5e7', '1c417ed8-4789-408a-82de-a8f8198a534e', 'בין דור 10 לדור 12', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('abfdeebe-2bfb-4306-ab47-cda9a844c4b3', '1c417ed8-4789-408a-82de-a8f8198a534e', 'בין דור 25 לדור 30', false, 4, NOW());


-- Question 15: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'b18e27e3-9715-43da-bc56-1151cb599135',
    'מהו הגלוטיס (Glottis)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'הגלוטיס הוא חלל הקנה שמתחיל מתחת לחלל הלוע (הלרינגס), והקנה פתוח 24 שעות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6c0d917e-f3b2-4ac6-be33-b402091e07f3', 'b18e27e3-9715-43da-bc56-1151cb599135', 'חלל הקנה המתחיל מתחת לחלל הלוע', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('56f7b80a-5b59-4afb-91e9-a65cfd96b4a8', 'b18e27e3-9715-43da-bc56-1151cb599135', 'מיתרי הקול', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bca37642-b469-497f-baf7-89b3b5584197', 'b18e27e3-9715-43da-bc56-1151cb599135', 'האפיגלוטיס', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('611582a3-fa35-4f47-98e2-a916a8a55360', 'b18e27e3-9715-43da-bc56-1151cb599135', 'פתח הגרון', false, 4, NOW());


-- Question 16: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '7bf311fe-0e0b-4df9-a746-31f1fd140830',
    'מהי הממברנה הקריקותירואידית?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'הממברנה הקריקותירואידית נמצאת בין הסחוס הקריקואידי (הטבעת הראשונה של הקנה) לסחוס התירואידי, ומשמשת כנקודת כניסה בקוניוטומיה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3b496240-2d2a-429b-99ea-de95fe8063d7', '7bf311fe-0e0b-4df9-a746-31f1fd140830', 'הממברנה הנמצאת בין הסחוס הקריקואידי לסחוס התירואידי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('74df6a8a-5a52-4dd7-87de-476ed7cc97de', '7bf311fe-0e0b-4df9-a746-31f1fd140830', 'הממברנה בין מיתרי הקול', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('873e8666-1605-4324-a670-be1c4719f609', '7bf311fe-0e0b-4df9-a746-31f1fd140830', 'קרום הפלאורה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3a596406-f9a3-400f-9e43-b21fb21836c0', '7bf311fe-0e0b-4df9-a746-31f1fd140830', 'הקרום המקיף את הלב', false, 4, NOW());


-- Question 17: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '8ef70b7a-091c-4cf2-8a8a-61479b6bb89e',
    'איזה עורק מזין את שריר הלב עצמו?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'העורקים הכליליים (Coronary Arteries) הם כלי הדם המזינים את שריר הלב עצמו.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('487f9976-51d0-4a6a-af93-cdb623ac6296', '8ef70b7a-091c-4cf2-8a8a-61479b6bb89e', 'העורקים הכליליים (Coronary Arteries)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2a043cfb-3c3d-4e94-97d9-cfaa737478ed', '8ef70b7a-091c-4cf2-8a8a-61479b6bb89e', 'האאורטה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('50cdcda7-3303-4298-9f3b-9d027af84dcf', '8ef70b7a-091c-4cf2-8a8a-61479b6bb89e', 'העורק הפולמונרי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5a0859cd-c028-44fe-924a-5ff814caaaa3', '8ef70b7a-091c-4cf2-8a8a-61479b6bb89e', 'העורק הקרוטידי', false, 4, NOW());


-- Question 18: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'e2787ffb-e9a5-447e-b2b1-51f4dc6160ff',
    'מהו תפקיד המסתם המיטרלי?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'המסתם המיטרלי נמצא בין העליה השמאלית לחדר השמאלי ומונע זרימה חוזרת בזמן הסיסטולה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9d777f52-e18b-4091-87eb-c159d10b5643', 'e2787ffb-e9a5-447e-b2b1-51f4dc6160ff', 'למנוע זרימה חוזרת של דם מהחדר השמאלי לעליה השמאלית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('329a6063-dd1e-4d45-aab9-88971e7aa5f7', 'e2787ffb-e9a5-447e-b2b1-51f4dc6160ff', 'למנוע זרימה חוזרת מהאאורטה לחדר השמאלי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a64bf0b5-3142-477e-9aee-84142d656fcd', 'e2787ffb-e9a5-447e-b2b1-51f4dc6160ff', 'להפריד בין החדר הימני לשמאלי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0fcea02f-721a-484a-9e2f-911fb71e2df1', 'e2787ffb-e9a5-447e-b2b1-51f4dc6160ff', 'למנוע זרימה חוזרת מהריאות לחדר הימני', false, 4, NOW());


-- Question 19: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'e8d20e79-8a20-4016-b422-7d82845d30d0',
    'מהו המסתם הטריקוספידלי?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'המסתם הטריקוספידלי נמצא בין העליה הימנית לחדר הימני ומונע זרימה חוזרת.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f4efd032-5082-4095-bd10-04f9dab42fea', 'e8d20e79-8a20-4016-b422-7d82845d30d0', 'מסתם בין העליה הימנית לחדר הימני', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f5d124fd-4482-43d2-9581-9f139ecf3af2', 'e8d20e79-8a20-4016-b422-7d82845d30d0', 'מסתם בין החדר הימני לעורק הפולמונרי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b7d33c28-e079-4244-b694-8fcd5d9da236', 'e8d20e79-8a20-4016-b422-7d82845d30d0', 'מסתם בין העליה השמאלית לחדר השמאלי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('709292fb-e022-4429-8abc-088bbfeb47a8', 'e8d20e79-8a20-4016-b422-7d82845d30d0', 'מסתם בין החדר השמאלי לאאורטה', false, 4, NOW());


-- Question 20: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '31eaece5-7964-4f35-ab7e-ff859d100e3c',
    'מהו המסתם הפולמונרי?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'המסתם הפולמונרי נמצא בין החדר הימני לעורק הפולמונרי ומונע זרימה חוזרת מהריאות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0e6382a9-e70b-4ed8-afdc-e889a8670d71', '31eaece5-7964-4f35-ab7e-ff859d100e3c', 'מסתם בין החדר הימני לעורק הפולמונרי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8b97f4b6-8e67-4046-958d-edc736269e61', '31eaece5-7964-4f35-ab7e-ff859d100e3c', 'מסתם בין העליה הימנית לחדר הימני', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('85e7f471-a808-495c-8ada-b9798ce014a2', '31eaece5-7964-4f35-ab7e-ff859d100e3c', 'מסתם בין ורידי הריאה לעליה השמאלית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0cd0305f-36eb-4eea-a0cc-e4aad36290dd', '31eaece5-7964-4f35-ab7e-ff859d100e3c', 'מסתם בין החדר השמאלי לאאורטה', false, 4, NOW());


-- Question 21: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ee0614a7-d473-45d5-9e85-65944eff28cb',
    'מהי האאורטה?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'האאורטה היא העורק הגדול ביותר בגוף, יוצאת מהחדר השמאלי ומחלקת דם עשיר בחמצן לכל הגוף.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b5a0540a-7f7a-4b4d-9e44-3f04306f0722', 'ee0614a7-d473-45d5-9e85-65944eff28cb', 'העורק הגדול ביותר בגוף שמוציא דם מהחדר השמאלי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5a288206-69c1-443c-94e7-ce3884e34fc5', 'ee0614a7-d473-45d5-9e85-65944eff28cb', 'הוריד הגדול ביותר בגוף', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7d8f1665-e13b-42c8-8785-d996a68cd628', 'ee0614a7-d473-45d5-9e85-65944eff28cb', 'העורק המוביל לריאות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c4c0d983-03c3-4c0b-91e8-de9d30bff21a', 'ee0614a7-d473-45d5-9e85-65944eff28cb', 'כלי הדם המחבר את שתי העליות', false, 4, NOW());


-- Question 22: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '27ac83c4-a95b-4524-b664-0135572ab993',
    'מהו המחזור הריאתי (קטן)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'המחזור הריאתי (קטן) מתחיל בחדר ימין, עובר דרך עורק הריאה לריאות לחילוף גזים, וחוזר דרך ורידי הריאה לעליה השמאלית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('17cd465a-91f3-436d-ae17-197a0fba3753', '27ac83c4-a95b-4524-b664-0135572ab993', 'מעבר הדם מהחדר הימני לריאות ובחזרה לעליה השמאלית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ef8cdc7d-e5cc-4c53-ae79-57df86498c71', '27ac83c4-a95b-4524-b664-0135572ab993', 'מעבר הדם מהחדר השמאלי לכל הגוף', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7d9684f9-2f5e-4d98-92d1-de442a51f760', '27ac83c4-a95b-4524-b664-0135572ab993', 'מעבר הדם בין החדרים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('53c3705f-6d67-4fb6-a4f4-3058e0f980e2', '27ac83c4-a95b-4524-b664-0135572ab993', 'מעבר הדם מהריאות לכליות', false, 4, NOW());


-- Question 23: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '2431d6f4-313f-4168-94f6-590d441cbf44',
    'מהו המחזור המערכתי (גדול)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'המחזור המערכתי (גדול) מתחיל בחדר השמאלי, עובר דרך האאורטה לכל הגוף, וחוזר דרך הורידים הגדולים לעליה הימנית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cdd24521-c765-4d21-b88b-9bff6cd6a8d1', '2431d6f4-313f-4168-94f6-590d441cbf44', 'מעבר הדם מהחדר השמאלי לכל הגוף ובחזרה לעליה הימנית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4b07509f-ad44-4779-9e23-2be74e462e59', '2431d6f4-313f-4168-94f6-590d441cbf44', 'מעבר הדם מהחדר הימני לריאות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1990aa95-69cc-47f7-9940-7d802fe23bfe', '2431d6f4-313f-4168-94f6-590d441cbf44', 'מעבר הדם בתוך הלב בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('65771b73-7339-4b5d-baf8-57f5b6db5cd3', '2431d6f4-313f-4168-94f6-590d441cbf44', 'מעבר הדם דרך הכליות', false, 4, NOW());


-- Question 24: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '6e3b4415-084c-43fa-bfbc-072c04be321a',
    'מהו הפריקרד?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'הפריקרד הוא הכיס המקיף את הלב ומכיל מעט נוזל למניעת חיכוך. הצטברות נוזל/דם בו יוצרת Cardiac Tamponade.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2203f305-e37e-44d4-a4b9-8f4e355808cd', '6e3b4415-084c-43fa-bfbc-072c04be321a', 'הכיס המקיף ומגן על הלב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('956214fd-255c-400d-893d-d3ad18143913', '6e3b4415-084c-43fa-bfbc-072c04be321a', 'המחיצה בין החדרים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7aa00018-879b-4392-a9ad-e8bc33df0ded', '6e3b4415-084c-43fa-bfbc-072c04be321a', 'שכבת השריר החיצונית של הלב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c400b1b5-1231-436d-ade5-d54037ef1534', '6e3b4415-084c-43fa-bfbc-072c04be321a', 'המסתם בין העליה לחדר', false, 4, NOW());


-- Question 25: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'bda2fb8a-2669-442f-b6e3-21c4d40181fc',
    'מהו Vena Cava?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'Vena Cava (יש Vena Cava עליונה ותחתונה) הם הורידים הגדולים המחזירים דם לא מחומצן מהגוף לעליה הימנית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('00275d75-e0da-4509-bbc5-fc04f500cc3a', 'bda2fb8a-2669-442f-b6e3-21c4d40181fc', 'הוריד הגדול המחזיר דם מהגוף לעליה הימנית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3bc7b73f-f559-4131-a6fb-0837e25dfbc2', 'bda2fb8a-2669-442f-b6e3-21c4d40181fc', 'העורק המוביל לריאות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('797de3f6-f376-4ccb-81a3-75732698a9e3', 'bda2fb8a-2669-442f-b6e3-21c4d40181fc', 'הוריד המוביל מהריאות ללב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('05834f8f-8b0c-4654-9588-d80cb85b5f0d', 'bda2fb8a-2669-442f-b6e3-21c4d40181fc', 'העורק המזין את המוח', false, 4, NOW());


-- Question 26: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '939cbddc-610f-4792-bec3-027b1f1c6107',
    'איזה עצב אחראי על הנשימה?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'עצב הפריניק (Phrenic) מעצבב את הסרעפת והוא חיוני לתהליך הנשימה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7ff61305-0826-4882-bcee-908944c8929f', '939cbddc-610f-4792-bec3-027b1f1c6107', 'עצב הפריניק (Phrenic) שמעצבב את הסרעפת', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('49e62cfa-2bb1-443d-ab44-2c3dbf1ec46a', '939cbddc-610f-4792-bec3-027b1f1c6107', 'עצב הוואגוס', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('05445339-72ba-457d-ac1d-0800d2ae79c2', '939cbddc-610f-4792-bec3-027b1f1c6107', 'עצב הרדיאלי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b31018b5-6fe7-4a4c-a0d0-576dda232341', '939cbddc-610f-4792-bec3-027b1f1c6107', 'עצב הפמורל', false, 4, NOW());


-- Question 27: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c4ff1a72-9903-424e-aa83-c5e8c0d83920',
    'איזה עצב עובר מאחורי הגרון והקנה ומעצבב את הריאות והלב?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'עצב הוואגוס עובר מאחורי הגרון והקנה, מעצבב את כל הריאות, הסימפונות, הלב, הסרעפת ונעצר בקו האגן.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a66adf32-c0ad-436f-b7ab-579e80c44493', 'c4ff1a72-9903-424e-aa83-c5e8c0d83920', 'עצב הוואגוס (Vagus)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5011164b-162c-40c1-9564-fe60cf4229b3', 'c4ff1a72-9903-424e-aa83-c5e8c0d83920', 'עצב הפריניק', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0505dfcf-58a6-450d-910e-29cc3de81726', 'c4ff1a72-9903-424e-aa83-c5e8c0d83920', 'העצב הסימפתטי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('38037170-2a10-4324-82ce-d54ddbdf3714', 'c4ff1a72-9903-424e-aa83-c5e8c0d83920', 'העצב האוקולומוטורי', false, 4, NOW());


-- Question 28: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '8574a1ed-85fc-4282-a06b-d767a780ae29',
    'מהי הסרעפת (Diaphragm)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'הסרעפת היא שריר הנשימה העיקרי, מפרידה בין חלל החזה לחלל הבטן, ומעוצבבת על ידי עצב הפריניק.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('99c417f7-7893-474c-9a27-d34d3240c5f5', '8574a1ed-85fc-4282-a06b-d767a780ae29', 'שריר הנשימה העיקרי המפריד בין בית החזה לבטן', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d9e1e6d0-9b87-475b-9755-44a23443a3a0', '8574a1ed-85fc-4282-a06b-d767a780ae29', 'קרום המקיף את הריאות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('72eb9d0d-2d75-431a-9cca-cc0f89c6f4ec', '8574a1ed-85fc-4282-a06b-d767a780ae29', 'השריר בין הצלעות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b7ccd36e-0f26-461f-a4c0-a32246327576', '8574a1ed-85fc-4282-a06b-d767a780ae29', 'שריר בדופן הבטן', false, 4, NOW());


-- Question 29: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd41396f8-871d-4a2a-8885-8a99f3898fbf',
    'איזה סחוס הוא הטבעת השלמה היחידה בקנה הנשימה?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'הקריקואיד הוא הטבעת העגולה השלמה היחידה בחוליות הגרון והקנה, ונמצאת בתחילת הקנה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0d193001-d028-424a-bd62-6cd314fe3619', 'd41396f8-871d-4a2a-8885-8a99f3898fbf', 'הסחוס הקריקואידי (Cricoid)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a0aa4f93-a32d-4f3b-b134-d07ee88197fc', 'd41396f8-871d-4a2a-8885-8a99f3898fbf', 'הסחוס התירואידי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0dcbe76f-70ef-41db-a434-53a4a978d4ba', 'd41396f8-871d-4a2a-8885-8a99f3898fbf', 'סחוס האפיגלוטיס', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3e94e4f6-7bc0-4c62-96be-19a9db994d0a', 'd41396f8-871d-4a2a-8885-8a99f3898fbf', 'סחוס הארטנואידי', false, 4, NOW());


-- Question 30: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '950e9d8b-6103-4c98-aed1-86b233dbb5cb',
    'מהו Angle of Louise?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'Angle of Louise היא קשת הסטרנום, זוית הנמצאת בין צלע 2 ל-3, שם נמצאת נקודת ההתפצלות של הקנה (הקרינה).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('194227f1-a4ea-4e64-a240-103f82a5b72b', '950e9d8b-6103-4c98-aed1-86b233dbb5cb', 'זוית בין צלע 2 ל-3, נקודת התפצלות הקנה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('12134007-a39b-4adf-8086-78281074fdc2', '950e9d8b-6103-4c98-aed1-86b233dbb5cb', 'הזוית בין הסטרנום לצלע הראשונה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('de506f39-df5d-417c-91f1-c365b470f219', '950e9d8b-6103-4c98-aed1-86b233dbb5cb', 'הזוית בין הסימפונות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a22d9066-3189-4b5d-a757-753c2351d4e4', '950e9d8b-6103-4c98-aed1-86b233dbb5cb', 'הזוית בין הלרינגס לקנה', false, 4, NOW());


-- Question 31: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '994eb4e4-3a65-4bb5-bf0c-e705e9aafd5a',
    'מהו הלרינגס (Larynx)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'הלרינגס הוא החלל הנמצא מתחת ללוע אבל לפני הפיצול בין הושט לקנה, כולל את תיבת הקול, האפיגלוטיס ומיתרי הקול.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0d30785f-2929-4c06-8bf9-a8a063b0ffb6', '994eb4e4-3a65-4bb5-bf0c-e705e9aafd5a', 'חלל תיבת הקול, הכניסה לקנה הנשימה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('98ed3779-5a18-4a81-a9f4-dcb53d0887dc', '994eb4e4-3a65-4bb5-bf0c-e705e9aafd5a', 'הקנה עצמו', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ac25218f-d8e1-4148-9cf5-0c84c0f4c01d', '994eb4e4-3a65-4bb5-bf0c-e705e9aafd5a', 'חלל הפה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d37000b1-9e25-4570-b951-fd65295fcc55', '994eb4e4-3a65-4bb5-bf0c-e705e9aafd5a', 'הסימפונות', false, 4, NOW());


-- Question 32: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd179f7c7-456f-4df2-b0d1-6af6fe3f00f6',
    'מדוע הסימפון הימני רחב יותר מהשמאלי?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'הסימפון הימני רחב וישר יותר, ולכן ב-90% מהמקרים של One Lung Intubation (אינטובציה עמוקה מדי) הטובוס חודר לריאה הימנית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a9a0a29c-9251-42b4-b90d-eeb90f4cd205', 'd179f7c7-456f-4df2-b0d1-6af6fe3f00f6', 'כי ב-90% מהמקרים של אינטובציה עמוקה הטובוס נכנס לסימפון הימני', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3141f1cd-38f1-4d66-81a8-35929d70887e', 'd179f7c7-456f-4df2-b0d1-6af6fe3f00f6', 'כי הריאה הימנית גדולה יותר', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e5f962bf-e6c8-4f44-b768-949842b5a441', 'd179f7c7-456f-4df2-b0d1-6af6fe3f00f6', 'כי יש יותר זרימת דם בצד ימין', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('62809f81-b07b-4438-996e-bb0d6bce9218', 'd179f7c7-456f-4df2-b0d1-6af6fe3f00f6', 'זה לא נכון, הם באותו גודל', false, 4, NOW());


-- Question 33: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '2640d674-a5e8-42c1-ac42-f14f8cb3ee1f',
    'מהו קוטר הקנה הפנימי?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'הקוטר הפנימי של הקנה הוא בערך בקוטר של האצבע הזרת (כ-2 ס"מ).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7eba0635-1e83-47eb-a5e7-64613e3e01ca', '2640d674-a5e8-42c1-ac42-f14f8cb3ee1f', 'בערך כמו האצבע הזרת', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e0758107-6cbb-4f63-84e5-ba16e2edf8b3', '2640d674-a5e8-42c1-ac42-f14f8cb3ee1f', 'בערך כמו האגודל', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a79baa1b-9e69-4352-9f98-d8b794f858eb', '2640d674-a5e8-42c1-ac42-f14f8cb3ee1f', 'בערך כמו האצבע הקטנה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6a1b1053-85e8-4038-8e76-bbe651cff601', '2640d674-a5e8-42c1-ac42-f14f8cb3ee1f', 'בערך 3 ס"מ', false, 4, NOW());


-- Question 34: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'f5ffdb97-bb30-4ac5-99a4-273bf749e8f6',
    'איפה נמצא המקום הכי צר בקנה הנשימה?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'המקום הכי צר בקנה זה הלרינגס, בפרט באזור מיתרי הקול, וזו נקודה קריטית באינטובציה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('947470e0-c40a-4d69-a96a-f4096dd2fd1b', 'f5ffdb97-bb30-4ac5-99a4-273bf749e8f6', 'הלרינגס (מיתרי הקול)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ad74f4fc-91fe-480f-9f6a-5753050f5c75', 'f5ffdb97-bb30-4ac5-99a4-273bf749e8f6', 'הקרינה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('db65d054-9580-4ea7-a511-350e25d5117a', 'f5ffdb97-bb30-4ac5-99a4-273bf749e8f6', 'תחילת הקנה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('976c1354-9528-4dd5-9235-350deac598a9', 'f5ffdb97-bb30-4ac5-99a4-273bf749e8f6', 'הסימפונות', false, 4, NOW());


-- Question 35: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '9e175104-821f-47df-9468-3439f3a14bfc',
    'מהם תאי הפנאומוציטים?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'תאי הפנאומוציטים הם תאים ספציפיים שיוצרים כדורים ומרכיבים את דפנות הנאדיות. יש סוגים שונים, כולל אלו שמייצרים סורפקטנט.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('69c58037-9728-4f66-98a2-4e71fc16f499', '9e175104-821f-47df-9468-3439f3a14bfc', 'תאים ספציפיים שיוצרים את דפנות הנאדיות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6d0ab1fd-e7ac-48a4-bdae-8c295c6ecf2b', '9e175104-821f-47df-9468-3439f3a14bfc', 'תאי דם לבנים בריאות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d7cddec4-b87f-425e-bbb6-b355250b8f5b', '9e175104-821f-47df-9468-3439f3a14bfc', 'תאי השריר בקנה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a734e5bf-8075-48b7-bc74-049bdf79223c', '9e175104-821f-47df-9468-3439f3a14bfc', 'תאי העצב בריאות', false, 4, NOW());


-- Question 36: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1cf86d48-bc57-4097-bd22-bb89b52afd85',
    'מתי מיוצר הסורפקטנט בעובר?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'הסורפקטנט מיוצר בשבוע 32 להריון, וזו אחת הסיבות לבעיות נשימה אצל פגים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('286003ec-8a14-4a1f-9109-a855af48e578', '1cf86d48-bc57-4097-bd22-bb89b52afd85', 'בשבוע 32 להריון', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e37ff2a9-ba85-4c66-9a8e-daf3653d42b4', '1cf86d48-bc57-4097-bd22-bb89b52afd85', 'בשבוע 20 להריון', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ce3409c6-97b2-444d-b85c-4af3fb162fdf', '1cf86d48-bc57-4097-bd22-bb89b52afd85', 'בשבוע 40 להריון', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7ed2a805-edfc-4a9e-bfa0-6b25554c7b65', '1cf86d48-bc57-4097-bd22-bb89b52afd85', 'מיד לאחר הלידה', false, 4, NOW());


-- Question 37: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '29bf48da-6af1-4fcd-99d4-9e2eec90bdf5',
    'מהי הפלאורה הויסרלית?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'הפלאורה הויסרלית היא הקרום הפנימי הצמוד והמחובר חיבור חזק לנאדיות הריאה (לא רק צמוד אלא ממש מחובר בתאים).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('383a4ab1-fd8d-43c8-b908-9e4f2a778c84', '29bf48da-6af1-4fcd-99d4-9e2eec90bdf5', 'הקרום הצמוד והמחובר ישירות לנאדיות הריאה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e122b8b5-079b-4794-a18f-bfc3161bafcd', '29bf48da-6af1-4fcd-99d4-9e2eec90bdf5', 'הקרום הצמוד לדופן החזה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5af66eb8-ace3-4f86-b5e2-4553eb16ec73', '29bf48da-6af1-4fcd-99d4-9e2eec90bdf5', 'הקרום בין שתי הריאות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('eb9e341b-23f6-49bf-8381-0a4d9481cc50', '29bf48da-6af1-4fcd-99d4-9e2eec90bdf5', 'הקרום המקיף את הלב', false, 4, NOW());


-- Question 38: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1fcdb3fa-de33-48ae-817c-7bec99635783',
    'מהי הפלאורה הפריאטלית?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'הפלאורה הפריאטלית היא הקרום החיצוני, מחוברת חיבור ישיר לכלוב הצלעות ולסרעפת, ומגבילה את הריאות בהתרחבותן.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('57aacf6f-6f26-4803-a057-eaf6d61264d0', '1fcdb3fa-de33-48ae-817c-7bec99635783', 'הקרום החיצוני הצמוד לכלוב הצלעות ולסרעפת', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fd5278b0-1412-48df-9b6f-eeb5272dbf4d', '1fcdb3fa-de33-48ae-817c-7bec99635783', 'הקרום הצמוד לריאה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('53c3e3bf-f41c-4e7c-bb34-e5b7d8e64ee8', '1fcdb3fa-de33-48ae-817c-7bec99635783', 'הקרום בתוך הריאה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cc719147-0188-4f5b-a99e-b61a8be7f36b', '1fcdb3fa-de33-48ae-817c-7bec99635783', 'הקרום סביב הלב', false, 4, NOW());


-- Question 39: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '440f114a-ca16-459c-8c2c-a98b67c3d111',
    'מהו החלל הפלאורלי?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'החלל הפלאורלי הוא המרווח הקטן בין שני קרומי הפלאורה, מכיל מעט נוזל למניעת חיכוך ויוצר לחץ תת-אטמוספרי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2c5a7541-728b-4de7-8360-2a86e6c23911', '440f114a-ca16-459c-8c2c-a98b67c3d111', 'החלל הקטן בין שני קרומי הפלאורה המכיל נוזל', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b8e5aba0-ca35-4463-b459-14e4768ca969', '440f114a-ca16-459c-8c2c-a98b67c3d111', 'החלל בתוך הריאה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('dffc6b21-72d7-47f6-acb2-7bc729ada9ee', '440f114a-ca16-459c-8c2c-a98b67c3d111', 'החלל בין שתי הריאות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b4ee0d09-ef3e-4749-88d8-a7ecebedcacd', '440f114a-ca16-459c-8c2c-a98b67c3d111', 'החלל בתוך הסימפונות', false, 4, NOW());


-- Question 40: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'b6ad07c1-721a-4245-bb92-d1ddc364e897',
    'מהו RV (Residual Volume)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'RV (Residual Volume) הוא כמות האוויר שנשארת בריאות גם לאחר נשיפה מקסימלית, ושומר על הריאה פתוחה מעט.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b4fa9afd-fb93-49f9-ac44-26d6af0b57c5', 'b6ad07c1-721a-4245-bb92-d1ddc364e897', 'כמות האוויר שנשארת בריאות גם לאחר נשיפה מקסימלית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2b61c2e1-7324-4831-b2f6-14bd6767f6a9', 'b6ad07c1-721a-4245-bb92-d1ddc364e897', 'כמות האוויר בשאיפה רגילה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('59babd79-e2ab-46a4-9434-cb0fbe81a4df', 'b6ad07c1-721a-4245-bb92-d1ddc364e897', 'כמות האוויר המקסימלית שניתן לשאוף', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0a104d72-eba9-4690-acd2-d44a759f2d1e', 'b6ad07c1-721a-4245-bb92-d1ddc364e897', 'כמות האוויר שעוברת בדקה', false, 4, NOW());


-- Question 41: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'f62aee6a-9a4c-4874-9b02-6ef6c20c236d',
    'מהו TV (Tidal Volume)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'TV (Tidal Volume) הוא נפח הנשימה הרגילה, כמות האוויר שנשאפת ונושפת בנשימה רגילה במנוחה (כ-500 מ"ל).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('774e182a-f220-4d13-8a2c-fb969e3c8a61', 'f62aee6a-9a4c-4874-9b02-6ef6c20c236d', 'נפח הנשימה הרגילה בשאיפה ובנשיפה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6ae2276f-2e78-43e1-b87a-087ec647c06b', 'f62aee6a-9a4c-4874-9b02-6ef6c20c236d', 'הנפח המקסימלי שניתן לשאוף', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2c227cc4-392b-452f-af40-b4d9cd8c3910', 'f62aee6a-9a4c-4874-9b02-6ef6c20c236d', 'הנפח שנשאר בריאות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('54a669fb-0e65-4eb0-a9e8-7cad7a94ea04', 'f62aee6a-9a4c-4874-9b02-6ef6c20c236d', 'סך כל קיבולת הריאה', false, 4, NOW());


-- Question 42: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd8252fe1-d5a4-420d-a35f-6f628a7ae9a0',
    'מהו VC (Vital Capacity)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'VC (Vital Capacity) הוא הנפח המקסימלי המנוצל של הריאה - מה שניתן לשאוף ולנשוף בצורה מקסימלית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('67835297-dc1d-4dce-8183-00c0d7dc3c5a', 'd8252fe1-d5a4-420d-a35f-6f628a7ae9a0', 'הנפח המקסימלי המנוצל של הריאה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7f8857d3-6b60-4f25-9b66-975df21c285f', 'd8252fe1-d5a4-420d-a35f-6f628a7ae9a0', 'נפח הנשימה הרגילה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2dda7541-9f6e-49ed-83e7-8dcd03657ef0', 'd8252fe1-d5a4-420d-a35f-6f628a7ae9a0', 'הנפח שנשאר בריאות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('91b4ff8a-23d3-448b-abb8-a147761b1e80', 'd8252fe1-d5a4-420d-a35f-6f628a7ae9a0', 'כמות האוויר בדקה', false, 4, NOW());


-- Question 43: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '5534398f-70d8-4d03-825a-59640a04e46f',
    'מהו Dead Space (DS)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'Dead Space הוא האוויר שנשאר בחלל האף, הפה, הקנה, הסימפונות - דרכי האוויר שלא משתתפות בחילוף גזים (כ-150 מ"ל).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('052cb187-fc55-424e-96d4-d459236d3eb4', '5534398f-70d8-4d03-825a-59640a04e46f', 'החלק מהאוויר שנשאר בדרכי הנשימה ולא משתתף בחילוף גזים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a69df751-9a70-4dd1-bbf3-142db7ecf5b4', '5534398f-70d8-4d03-825a-59640a04e46f', 'האוויר בריאה שאינו מתפקד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6fc12952-b93f-43f5-8a22-f77df4043660', '5534398f-70d8-4d03-825a-59640a04e46f', 'נפח הנשימה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cb403c6c-4427-4756-935d-955123fca624', '5534398f-70d8-4d03-825a-59640a04e46f', 'האוויר בסימפונות', false, 4, NOW());


-- Question 44: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd51e5bc1-5ad0-4ec9-8de4-f7517af27691',
    'באיזה צד של הלב זורם דם עורקי (עשיר בחמצן)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'הצד השמאלי של הלב (עליה שמאלית וחדר שמאלי) מכיל דם עורקי עשיר בחמצן שחזר מהריאות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('38315817-7d18-497d-91ec-bf28676a208f', 'd51e5bc1-5ad0-4ec9-8de4-f7517af27691', 'בצד השמאלי - עליה שמאלית וחדר שמאלי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('367171b3-4f8e-40a1-b8a4-85d5251255f1', 'd51e5bc1-5ad0-4ec9-8de4-f7517af27691', 'בצד הימני - עליה ימנית וחדר ימני', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4e2a1564-c648-4dab-b8f0-c368502fd344', 'd51e5bc1-5ad0-4ec9-8de4-f7517af27691', 'בשני הצדדים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a5b1cc76-8644-4c31-9600-165027d94fd6', 'd51e5bc1-5ad0-4ec9-8de4-f7517af27691', 'רק בעליות', false, 4, NOW());


-- Question 45: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '2746a14f-73bb-41e5-8ced-bddd7d5514ac',
    'באיזה צד של הלב זורם דם ורידי (עני בחמצן)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'הצד הימני של הלב (עליה ימנית וחדר ימני) מכיל דם ורידי עני בחמצן שחזר מהגוף.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5d7f20e8-a328-446c-a000-d9af5768e824', '2746a14f-73bb-41e5-8ced-bddd7d5514ac', 'בצד הימני - עליה ימנית וחדר ימני', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2e7dbe31-978a-4fde-b78f-1fc3c6eb85c3', '2746a14f-73bb-41e5-8ced-bddd7d5514ac', 'בצד השמאלי - עליה שמאלית וחדר שמאלי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1a20212e-297c-4845-af3c-07d6e9739d01', '2746a14f-73bb-41e5-8ced-bddd7d5514ac', 'בשני הצדדים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c8eae989-3072-4430-b137-bdd77c9554a3', '2746a14f-73bb-41e5-8ced-bddd7d5514ac', 'רק בחדרים', false, 4, NOW());


-- Question 46: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '8da4a620-7398-4f42-9a50-82ce81d735bd',
    'מהי החריג האנטומי בעורק הפולמונרי?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'עורק הריאה (פולמונרי) הוא חריג - זהו עורק שמוביל דם ורידי (לא מחומצן) מהחדר הימני לריאות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8a4d44bb-eb9a-4715-94c8-05663e593766', '8da4a620-7398-4f42-9a50-82ce81d735bd', 'זהו עורק שמוביל דם ורידי (לא מחומצן)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('95d0c6d9-aed0-49e3-b034-dcd2598bc568', '8da4a620-7398-4f42-9a50-82ce81d735bd', 'זהו הוריד הגדול ביותר', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('66c42d92-0b32-4957-8a0b-fb4e796855a8', '8da4a620-7398-4f42-9a50-82ce81d735bd', 'הוא מחובר לשני החדרים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5add3a8a-9bd8-4627-b901-868c876ec844', '8da4a620-7398-4f42-9a50-82ce81d735bd', 'אין בו מסתמים', false, 4, NOW());


-- Question 47: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '2aadef6d-ee15-4aeb-85a0-9c54369c226f',
    'מהי החריג האנטומי בורידי הריאה?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'ורידי הריאה הם חריגים - אלו ורידים שמובילים דם עורקי (עשיר בחמצן) מהריאות לעליה השמאלית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fc776050-d4fe-4f68-9d8c-63a0942c7478', '2aadef6d-ee15-4aeb-85a0-9c54369c226f', 'אלו ורידים שמובילים דם עורקי (מחומצן)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('49becd3b-a2d9-4ad0-aa8a-57861603b7ce', '2aadef6d-ee15-4aeb-85a0-9c54369c226f', 'אלו העורקים הגדולים ביותר', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f0d9d627-7518-4ae1-8788-170ded295456', '2aadef6d-ee15-4aeb-85a0-9c54369c226f', 'הם מחוברים לחדר הימני', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('669ab71a-81cc-4ef4-a6ab-ff16482c7c35', '2aadef6d-ee15-4aeb-85a0-9c54369c226f', 'אין בהם מסתמים', false, 4, NOW());


-- Question 48: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '6c6ccafb-7b2d-40e2-a7a2-75762676560e',
    'איזה מבנה אנטומי מקשר בין הלב לריאות?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'עורק הריאה מוביל דם מהחדר הימני לריאות, וורידי הריאה מחזירים דם מחומצן מהריאות לעליה השמאלית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ef24c11a-6b7b-4f52-a264-bc67497c771c', '6c6ccafb-7b2d-40e2-a7a2-75762676560e', 'עורק הריאה (פולמונרי) וורידי הריאה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5c2e1528-5f03-4f81-b41c-6338d3df1097', '6c6ccafb-7b2d-40e2-a7a2-75762676560e', 'האאורטה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('858d3e03-725c-4888-819c-47b272ba8e61', '6c6ccafb-7b2d-40e2-a7a2-75762676560e', 'Vena Cava', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('64cdc3d4-fb57-4c87-9d93-f99ba0c25279', '6c6ccafb-7b2d-40e2-a7a2-75762676560e', 'העורקים הכליליים', false, 4, NOW());


-- Question 49: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ae90cca0-5d6b-4f1a-bc7d-2c1c3c1a12d9',
    'כמה ורידים חוזרים מכל ריאה ללב?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'בשער הריאה יהיו סימפון, עורק ושני ורידים - כל הצינורות של הריאה הולכים אותו דבר וחוזרים אותו דבר, מלבד העובדה שיש עורק אחד אבל שני ורידים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d6ec928b-bb8a-46d6-acdd-cabbc1a83245', 'ae90cca0-5d6b-4f1a-bc7d-2c1c3c1a12d9', 'שני ורידים מכל ריאה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4d330568-3228-433d-a9d0-0f7c2dd2ad50', 'ae90cca0-5d6b-4f1a-bc7d-2c1c3c1a12d9', 'וריד אחד מכל ריאה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ff5cebc7-f96e-4ddc-86bc-c3d99a3d7528', 'ae90cca0-5d6b-4f1a-bc7d-2c1c3c1a12d9', 'שלושה ורידים מכל ריאה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('68258c35-e081-4bb2-8368-71d430c084cc', 'ae90cca0-5d6b-4f1a-bc7d-2c1c3c1a12d9', 'ארבעה ורידים מכל ריאה', false, 4, NOW());


-- Question 50: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '9e4587be-3e4b-4d15-933a-cccfe39d91e1',
    'מהו Adam''s Apple (גרוגרת)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'Adam''s Apple (הגרוגרת) היא הבליטה הבולטת של הסחוס התירואידי, והקנה מתחיל מתחתיה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c9df5d3f-c93b-4e83-b141-d2d99f97eb72', '9e4587be-3e4b-4d15-933a-cccfe39d91e1', 'הבליטה של הסחוס התירואידי בצוואר', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6fbd5a9a-2e74-4acd-959f-f9246e67bea9', '9e4587be-3e4b-4d15-933a-cccfe39d91e1', 'האפיגלוטיס', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('59323093-a1b5-4acc-8e4e-c866c2250197', '9e4587be-3e4b-4d15-933a-cccfe39d91e1', 'מיתרי הקול', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6fe94d22-916c-4f02-b22a-c2064a56eec4', '9e4587be-3e4b-4d15-933a-cccfe39d91e1', 'הסחוס הקריקואידי', false, 4, NOW());


-- Question 51: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '371d4807-d510-4817-b53b-ca6596e58c33',
    'מהו הושט (Esophagus)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'הוושט הוא צינור שרירי באורך 40 ס"מ העובר בחלק האחורי של בית החזה (מאחורי קנה הנשימה) ומוביל אוכל לקיבה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cf0a25eb-4435-4fae-9af4-a5fabde1beac', '371d4807-d510-4817-b53b-ca6596e58c33', 'צינור שרירי באורך 40 ס"מ המוביל אוכל לקיבה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('51507b0b-71d1-495c-9596-9cf3f7ac09c9', '371d4807-d510-4817-b53b-ca6596e58c33', 'קנה הנשימה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a3e0b2e0-7ee8-4259-9e47-1635caf2868e', '371d4807-d510-4817-b53b-ca6596e58c33', 'חלק מדרכי הנשימה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('74049cb1-0cc3-4766-b882-c51244fd70c5', '371d4807-d510-4817-b53b-ca6596e58c33', 'סימפון גדול', false, 4, NOW());


-- Question 52: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '6e9008c2-21e8-49de-8bc1-268a1b6d1147',
    'למה לקנה הנשימה יש פתח בצד האחורי (לא טבעת סגורה)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'הסחוסים של הקנה פתוחים בצד האחורי (לכיוון הוושט) כדי לאפשר לוושט להתרחב על חשבון הקנה בזמן בליעת אוכל גדול.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('244c171e-7c30-45f1-b21b-d3e63163c935', '6e9008c2-21e8-49de-8bc1-268a1b6d1147', 'כדי לאפשר לוושט להתרחב על חשבון הקנה בזמן בליעה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('015d65bd-b0ed-4214-91a9-28fec33af5ec', '6e9008c2-21e8-49de-8bc1-268a1b6d1147', 'כדי לאפשר לקנה להתכווץ', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b6e2306e-2cd4-41c3-90df-752b5ecba2e7', '6e9008c2-21e8-49de-8bc1-268a1b6d1147', 'כדי לאפשר מעבר עצבים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d22b308a-fc17-4f74-87a6-577c3f90f5ad', '6e9008c2-21e8-49de-8bc1-268a1b6d1147', 'זה פגם אנטומי', false, 4, NOW());


-- Question 53: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '70094dfd-67ea-4875-b1bb-2310f3185413',
    'מהם הברורצפטורים (Baroreceptors) בריאה?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'הברורצפטורים בדפנות הריאה מזהים מתיחה ושולחים מסר למרכז הבקרה הנשימתי להפסיק/להמשיך כיווץ שרירים בהתאם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('87ecadf1-6e3b-459c-8279-688d7992efe3', '70094dfd-67ea-4875-b1bb-2310f3185413', 'רצפטורים בדפנות הריאה שמזהים מתיחה ושולחים מסר למרכז הנשימה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f66a07eb-4629-4bb6-8783-79cd41bb1eec', '70094dfd-67ea-4875-b1bb-2310f3185413', 'רצפטורים למדידת לחץ דם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7ae144fe-7f5c-44ad-a23f-2be57fb4ba23', '70094dfd-67ea-4875-b1bb-2310f3185413', 'רצפטורים לחמצן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('46b998bd-5571-4238-8c6a-99f953af6d96', '70094dfd-67ea-4875-b1bb-2310f3185413', 'רצפטורים לטמפרטורה', false, 4, NOW());


-- Question 54: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '29bccc25-201e-4631-8df8-076b5a89b5e3',
    'איפה נמצא מרכז הנשימה?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'מרכז הנשימה נמצא במוח - יש Medullary Respiratory Center במדולה ו-Pontine Respiratory Group בפונס.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8c94e576-effa-4fa4-8f1e-c82a8dfa6945', '29bccc25-201e-4631-8df8-076b5a89b5e3', 'במח, במדולה ובפונס', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('96648222-7a3d-4190-8c51-2a021ed8c557', '29bccc25-201e-4631-8df8-076b5a89b5e3', 'בחוט השדרה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fcb44ec5-6ea7-41b6-b57f-0f84d5567fc5', '29bccc25-201e-4631-8df8-076b5a89b5e3', 'בריאות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('64795d3b-4fbe-4611-b518-ae992d75ff0b', '29bccc25-201e-4631-8df8-076b5a89b5e3', 'בסרעפת', false, 4, NOW());


-- Question 55: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd4119e12-41d5-4e94-a0fc-a24609217358',
    'מהם שרירי הנשימה הנוספים (מלבד הסרעפת)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'מלבד הסרעפת, שרירי הצלעות (Intercostal Muscles) משתתפים בתהליך הנשימה, בעיקר בשאיפה עמוקה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('93ffc2f6-6aa4-44f5-b8f0-7d23e314afe6', 'd4119e12-41d5-4e94-a0fc-a24609217358', 'שרירי הצלעות (Intercostal Muscles)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9c763ce3-a54f-4c93-8ede-da6c97450c0e', 'd4119e12-41d5-4e94-a0fc-a24609217358', 'שרירי הבטן בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('80fa914c-5914-4154-931d-7ac053713503', 'd4119e12-41d5-4e94-a0fc-a24609217358', 'שרירי הצוואר בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8b4a0213-442c-43a5-a28d-8789cc7faf32', 'd4119e12-41d5-4e94-a0fc-a24609217358', 'שרירי הגב', false, 4, NOW());


-- Question 56: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '284557f2-b21e-4ad5-b6ec-fa159542ee92',
    'מהו Conducting Zone?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'Conducting Zone (החלק המוביל) כולל את קנה הנשימה, סימפונות וסימפוניות שאינן משתתפות בחילוף הגזים - רק מובילות אוויר.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('085afdb9-402b-4d69-a914-8866fbb47991', '284557f2-b21e-4ad5-b6ec-fa159542ee92', 'החלק המוביל בדרכי הנשימה שלא משתתף בחילוף גזים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('056ef0f6-ad73-4916-9cd5-5dbaab0f340e', '284557f2-b21e-4ad5-b6ec-fa159542ee92', 'החלק בריאות שמבצע חילוף גזים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2591e6b8-1592-488c-9e7d-0205604a6ae5', '284557f2-b21e-4ad5-b6ec-fa159542ee92', 'מערכת העצבים המעצבבת את הריאות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ba38d6a9-bb48-4678-8b92-d13b56e6625e', '284557f2-b21e-4ad5-b6ec-fa159542ee92', 'כלי הדם בריאות', false, 4, NOW());


-- Question 57: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ce645762-9720-4288-a7c3-67c2d9932186',
    'מהו Respiratory Zone?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'Respiratory Zone הוא החלק הנשימתי שמשתתף בחילוף גזים, כולל את הנאדיות והסימפוניות הקטנות ביותר.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('283f35e7-ec4a-4ce2-a2fb-07eaf7134d51', 'ce645762-9720-4288-a7c3-67c2d9932186', 'החלק הנשימתי שמשתתף בחילוף גזים - הנאדיות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2b0ad363-c7f4-4f2f-b493-13749613778e', 'ce645762-9720-4288-a7c3-67c2d9932186', 'הקנה והסימפונות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('24fd1852-7942-49eb-bb1d-0c39c4679d4a', 'ce645762-9720-4288-a7c3-67c2d9932186', 'דרכי האוויר העליונות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6ed4b931-4149-4905-8f38-7ac68bb457ee', 'ce645762-9720-4288-a7c3-67c2d9932186', 'הלרינגס והגרון', false, 4, NOW());


-- Question 58: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '7261ecc8-1603-4997-9434-0aa5ad40cb2d',
    'מהי המחיצה החדרית (Cardiac Septum)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'המחיצה החדרית (Cardiac Septum) מפרידה בין החדר הימני לשמאלי ומונעת התערבבות דם עורקי וורידי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1802da52-1f1e-43a2-a9d9-e5c2adef1be6', '7261ecc8-1603-4997-9434-0aa5ad40cb2d', 'המחיצה המפרידה בין החדר הימני לחדר השמאלי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7737fd5e-4bef-4bd1-b47a-fdbb66b3f44c', '7261ecc8-1603-4997-9434-0aa5ad40cb2d', 'המחיצה בין העליות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('31fe638d-1ff0-487d-abb9-d069f60abf1e', '7261ecc8-1603-4997-9434-0aa5ad40cb2d', 'המסתם בין העליה לחדר', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('834d8525-2cc2-40b5-87c7-aaa062520dfe', '7261ecc8-1603-4997-9434-0aa5ad40cb2d', 'דופן הלב החיצונית', false, 4, NOW());


-- Question 59: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '768c4ac6-f31e-4e51-898e-31faf5a98711',
    'מהי בלוטת התריס (Thyroid)?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'בלוטת התירואיד ממוקמת בחלקו הקדמי של הצוואר, קדמית לקנה הנשימה ומתחת לסחוס הקריקואיד.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2b64cb11-8fb0-4869-9a6a-675b408b75e6', '768c4ac6-f31e-4e51-898e-31faf5a98711', 'בלוטה בחלקו הקדמי של הצוואר, קדמית לקנה הנשימה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('edb0112a-10f1-4ddb-a949-771cac4169db', '768c4ac6-f31e-4e51-898e-31faf5a98711', 'בלוטה מאחורי הלב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('014330de-dddf-49b9-8034-b55d5003fec4', '768c4ac6-f31e-4e51-898e-31faf5a98711', 'בלוטה בבטן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5fc0a424-c094-4dae-9ae0-5bad0e22a082', '768c4ac6-f31e-4e51-898e-31faf5a98711', 'בלוטה במוח', false, 4, NOW());


-- Question 60: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '593cefde-77b9-4156-aa3f-0eaec963e14c',
    'מהם Gap Junctions בין תאים?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'Gap Junctions הם חיבורים שהם גם מעבר - תעלות חלבוניות המקשרות את התאים ומאפשרות העברת יונים ומסרים, נפוצים בלב.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6323c700-5126-4871-ae4d-b3c018d31ba7', '593cefde-77b9-4156-aa3f-0eaec963e14c', 'חיבור שהוא מעבר - תעלות חלבוניות המקשרות תאים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4b179a9b-856e-4847-8b72-46a31d67402e', '593cefde-77b9-4156-aa3f-0eaec963e14c', 'חיבור הדבקה בין תאים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('61c33044-4170-44ad-953b-7a03d5c34402', '593cefde-77b9-4156-aa3f-0eaec963e14c', 'מרווח ריק בין תאים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('947626ca-2543-45ab-9f89-a6e5ff6be46f', '593cefde-77b9-4156-aa3f-0eaec963e14c', 'סוג של ממברנה', false, 4, NOW());


-- Question 61: אנטומיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a8a6366f-ffbc-44af-9f75-4a323b35ec61',
    'מהו Intercalated Disc?',
    (SELECT id FROM public.categories WHERE name = 'אנטומיה' LIMIT 1),
    'pending',
    'Intercalated Disc הוא חיבור בין תאים סמוכים בשריר הלב, צורתו כדיסק מרחבי ומכיל סיבי חלבון משותפים, נמצא בלב.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0b20adac-cd19-4e63-a13a-638b30184f00', 'a8a6366f-ffbc-44af-9f75-4a323b35ec61', 'חיבור ייחודי בין תאי שריר הלב בצורת דיסק מרחבי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e8edc6bb-3ab5-42ca-960c-28891b33342a', 'a8a6366f-ffbc-44af-9f75-4a323b35ec61', 'חיבור בין עצבים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6e0fe1f5-9c3f-42a2-a5c6-e6cbee599ca5', 'a8a6366f-ffbc-44af-9f75-4a323b35ec61', 'מסתם בלב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9cd342ec-1fa0-4b27-b855-53ffe0c31d48', 'a8a6366f-ffbc-44af-9f75-4a323b35ec61', 'חלק מהפריקרד', false, 4, NOW());


-- Question 62: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '8b748472-e4fa-474b-98c6-a37a72f0e56c',
    'מהו Cardiac Output?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'Cardiac Output הוא כמות הדם שהלב שואב בדקה אחת, ומחושב כמכפלה של קצב הלב ב-Stroke Volume.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bab6cba7-c04d-4ff1-b586-92e47763e899', '8b748472-e4fa-474b-98c6-a37a72f0e56c', 'כמות הדם שהלב מוציא בדקה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('65576734-a091-4e4f-a94e-b79e7b171a1c', '8b748472-e4fa-474b-98c6-a37a72f0e56c', 'כמות הדם שהלב מכיל בכל רגע', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9fc31e79-01ea-425e-98be-c0c3a6bba838', '8b748472-e4fa-474b-98c6-a37a72f0e56c', 'לחץ הדם בעורקים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f00b2643-aec8-4275-912b-4768be80b631', '8b748472-e4fa-474b-98c6-a37a72f0e56c', 'קצב פעימות הלב בדקה', false, 4, NOW());


-- Question 63: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '26e69fbe-1eb5-4d9d-a906-130bf579c242',
    'מהו Stroke Volume?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'Stroke Volume הוא כמות הדם שהחדרים מצליחים להוציא החוצה בסחיטה אחת, כלומר בפעימה אחת.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('44ec6399-059f-4187-8ab9-276d66df683a', '26e69fbe-1eb5-4d9d-a906-130bf579c242', 'כמות הדם שהחדרים מוציאים בפעימה אחת', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('71bfb182-5393-4bf3-a229-f600e7674e78', '26e69fbe-1eb5-4d9d-a906-130bf579c242', 'כמות הדם הכוללת בגוף', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('956a5984-3dc5-4b8f-924f-6435081646a7', '26e69fbe-1eb5-4d9d-a906-130bf579c242', 'קצב הלב בדקה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e1fe15d5-d387-4cbf-abd2-15dff2b6117f', '26e69fbe-1eb5-4d9d-a906-130bf579c242', 'לחץ הדם הסיסטולי', false, 4, NOW());


-- Question 64: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '292dbc1b-a7fe-4bb1-a82e-2805ec616cfb',
    'מהו Preload?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'Preload הוא הלחץ שנוצר על דפנות החדר בסוף הדיאסטולה, ולפי חוק סטרלינג הוא הגורם המכריע ב-Stroke Volume.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c2d79c18-e0d1-4c03-85e4-e70497a55ca2', '292dbc1b-a7fe-4bb1-a82e-2805ec616cfb', 'הלחץ על דפנות החדר בסוף הדיאסטולה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('82aa276f-0070-409c-93c6-b9fc675dbf2e', '292dbc1b-a7fe-4bb1-a82e-2805ec616cfb', 'הלחץ בעורקים בזמן הסיסטולה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a5c1efb8-9e08-4274-a95a-e94b3d5f671e', '292dbc1b-a7fe-4bb1-a82e-2805ec616cfb', 'כוח התכווצות שריר הלב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7d54fa0d-dc19-4eaf-99aa-0f0bf5c39e36', '292dbc1b-a7fe-4bb1-a82e-2805ec616cfb', 'התנגודת בכלי הדם', false, 4, NOW());


-- Question 65: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'e58acc3a-3e3d-4ce6-a015-78e9ccb24c0b',
    'מהו Afterload?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'Afterload הוא הלחץ שעל החדר להפעיל כדי לפתוח את המסתמים האורטלי/פולמונרי, והוא למעשה לחץ הדם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('55d66227-e999-4112-9214-76be7c392a15', 'e58acc3a-3e3d-4ce6-a015-78e9ccb24c0b', 'הלחץ שעל החדר להפעיל כדי לפתוח את המסתמים האורטלי/פולמונרי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3d77e99b-861b-4e80-ac38-d7495f908d09', 'e58acc3a-3e3d-4ce6-a015-78e9ccb24c0b', 'הלחץ בעליות בזמן הדיאסטולה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('69459498-3338-4766-8885-b6f70316e8ac', 'e58acc3a-3e3d-4ce6-a015-78e9ccb24c0b', 'כמות הדם הנותרת בחדר לאחר הסיסטולה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2895ca01-9ff5-4299-ab9c-bea7275eed02', 'e58acc3a-3e3d-4ce6-a015-78e9ccb24c0b', 'קצב פעימות הלב', false, 4, NOW());


-- Question 66: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'f9f0b8cc-b1fb-4f93-99e1-667c72ed4621',
    'מהו תפקיד המערכת הסימפתטית על הלב?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'המערכת הסימפתטית מגבירה את קצב הלב (chronotropic) ואת כוח ההתכווצות (inotropic).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('39a1af55-c2b2-434c-aab5-70d96a20c731', 'f9f0b8cc-b1fb-4f93-99e1-667c72ed4621', 'מגבירה את קצב הלב וכוח ההתכווצות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('eb8bf790-bc35-4b05-af01-c2dad0b34453', 'f9f0b8cc-b1fb-4f93-99e1-667c72ed4621', 'מאטה את קצב הלב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('595d0acd-9fbe-4da0-915d-329b22c004f9', 'f9f0b8cc-b1fb-4f93-99e1-667c72ed4621', 'מפחיתה את כוח ההתכווצות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1b2e2973-a54d-4689-827e-532f14547093', 'f9f0b8cc-b1fb-4f93-99e1-667c72ed4621', 'לא משפיעה על הלב', false, 4, NOW());


-- Question 67: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a663d472-5910-4418-8bdc-d548d5784514',
    'מהו ה-Cardiac Cycle?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'Cardiac Cycle הוא פעימה אחת שבה נראים דיאסטולה (מילוי) וסיסטולה (התכווצות) של החדרים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c853d452-2886-439d-afa3-96fd661d8b97', 'a663d472-5910-4418-8bdc-d548d5784514', 'פעימה אחת הכוללת דיאסטולה וסיסטולה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('69ddd9ab-25ab-486d-a5c7-cef4db667aab', 'a663d472-5910-4418-8bdc-d548d5784514', 'זמן מילוי החדרים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c24c2a61-540f-437a-a4c4-e432c9d4bea1', 'a663d472-5910-4418-8bdc-d548d5784514', 'זמן התכווצות החדרים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d73d6f8c-7d6a-4c83-a17e-c98f0f27583f', 'a663d472-5910-4418-8bdc-d548d5784514', 'זמן חזרת הדם לעליות', false, 4, NOW());


-- Question 68: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '51de729f-cfb4-4ad4-8031-71335d0488e5',
    'איך מחושב לחץ הדם?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'לחץ הדם מחושב כמכפלה של Cardiac Output בהתנגודת כלי הדם המערכתית (Systemic Vascular Resistance).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e35c94a0-44a0-41b3-83ce-5aa9e565bc39', '51de729f-cfb4-4ad4-8031-71335d0488e5', 'Cardiac Output × Systemic Vascular Resistance', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d84eed58-145f-4fa7-aeb9-9a3fb5dfe2e4', '51de729f-cfb4-4ad4-8031-71335d0488e5', 'Heart Rate × Stroke Volume', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6df39adc-836d-4d65-8df6-7356297ff03c', '51de729f-cfb4-4ad4-8031-71335d0488e5', 'Preload × Afterload', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('22ee7686-90be-4ee1-96f2-60cc73abfcad', '51de729f-cfb4-4ad4-8031-71335d0488e5', 'Systolic pressure - Diastolic pressure', false, 4, NOW());


-- Question 69: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1787a691-6623-4429-a556-904c2c45a953',
    'איזה אלקטרוליט הוא העיקרי במרווח הבין-תאי?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'נתרן (Na+) הוא יון חיובי עיקרי במרווח הבין-תאי ואחראי על איזון נוזלים ופעילות חשמלית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d583950f-f4f0-4ba9-9bcc-eaef46839fdf', '1787a691-6623-4429-a556-904c2c45a953', 'נתרן (Sodium)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b2ee8be9-39df-41f2-8274-e7dcefa4bfbc', '1787a691-6623-4429-a556-904c2c45a953', 'אשלגן (Potassium)', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2da7bde4-b365-4f50-8113-7bab6ec198ff', '1787a691-6623-4429-a556-904c2c45a953', 'סידן (Calcium)', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1bc16531-2e27-4b67-96c6-813663897374', '1787a691-6623-4429-a556-904c2c45a953', 'מגנזיום (Magnesium)', false, 4, NOW());


-- Question 70: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '41dc91ac-9af4-4182-834c-7dacfa3189f8',
    'איפה מתרחש חילוף הגזים בריאות?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'חילוף הגזים מתרחש בנאדיות הריאה (Alveoli) שם מתבצע מעבר של חמצן ל-CO2.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a9af2c73-52f1-4651-8d23-3982ffc95206', '41dc91ac-9af4-4182-834c-7dacfa3189f8', 'בנאדיות (Alveoli)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2e59a721-928f-4a49-938f-06169d46df2a', '41dc91ac-9af4-4182-834c-7dacfa3189f8', 'בסימפונות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4402c698-63a2-4be4-b35c-97350ff3960b', '41dc91ac-9af4-4182-834c-7dacfa3189f8', 'בקנה (Trachea)', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('74fca5c4-d312-43db-bf7d-4e32bd425398', '41dc91ac-9af4-4182-834c-7dacfa3189f8', 'בגרון (Larynx)', false, 4, NOW());


-- Question 71: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '31e01d9b-075a-4152-a7d4-a79a1db0bf98',
    'מהי Respiratory Acidosis?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'Respiratory Acidosis היא חמצת נשימתית שנגרמת מייצור מוגבר של CO2 או אי יכולת להפטר ממנו.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6e7d13b8-c085-4232-b7ab-a5d99d56f91c', '31e01d9b-075a-4152-a7d4-a79a1db0bf98', 'חמצת נשימתית עקב ייצור מוגבר של CO2', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('95bfdcea-7cea-4681-aa41-aee58b73e60a', '31e01d9b-075a-4152-a7d4-a79a1db0bf98', 'בססת נשימתית עקב הורדת CO2', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5fa0581e-108b-4c81-b436-279ad4efd871', '31e01d9b-075a-4152-a7d4-a79a1db0bf98', 'חמצת מטבולית עקב צבירת חומצות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8c10e6f6-3ba2-4e98-b7ef-13a0a03dfd9e', '31e01d9b-075a-4152-a7d4-a79a1db0bf98', 'בססת מטבולית עקב איבוד חומצות', false, 4, NOW());


-- Question 72: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '01a85298-c8b7-478a-bf21-849160e9c1c6',
    'מהי Respiratory Alkalosis?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'Respiratory Alkalosis נגרמת כאשר החולה מוריד את רמת ה-CO2 עקב היפרוונטילציה (נשימה מוגברת).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('474ffcc0-119c-4802-aa90-4a4bfd45e0ed', '01a85298-c8b7-478a-bf21-849160e9c1c6', 'בססת נשימתית עקב הורדת רמת CO2 (היפרוונטילציה)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8d9fab92-2f8c-432f-a363-9c6a789fee0e', '01a85298-c8b7-478a-bf21-849160e9c1c6', 'חמצת נשימתית עקב עלייה ב-CO2', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6b135c54-3f44-4357-981a-0041c7c263da', '01a85298-c8b7-478a-bf21-849160e9c1c6', 'בססת מטבולית עקב נטילת בסיסים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0417ecfc-127c-4ad1-af5c-03f17d15036a', '01a85298-c8b7-478a-bf21-849160e9c1c6', 'חמצת מטבולית עקב כשל כלייתי', false, 4, NOW());


-- Question 73: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ce4a9fc8-e092-49d6-8236-a68ec9be60bd',
    'כיצד הנשמה בלחץ חיובי משפיעה על הפיזיולוגיה הקרדיווסקולרית?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'הנשמה בלחץ חיובי מקטינה את ה-Preload (מקטינה החזר ורידי) ואת ה-Afterload (לחץ על החדרים בסיסטולה).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4076be09-c487-4bc9-aee8-0b32688fcdd5', 'ce4a9fc8-e092-49d6-8236-a68ec9be60bd', 'מקטינה Preload ו-Afterload', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ddbe851a-2d05-4ba1-ad30-7935c5b45cca', 'ce4a9fc8-e092-49d6-8236-a68ec9be60bd', 'מגדילה Preload ו-Afterload', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bc0648cf-ebcd-46e1-b63e-b27c45977b24', 'ce4a9fc8-e092-49d6-8236-a68ec9be60bd', 'מגדילה Preload ומקטינה Afterload', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ea6de2a1-d825-4db4-8189-c91b336e5c59', 'ce4a9fc8-e092-49d6-8236-a68ec9be60bd', 'לא משפיעה על הפרמטרים המודינמיים', false, 4, NOW());


-- Question 74: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'e255b7d1-39bb-4bc5-9f17-4ebbd184e191',
    'מהו תפקיד ההמוגלובין בתאי הדם האדומים?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'ההמוגלובין הוא חלבון בתאי הדם האדומים שנושא חמצן מהריאות לרקמות ומסייע בהובלת CO2 חזרה לריאות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('176fc8f7-0311-4fe6-9e60-84ef0f203237', 'e255b7d1-39bb-4bc5-9f17-4ebbd184e191', 'הולך חמצן מהריאות לרקמות ו-CO2 חזרה לריאות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8e1ab117-525b-4a07-9287-4e11bddc9a5a', 'e255b7d1-39bb-4bc5-9f17-4ebbd184e191', 'מייצר תאי דם חדשים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bafc402f-5e9e-4a48-bb9d-02a4c7674e9c', 'e255b7d1-39bb-4bc5-9f17-4ebbd184e191', 'מונע דימום', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('89eba99b-80f4-48f7-b209-4a8c4b6a4875', 'e255b7d1-39bb-4bc5-9f17-4ebbd184e191', 'הורס חיידקים', false, 4, NOW());


-- Question 75: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '24b3e393-dedd-471c-af24-7848d2598e89',
    'מהו pH תקין בדם עורקי?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'ה-pH התקין בדם עורקי הוא 7.35-7.45, זהו טווח צר מאוד שהגוף שומר עליו באמצעות מנגנוני איזון.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('43c5c317-62bd-4034-9d5e-d7e744d46148', '24b3e393-dedd-471c-af24-7848d2598e89', '7.35-7.45', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('466d6dbc-4443-4416-a733-819cdeb4c329', '24b3e393-dedd-471c-af24-7848d2598e89', '7.0-7.2', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c0fce55c-f77b-43c6-983f-40232fdb0996', '24b3e393-dedd-471c-af24-7848d2598e89', '7.5-7.7', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4e325fd9-2124-4b66-bfae-3b364546ab0f', '24b3e393-dedd-471c-af24-7848d2598e89', '6.8-7.0', false, 4, NOW());


-- Question 76: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'bfe17907-5480-48a5-87b8-905a7de14fbe',
    'מהו תפקיד הכליות באיזון חומצה-בסיס?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'הכליות מווסתות את איזון החומצה-בסיס על ידי הפרשה או שימור של ביקרבונט והפרשת חומצות בשתן.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('42aacc93-99ba-40bf-855c-69aa00bb2e50', 'bfe17907-5480-48a5-87b8-905a7de14fbe', 'מפרישות או שומרות ביקרבונט ומפרישות חומצות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8ded035f-21b5-4615-817e-cb35b9cc531a', 'bfe17907-5480-48a5-87b8-905a7de14fbe', 'מפרישות רק חמצן', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4a1d8bc5-79f0-47c0-a2a4-028897a783e6', 'bfe17907-5480-48a5-87b8-905a7de14fbe', 'מווסתות רק לחץ דם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('702a2dc5-8406-4a8f-b45b-547dc250d8ee', 'bfe17907-5480-48a5-87b8-905a7de14fbe', 'אין להן תפקיד באיזון חומצה-בסיס', false, 4, NOW());


-- Question 77: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '2f2b26bb-b68e-41fe-9801-02de6a123f7f',
    'מה קורה בשלב הדיאסטולה של מחזור הלב?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'בדיאסטולה החדרים נרגעים ומתמלאים בדם מהעליות, זהו שלב המנוחה והמילוי של הלב.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7ff3d9a2-2d37-425d-8d27-27e779339d6f', '2f2b26bb-b68e-41fe-9801-02de6a123f7f', 'החדרים מתמלאים בדם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('70bd89bc-553f-4ac5-afc9-8f70fd2d9d06', '2f2b26bb-b68e-41fe-9801-02de6a123f7f', 'החדרים מתכווצים ומוציאים דם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c96a56ff-9516-40c8-aafe-35c792a3e2c9', '2f2b26bb-b68e-41fe-9801-02de6a123f7f', 'המסתמים האורטלי והפולמונרי נפתחים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0cf1c17b-334e-484a-a102-6d00078a7c07', '2f2b26bb-b68e-41fe-9801-02de6a123f7f', 'העליות מתכווצות בלבד', false, 4, NOW());


-- Question 78: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '0733b930-8bf1-4948-a033-4a963d361a13',
    'מה קורה בשלב הסיסטולה של מחזור הלב?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'בסיסטולה החדרים מתכווצים ודוחפים דם החוצה - החדר השמאלי לאאורטה והימני לעורק הריאתי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('073da101-0eea-46b7-873e-d7676cc84d5d', '0733b930-8bf1-4948-a033-4a963d361a13', 'החדרים מתכווצים ומוציאים דם לעורקים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('16067170-32bf-4822-a6bd-ecf0766d1219', '0733b930-8bf1-4948-a033-4a963d361a13', 'החדרים מתמלאים בדם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e13f1e8a-a4d7-400e-9108-67f15e9a0509', '0733b930-8bf1-4948-a033-4a963d361a13', 'העליות מתרוקנות בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cbab5fb4-d409-44a6-a0be-b698b2d2c079', '0733b930-8bf1-4948-a033-4a963d361a13', 'הלב נמצא במנוחה מוחלטת', false, 4, NOW());


-- Question 79: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '438eb726-765e-40d2-a65b-b9a3fe1d4af0',
    'מהו תפקיד המערכת הפרא-סימפתטית על הלב?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'המערכת הפרא-סימפתטית (עצב ווגוס) מאטה את קצב הלב ומפחיתה את כוח ההתכווצות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2602ce22-0514-4d13-b11d-f0b001800803', '438eb726-765e-40d2-a65b-b9a3fe1d4af0', 'מאטה את קצב הלב ומפחיתה כוח התכווצות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fd87e1cb-53a6-4003-abe3-7abe7980b236', '438eb726-765e-40d2-a65b-b9a3fe1d4af0', 'מאיצה את קצב הלב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9d395847-d438-4c23-b3b5-a27c7c4c53cf', '438eb726-765e-40d2-a65b-b9a3fe1d4af0', 'מגבירה כוח התכווצות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('712b71ad-c116-4db6-a285-e893a141454c', '438eb726-765e-40d2-a65b-b9a3fe1d4af0', 'לא משפיעה על הלב', false, 4, NOW());


-- Question 80: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1754bb54-ba9c-4b18-a5bc-9f914ce3ad72',
    'מהו חמצן (O2) ומה תפקידו בגוף?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'חמצן הוא גז חיוני לנשימה תאית, משמש לייצור ATP (אנרגיה) בתאים במהלך הנשימה האירובית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5a302ca9-73a5-47b7-9ec0-a17d06dc0025', '1754bb54-ba9c-4b18-a5bc-9f914ce3ad72', 'גז חיוני לנשימה תאית וייצור אנרגיה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b1c8d122-8da5-4be8-a7ce-d8432a473c8f', '1754bb54-ba9c-4b18-a5bc-9f914ce3ad72', 'גז פסולת שהגוף מוציא', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2d83eb71-2560-456a-a2e7-3d7e9c01bd20', '1754bb54-ba9c-4b18-a5bc-9f914ce3ad72', 'הורמון המווסת נשימה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('130dae91-045c-476c-8404-56fcbb983e10', '1754bb54-ba9c-4b18-a5bc-9f914ce3ad72', 'נוזל המסתובב בדם', false, 4, NOW());


-- Question 81: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1a645f13-c573-4074-8643-c025e129f73a',
    'מהו פחמן דו-חמצני (CO2) ומה תפקידו?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'CO2 הוא תוצר פסולת של הנשימה התאית, מופרש דרך הריאות ומשפיע על איזון החומצה-בסיס בגוף.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('22d2859a-6346-49a6-b40a-7a67687fa5af', '1a645f13-c573-4074-8643-c025e129f73a', 'תוצר פסולת של נשימה תאית המופרש דרך הריאות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9e15cda2-cd3a-420c-94f6-3294537c35e5', '1a645f13-c573-4074-8643-c025e129f73a', 'גז הנחוץ לייצור אנרגיה בתאים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6e1ed66a-00f5-40dc-8584-78a168f7e4c2', '1a645f13-c573-4074-8643-c025e129f73a', 'הורמון המווסת לחץ דם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4b263f68-e655-421d-a840-8c588d849e49', '1a645f13-c573-4074-8643-c025e129f73a', 'אלקטרוליט בדם', false, 4, NOW());


-- Question 82: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '80fa132b-8984-4b54-953c-25657e590626',
    'מהו ה-Oxygen-Hemoglobin Dissociation Curve?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'עקומת הדיסוציאציה מתארת כיצד המוגלובין נקשר ומשחרר חמצן בהתאם ללחץ החלקי שלו ולתנאים פיזיולוגיים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3194472a-f047-4177-92b7-217d34e6e23d', '80fa132b-8984-4b54-953c-25657e590626', 'עקומה המתארת את הקשר בין לחץ חלקי של חמצן לרוויה של המוגלובין', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4748869f-7df3-4221-ab32-e3a53b9f35f8', '80fa132b-8984-4b54-953c-25657e590626', 'עקומה המתארת את קצב הנשימה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('128e888b-4c15-4f50-ac34-4a9e53cb7b6a', '80fa132b-8984-4b54-953c-25657e590626', 'עקומה המתארת את לחץ הדם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('19953cf3-1bd8-4067-95ee-4c3a7c66ab4a', '80fa132b-8984-4b54-953c-25657e590626', 'עקומה המתארת את ספירת תאי הדם', false, 4, NOW());


-- Question 83: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'f3167120-b233-4ad5-85c5-a1fa58b79450',
    'מהם הגורמים שגורמים לעקומת החמצן-המוגלובין לזוז ימינה?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'הסטה ימינה (Bohr effect) מקלה על שחרור החמצן לרקמות, קורה בתנאים של עלייה ב-CO2, חום, חומציות ו-2,3-DPG.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f6a393be-6bb4-49a8-a5b5-5d4db367b7c5', 'f3167120-b233-4ad5-85c5-a1fa58b79450', 'עלייה ב-CO2, חום, חומציות והעלאת 2,3-DPG', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b2493641-a64c-449e-a8ec-702a47da8a03', 'f3167120-b233-4ad5-85c5-a1fa58b79450', 'ירידה ב-CO2 והיפותרמיה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e5f4081d-0f71-4e50-85a8-12a0676c4d9d', 'f3167120-b233-4ad5-85c5-a1fa58b79450', 'בססת ורמת CO2 נמוכה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7d9c9a45-405e-414e-8ab1-7e0a018ca4a8', 'f3167120-b233-4ad5-85c5-a1fa58b79450', 'אין גורמים שמזיזים את העקומה', false, 4, NOW());


-- Question 84: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'e7305d38-3758-43bd-ac0a-2646604add02',
    'מהו ההומאוסטזיס (Homeostasis)?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'הומאוסטזיס הוא יכולת הגוף לשמור על סביבה פנימית יציבה (טמפרטורה, pH, רמות אלקטרוליטים וכו'').',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b383598a-b114-4dab-8199-67801968984d', 'e7305d38-3758-43bd-ac0a-2646604add02', 'יכולת הגוף לשמור על סביבה פנימית יציבה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2bc2415b-c515-4c69-9500-ea0ccd69375f', 'e7305d38-3758-43bd-ac0a-2646604add02', 'תהליך ייצור תאי דם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4237cc52-f81a-4155-903f-10b81ad581aa', 'e7305d38-3758-43bd-ac0a-2646604add02', 'מנגנון קרישת הדם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b24d1fa8-aa2f-47da-98fb-ca40a13654b7', 'e7305d38-3758-43bd-ac0a-2646604add02', 'תהליך עיכול המזון', false, 4, NOW());


-- Question 85: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '57c723aa-e22d-4267-b452-5dea528ea787',
    'כיצד הגוף מווסת את רמת הגלוקוז בדם?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'הלבלב מפריש אינסולין (מוריד סוכר) וגלוקגון (מעלה סוכר) לשמירה על רמות גלוקוז תקינות בדם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1d4eadc7-40f3-4341-a800-fcefd9ef21f3', '57c723aa-e22d-4267-b452-5dea528ea787', 'באמצעות אינסולין וגלוקגון מהלבלב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('666e31cb-6b38-4477-933c-c19c2bcc3298', '57c723aa-e22d-4267-b452-5dea528ea787', 'באמצעות הכליות בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('30f79db7-ea34-45f4-8bb1-fc1c2982ab57', '57c723aa-e22d-4267-b452-5dea528ea787', 'באמצעות הריאות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a6f2b207-594f-4d93-82cf-e5e052792dce', '57c723aa-e22d-4267-b452-5dea528ea787', 'אין ויסות לרמת הגלוקוז', false, 4, NOW());


-- Question 86: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'cd5af31c-1e77-4397-8235-7bc06052bd30',
    'מהו תפקיד מרכז הנשימה במדולה?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'מרכז הנשימה במדולה אובלונגטה שולט על קצב ועומק הנשימה בהתאם לרמות CO2 ו-O2 בדם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('221010b7-8b16-4036-8e3a-c17cccca6435', 'cd5af31c-1e77-4397-8235-7bc06052bd30', 'שולט על קצב ועומק הנשימה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e4e6b70b-0fb1-4481-8d3b-61255bebf1a1', 'cd5af31c-1e77-4397-8235-7bc06052bd30', 'שולט רק על קצב הלב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6fd670ae-21a2-4daa-97ec-f6d01f36fa25', 'cd5af31c-1e77-4397-8235-7bc06052bd30', 'שולט על עיכול', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('088fb385-23fc-4f44-9be9-88453192fabd', 'cd5af31c-1e77-4397-8235-7bc06052bd30', 'שולט על טמפרטורת הגוף בלבד', false, 4, NOW());


-- Question 87: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1ec19d83-aba1-46ee-ad72-c7a6e5c7baee',
    'מהם הכימורצפטורים המרכזיים ומה תפקידם?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'הכימורצפטורים המרכזיים נמצאים במדולה ורגישים לעלייה ב-CO2 וירידה ב-pH, מגבירים נשימה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('541094c7-1bfa-450e-80ca-6e88fea6ea92', '1ec19d83-aba1-46ee-ad72-c7a6e5c7baee', 'חיישנים במוח הרגישים לשינויים ב-CO2 ו-pH בנוזל השדרה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8f1895ae-e4d8-449a-b33d-3956ce79b293', '1ec19d83-aba1-46ee-ad72-c7a6e5c7baee', 'חיישנים בלב הרגישים ללחץ דם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ef3ffd60-e2ca-464a-bafe-be2955f08abe', '1ec19d83-aba1-46ee-ad72-c7a6e5c7baee', 'חיישנים בכליות הרגישים לנתרן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0dad5fbc-2bd0-4107-96ee-3df7c2aef4d4', '1ec19d83-aba1-46ee-ad72-c7a6e5c7baee', 'חיישנים בריאות למתיחה', false, 4, NOW());


-- Question 88: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ce9edf63-65a2-414f-8685-b5575306d213',
    'מהם הכימורצפטורים הפריפריים ואיפה הם נמצאים?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'הכימורצפטורים הפריפריים נמצאים בגופי הצוואר (carotid bodies) והאאורטה, רגישים במיוחד להיפוקסמיה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ae7df944-de5d-4adb-bf20-1c7b4e3e963d', 'ce9edf63-65a2-414f-8685-b5575306d213', 'חיישנים בגופי הצוואר והאאורטה הרגישים ל-O2, CO2 ו-pH', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('60e29ad1-87de-4ad7-9aa8-37a134a69be9', 'ce9edf63-65a2-414f-8685-b5575306d213', 'חיישנים בריאות בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('44f8a795-270f-47fd-b63b-9b155358c0a1', 'ce9edf63-65a2-414f-8685-b5575306d213', 'חיישנים במוח בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('df9f403d-16fe-4d01-8307-d011f5385a53', 'ce9edf63-65a2-414f-8685-b5575306d213', 'חיישנים בכליות', false, 4, NOW());


-- Question 89: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '2f2ac535-9832-4940-905c-c41e5ee7b3bc',
    'מהו Tidal Volume (נפח גאות)?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'Tidal Volume הוא נפח האוויר הנשאף והנשוף בנשימה רגילה רגועה, בממוצע 500 מ"ל במבוגר.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2757713d-5ad5-4212-a324-1ac8ef36541b', '2f2ac535-9832-4940-905c-c41e5ee7b3bc', 'כמות האוויר הנשאף והנשוף בנשימה רגילה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5740fa29-b5dc-44e8-b412-1434de985be2', '2f2ac535-9832-4940-905c-c41e5ee7b3bc', 'כמות האוויר המקסימלית שניתן לשאוף', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('862cbf8a-c5d6-4e2a-bf9b-d0713b01208c', '2f2ac535-9832-4940-905c-c41e5ee7b3bc', 'כמות האוויר שנשארת בריאות תמיד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3ac1b490-7f41-495c-802a-1d9f66df93b3', '2f2ac535-9832-4940-905c-c41e5ee7b3bc', 'כמות האוויר בדקה', false, 4, NOW());


-- Question 90: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'e9aaf950-e423-4826-a2ad-9d35adb7ff26',
    'מהו Minute Ventilation?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'Minute Ventilation מחושב כמכפלה של Tidal Volume בקצב הנשימה (בממוצע 6-8 ליטר לדקה).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('71f50164-48db-4971-aea7-4987252e5d21', 'e9aaf950-e423-4826-a2ad-9d35adb7ff26', 'כמות האוויר שנשאפת ונשופה בדקה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8a8e521c-048c-41e7-858b-3b18466bb831', 'e9aaf950-e423-4826-a2ad-9d35adb7ff26', 'כמות החמצן בדם בדקה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('be61575a-8790-4d1a-997d-c617adc9b052', 'e9aaf950-e423-4826-a2ad-9d35adb7ff26', 'מספר הנשימות בדקה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('40684468-95ed-4f2e-a1c8-3188c6515a1b', 'e9aaf950-e423-4826-a2ad-9d35adb7ff26', 'כמות ה-CO2 שמופרש בדקה', false, 4, NOW());


-- Question 91: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '351b3392-7eb9-4a15-99d4-ca950bf464c2',
    'מהו Dead Space (מרווח מת)?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'Dead Space הוא חלק מדרכי הנשימה (אף, פה, קנה, סימפונות) שמוביל אוויר אך לא משתתף בחילוף גזים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5a9b7308-ae84-42d4-9dd9-4f23fe33a217', '351b3392-7eb9-4a15-99d4-ca950bf464c2', 'חלק מדרכי הנשימה שלא משתתף בחילוף גזים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4a811e5d-126c-4bab-bc4f-64d64cdd0203', '351b3392-7eb9-4a15-99d4-ca950bf464c2', 'חלק מהריאה שנהרס', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5bf7ae7d-bcd6-4075-bae0-33c7fb6ddf64', '351b3392-7eb9-4a15-99d4-ca950bf464c2', 'מרווח בין החדרים בלב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ab61d84d-6cbc-4ae3-b31a-db021f4a61d3', '351b3392-7eb9-4a15-99d4-ca950bf464c2', 'מרווח בין הצלעות', false, 4, NOW());


-- Question 92: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '3a586991-23f9-4ec5-a8ea-babe8615886e',
    'מהו V/Q Ratio ומה ערכו התקין?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'V/Q Ratio הוא היחס בין אוורור (ventilation) לזילוח דם (perfusion) בריאות, ערך תקין כ-0.8.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('53ce405c-bb64-4475-b676-55d9c2677d6b', '3a586991-23f9-4ec5-a8ea-babe8615886e', 'יחס בין אוורור (Ventilation) לזילוח (Perfusion), תקין 0.8', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e7b8fa85-5c3a-41cd-89ef-bec533bbb4a6', '3a586991-23f9-4ec5-a8ea-babe8615886e', 'יחס בין חמצן ל-CO2 בדם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7663b7c9-8776-43f5-a747-d91f9f2e37f0', '3a586991-23f9-4ec5-a8ea-babe8615886e', 'יחס בין קצב לב ללחץ דם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4d39ddbd-7d96-408e-bdcf-fe9d99ec5efb', '3a586991-23f9-4ec5-a8ea-babe8615886e', 'יחס בין נפח נשימה לתדירות', false, 4, NOW());


-- Question 93: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd51b628a-7c84-4d36-870f-ad12ff558e7e',
    'מה קורה כאשר יש V/Q mismatch?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'V/Q mismatch (חוסר התאמה) גורם לירידה ביעילות חילוף הגזים ועלול לגרום להיפוקסמיה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3e0b3d2a-031d-4806-8d77-d00d7152fd6f', 'd51b628a-7c84-4d36-870f-ad12ff558e7e', 'חוסר התאמה בין אוורור לזילוח הגורם להיפוקסמיה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('afa12018-31fb-4b16-84c3-a3662054f918', 'd51b628a-7c84-4d36-870f-ad12ff558e7e', 'שיפור בחילוף הגזים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ffe2d324-bcdb-48e0-94fb-0bc68a39ddac', 'd51b628a-7c84-4d36-870f-ad12ff558e7e', 'עלייה בלחץ הדם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6dd9f7c7-c826-4afc-90c0-d1308d0ab807', 'd51b628a-7c84-4d36-870f-ad12ff558e7e', 'אין השפעה על הגוף', false, 4, NOW());


-- Question 94: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '7c2ec496-d791-48d8-9de9-c33ed49344cf',
    'מהו תפקיד ההורמון ADH (אנטי-דיורטי)?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'ADH (Vasopressin) מופרש מההיפופיזה האחורית, גורם לכליות לשמר מים ומפחית הפרשת שתן.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('555f7001-89ba-4563-ba9e-4030951e8c95', '7c2ec496-d791-48d8-9de9-c33ed49344cf', 'שומר על נוזלים בגוף על ידי הפחתת הפרשת שתן', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a93d6ada-274a-4c7b-bb2f-666c281eb63f', '7c2ec496-d791-48d8-9de9-c33ed49344cf', 'מגביר הפרשת שתן', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7a05b5d7-6105-472e-8c12-42f90258587d', '7c2ec496-d791-48d8-9de9-c33ed49344cf', 'מוריד לחץ דם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4c6663df-c6e0-498e-b84e-0e8f0b31ca02', '7c2ec496-d791-48d8-9de9-c33ed49344cf', 'מעלה רמת סוכר בדם', false, 4, NOW());


-- Question 95: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd5a66741-8c1e-41d2-b86d-d35a7f587006',
    'מהו תפקיד מערכת הרנין-אנגיוטנסין-אלדוסטרון?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'מערכת RAAS מווסתת לחץ דם על ידי שימור נתרן ומים, ומפרישה אלדוסטרון מהיותרת כליה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('433a71fd-be4e-4335-9550-99d3013f2636', 'd5a66741-8c1e-41d2-b86d-d35a7f587006', 'מווסתת לחץ דם ואיזון נוזלים ואלקטרוליטים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f213f907-567f-4376-9b9f-64cab94bcfd5', 'd5a66741-8c1e-41d2-b86d-d35a7f587006', 'מווסתת רק רמת סוכר בדם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('24b87bae-dd67-4f02-a7cd-fc4111c53fd3', 'd5a66741-8c1e-41d2-b86d-d35a7f587006', 'מווסתת רק טמפרטורת גוף', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('37e8b4fa-88b7-43b7-89b1-cba8661589b2', 'd5a66741-8c1e-41d2-b86d-d35a7f587006', 'מייצרת תאי דם אדומים', false, 4, NOW());


-- Question 96: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '4075a37f-a6b7-4b87-a634-fa8ebe2c075d',
    'מהו תפקיד ההורמון אינסולין?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'אינסולין מופרש מתאי הבטא בלבלב, מאפשר כניסת גלוקוז לתאים ובכך מוריד את רמת הסוכר בדם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f52b35e4-5f78-4886-8d7f-27402adee5d3', '4075a37f-a6b7-4b87-a634-fa8ebe2c075d', 'מוריד רמת סוכר בדם על ידי קליטת גלוקוז לתאים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7a36d6da-f107-4e38-863c-8c9cda7be0da', '4075a37f-a6b7-4b87-a634-fa8ebe2c075d', 'מעלה רמת סוכר בדם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8bc38d97-fcaa-47e6-b827-d4f090ed1c12', '4075a37f-a6b7-4b87-a634-fa8ebe2c075d', 'מווסת לחץ דם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('aff08f89-1197-4547-8974-99583cda000e', '4075a37f-a6b7-4b87-a634-fa8ebe2c075d', 'מגביר הפרשת שתן', false, 4, NOW());


-- Question 97: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '0a156a6c-bd24-4ded-8122-eb28bfb91b1a',
    'מהו תפקיד ההורמון גלוקגון?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'גלוקגון מופרש מתאי האלפא בלבלב, מפרק גליקוגן בכבד לגלוקוז ומעלה את רמת הסוכר בדם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fa5c64c4-19ae-44e1-aac2-9635286e3a71', '0a156a6c-bd24-4ded-8122-eb28bfb91b1a', 'מעלה רמת סוכר בדם על ידי פירוק גליקוגן בכבד', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0a9d592d-b245-4cad-ba6e-7497ae749e8f', '0a156a6c-bd24-4ded-8122-eb28bfb91b1a', 'מוריד רמת סוכר בדם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e91875d8-5fe1-43b8-bff3-e26112ef7427', '0a156a6c-bd24-4ded-8122-eb28bfb91b1a', 'מווסת ספיגת סידן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6c79a228-37a6-4ad0-a00b-eb9f3b668043', '0a156a6c-bd24-4ded-8122-eb28bfb91b1a', 'מווסת קצב נשימה', false, 4, NOW());


-- Question 98: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '43da6277-64c3-4ef0-a594-cd51b3b67779',
    'מהו תפקיד הכליות בוויסות לחץ הדם?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'הכליות מווסתות לחץ דם על ידי בקרת נפח הדם (הפרשה/שימור נוזלים) והפעלת מערכת RAAS.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('40362c58-7d32-46e8-9374-a05a2272b71b', '43da6277-64c3-4ef0-a594-cd51b3b67779', 'שולטות על נפח הדם דרך הפרשת או שימור נוזלים ומפעילות מערכת RAAS', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7b773df9-6fc3-4aa4-a4ce-74c4e0390e5e', '43da6277-64c3-4ef0-a594-cd51b3b67779', 'משפיעות רק על קצב הלב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('29aff0db-14a1-4ecb-8283-38099483db11', '43da6277-64c3-4ef0-a594-cd51b3b67779', 'אין להן תפקיד בוויסות לחץ דם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cb7edb19-a327-4da0-92ba-b760c3f4dbb0', '43da6277-64c3-4ef0-a594-cd51b3b67779', 'מייצרות רק הורמונים', false, 4, NOW());


-- Question 99: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '9c89d16d-1e35-4155-bd7a-78936ddd0b2a',
    'מהו תפקיד המערכת העצבית האוטונומית?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'המערכת העצבית האוטונומית (סימפתטית ופרא-סימפתטית) שולטת על תפקודים לא רצוניים כמו לב, נשימה ועיכול.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c4cb336e-d318-4b26-8fc6-5b7eb616bedb', '9c89d16d-1e35-4155-bd7a-78936ddd0b2a', 'שולטת על תפקודים אוטומטיים כמו קצב לב, נשימה ועיכול', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0e78269c-d693-410d-a152-c95a72d53f5b', '9c89d16d-1e35-4155-bd7a-78936ddd0b2a', 'שולטת רק על תנועות רצוניות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ab8707e0-75c6-4c87-b100-20a33ee23b9a', '9c89d16d-1e35-4155-bd7a-78936ddd0b2a', 'שולטת רק על חושים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('878f6060-ccb4-4d13-a4ea-6feb55fd5edb', '9c89d16d-1e35-4155-bd7a-78936ddd0b2a', 'אין לה תפקיד בגוף', false, 4, NOW());


-- Question 100: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'fb952425-10f3-4b4c-a026-a911f3b20e08',
    'מהו ההבדל בין נשימה אירובית לאנאירובית?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'נשימה אירובית משתמשת בחמצן ומייצרת 36-38 ATP, אנאירובית (גליקוליזה) ללא חמצן ומייצרת רק 2 ATP.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ab55a2ed-7065-4e10-bccd-3781f17f41d8', 'fb952425-10f3-4b4c-a026-a911f3b20e08', 'נשימה אירובית משתמשת בחמצן ומייצרת יותר ATP, אנאירובית ללא חמצן', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('84dddce2-40ea-493c-8fa5-f0245384ff59', 'fb952425-10f3-4b4c-a026-a911f3b20e08', 'שתיהן זהות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('406de2c5-cd4d-4714-846b-10a0481f018d', 'fb952425-10f3-4b4c-a026-a911f3b20e08', 'אנאירובית מייצרת יותר אנרגיה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e795724e-f0cb-4395-9020-33ec67f131f3', 'fb952425-10f3-4b4c-a026-a911f3b20e08', 'אירובית לא מייצרת ATP', false, 4, NOW());


-- Question 101: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '5b609009-00c0-4ea3-9430-72808a3f26fa',
    'מהו חומצת חלב (Lactic Acid) ומתי היא נוצרת?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'חומצת חלב נוצרת בתאי השריר במהלך נשימה אנאירובית כאשר אין מספיק חמצן, גורמת לעייפות שרירים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1f0d3236-217e-49c2-bb5b-fc5a92151a7b', '5b609009-00c0-4ea3-9430-72808a3f26fa', 'תוצר של נשימה אנאירובית כאשר אין מספיק חמצן', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('de001d91-2809-4a9e-8ca4-dfa930e5cfbf', '5b609009-00c0-4ea3-9430-72808a3f26fa', 'תוצר של נשימה אירובית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0b5641fe-3e24-40e9-95b8-9d43998cfe53', '5b609009-00c0-4ea3-9430-72808a3f26fa', 'הורמון המופרש מהכבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('29482c0d-452c-49e7-ab09-100fa7bc6519', '5b609009-00c0-4ea3-9430-72808a3f26fa', 'ויטמין חיוני', false, 4, NOW());


-- Question 102: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a99594eb-0e04-4929-95cd-8fecc9c89a8e',
    'איזה אלקטרוליט הוא העיקרי בתוך התא?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'אשלגן (K+) הוא האלקטרוליט העיקרי בתוך התא, חשוב לפעילות חשמלית תאית ותפקוד שרירים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ded54a33-0056-40bb-bcf6-6443c4a9a1a6', 'a99594eb-0e04-4929-95cd-8fecc9c89a8e', 'אשלגן (Potassium)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('51198b85-3348-43b5-a9a4-6ce84c767863', 'a99594eb-0e04-4929-95cd-8fecc9c89a8e', 'נתרן (Sodium)', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c2edd304-09c9-459f-9695-f4838dbc63f1', 'a99594eb-0e04-4929-95cd-8fecc9c89a8e', 'כלור (Chloride)', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e82d6d2a-d0e7-44bb-9683-75e28d0b034d', 'a99594eb-0e04-4929-95cd-8fecc9c89a8e', 'מגנזיום (Magnesium)', false, 4, NOW());


-- Question 103: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'bd805282-8e7f-47ce-a9e6-0bbacc0e6206',
    'מהו תפקיד הסידן (Calcium) בגוף?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'סידן חיוני להתכווצות שרירים, הולכה עצבית, קרישת דם ובניית עצמות ושיניים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('93f39a96-7d02-4ade-b793-1ead1a2b709d', 'bd805282-8e7f-47ce-a9e6-0bbacc0e6206', 'חיוני להתכווצות שרירים, הולכה עצבית וקרישת דם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7c6b700d-431c-410c-8fc2-c33cf4cb4e30', 'bd805282-8e7f-47ce-a9e6-0bbacc0e6206', 'רק לבניית עצמות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cf1584f7-df5f-4145-b24c-511e10ad588e', 'bd805282-8e7f-47ce-a9e6-0bbacc0e6206', 'רק להולכה עצבית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('160b52f6-052e-474c-914e-9cc6713013e1', 'bd805282-8e7f-47ce-a9e6-0bbacc0e6206', 'אין לו תפקיד חשוב', false, 4, NOW());


-- Question 104: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '6d60c176-6289-442a-8c50-62e3c1491ed8',
    'מהו Frank-Starling Mechanism?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'חוק פרנק-סטרלינג קובע שככל שמתיחת סיבי השריר גדולה יותר (Preload), כך ההתכווצות חזקה יותר.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ddf23a6e-6d2b-422c-8cf9-1e18458bcaa4', '6d60c176-6289-442a-8c50-62e3c1491ed8', 'ככל שהלב מתמלא יותר בדיאסטולה, כך הוא מתכווץ חזק יותר בסיסטולה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e4b5ecd6-01e9-4932-8073-0a3a5e84f24b', '6d60c176-6289-442a-8c50-62e3c1491ed8', 'ככל שהלחץ עולה, הלב פועם לאט יותר', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4b40e9b9-334a-41fa-9149-e817cf0f1c81', '6d60c176-6289-442a-8c50-62e3c1491ed8', 'מנגנון ההולכה החשמלית בלב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('98e8fe75-4b64-42d5-8def-4cc5d7181a4f', '6d60c176-6289-442a-8c50-62e3c1491ed8', 'מנגנון סגירת המסתמים', false, 4, NOW());


-- Question 105: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '4798bc07-34ae-4dc7-b22d-f896628a4046',
    'מהו Mean Arterial Pressure (MAP)?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'MAP מחושב כ-[(2×דיאסטולי)+סיסטולי]/3, מייצג את לחץ הפרפוזיה הממוצע לאיברים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e39b3522-db33-435a-ac46-c761f96fefeb', '4798bc07-34ae-4dc7-b22d-f896628a4046', 'לחץ הדם הממוצע בעורקים במהלך מחזור לב אחד', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cf7b1007-caff-4d8b-86b9-5de9cc834f53', '4798bc07-34ae-4dc7-b22d-f896628a4046', 'רק הלחץ הסיסטולי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c38e819c-30d6-4df5-af6d-e34809e92474', '4798bc07-34ae-4dc7-b22d-f896628a4046', 'רק הלחץ הדיאסטולי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cde9ebdd-0329-4407-8218-cca3bdf87d9d', '4798bc07-34ae-4dc7-b22d-f896628a4046', 'ההפרש בין סיסטולי לדיאסטולי', false, 4, NOW());


-- Question 106: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '232dfc50-1397-429c-bbb6-55be89eb9c0d',
    'מהו Pulse Pressure?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'Pulse Pressure הוא ההפרש בין הלחץ הסיסטולי לדיאסטולי, משקף את Stroke Volume וגמישות העורקים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e70ad8bd-822e-4a0f-b3ae-aec219bdc59a', '232dfc50-1397-429c-bbb6-55be89eb9c0d', 'ההפרש בין לחץ דם סיסטולי לדיאסטולי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('20169f1d-0d8d-482f-a618-6528b9160d27', '232dfc50-1397-429c-bbb6-55be89eb9c0d', 'הלחץ הסיסטולי בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0e69192e-4b69-472d-8dce-b858cebf4bba', '232dfc50-1397-429c-bbb6-55be89eb9c0d', 'הלחץ הדיאסטולי בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('890455f3-bc07-44e4-b64b-eda20408400c', '232dfc50-1397-429c-bbb6-55be89eb9c0d', 'הלחץ הממוצע', false, 4, NOW());


-- Question 107: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '2603a82d-69d3-45f2-92ee-bccb6b78a54f',
    'מהו תפקיד הברורצפטורים?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'ברורצפטורים נמצאים בקשת האאורטה והצוואר, מזהים שינויי לחץ ומווסתים את הפעילות האוטונומית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('750d8d97-6452-4312-a99c-8b6a3c8fd836', '2603a82d-69d3-45f2-92ee-bccb6b78a54f', 'חיישני לחץ בעורקים המווסתים את לחץ הדם וקצב הלב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a7ff130c-2888-41ed-9644-d986aa4b450e', '2603a82d-69d3-45f2-92ee-bccb6b78a54f', 'חיישני חמצן בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e5bc9fec-d8be-4f75-9ed7-8ace190072d9', '2603a82d-69d3-45f2-92ee-bccb6b78a54f', 'חיישני טמפרטורה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ba792fb2-2cb8-4a2e-9e7c-2d105cdba776', '2603a82d-69d3-45f2-92ee-bccb6b78a54f', 'חיישני כאב', false, 4, NOW());


-- Question 108: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '41d1ce10-952c-48ab-90e9-d9f98915498a',
    'מהי קיבולת השיורית התפקודית (FRC)?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'FRC היא נפח האוויר שנשאר בריאות בסוף נשיפה רגילה רגועה, כ-2.5 ליטר במבוגר.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b9a9af2e-8d28-4470-9364-dd6534a1f4f4', '41d1ce10-952c-48ab-90e9-d9f98915498a', 'כמות האוויר שנשארת בריאות לאחר נשיפה רגילה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7a676759-4c5e-4580-abad-b6bfbf5b1163', '41d1ce10-952c-48ab-90e9-d9f98915498a', 'כמות האוויר המקסימלית בריאות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3fe02e9c-3d8a-4ec3-8efb-b09ed47dce10', '41d1ce10-952c-48ab-90e9-d9f98915498a', 'כמות האוויר בנשימה אחת', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('809ef2a4-dc01-4c79-a701-e8dcd043c3f8', '41d1ce10-952c-48ab-90e9-d9f98915498a', 'אין אוויר שנשאר בריאות', false, 4, NOW());


-- Question 109: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'aa0a0dfb-8af6-4fd7-9c19-0a08979e6bc5',
    'מהו Compliance (גמישות) של הריאות?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'Compliance מתארת כמה בקלות הריאות יכולות להתרחב, ירידה ב-compliance מקשה על הנשימה (כמו בפיברוזיס).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('37a2a6fe-25f8-48b6-834f-5360c62ad677', 'aa0a0dfb-8af6-4fd7-9c19-0a08979e6bc5', 'יכולת הריאות והחזה להתרחב בתגובה ללחץ', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e00bb0f9-7092-451b-a4a8-99787588b0ed', 'aa0a0dfb-8af6-4fd7-9c19-0a08979e6bc5', 'התנגדות דרכי האוויר לזרימה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f8f6a36e-9df1-4ae9-93e8-f26875b9226f', 'aa0a0dfb-8af6-4fd7-9c19-0a08979e6bc5', 'כמות האוויר בריאות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7aa2914e-5815-4dd1-b8ee-06d66240b5ab', 'aa0a0dfb-8af6-4fd7-9c19-0a08979e6bc5', 'קצב הנשימה', false, 4, NOW());


-- Question 110: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '6cd733fd-12e4-409f-a49f-259088724e1b',
    'מהי Resistance (התנגדות) בדרכי הנשימה?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'Resistance היא ההתנגדות לזרימת אוויר, עולה במחלות כמו אסטמה ו-COPD עקב היצרות דרכי נשימה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6632e7d6-f90e-4abb-b185-93b559db05b6', '6cd733fd-12e4-409f-a49f-259088724e1b', 'ההתנגדות לזרימת אוויר בדרכי הנשימה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8460bdb9-fceb-46dc-a09a-89889512202c', '6cd733fd-12e4-409f-a49f-259088724e1b', 'גמישות הריאות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b3bd422a-02cc-4ca0-80ad-c1cd52c8e706', '6cd733fd-12e4-409f-a49f-259088724e1b', 'כמות החמצן בדם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fdcae5c5-d323-4a6e-a528-df5218f10edc', '6cd733fd-12e4-409f-a49f-259088724e1b', 'כוח שרירי הנשימה', false, 4, NOW());


-- Question 111: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '5b1c55d4-2454-400b-a971-c90fdab94a57',
    'מהו תפקיד הסורפקטנט (Surfactant) בריאות?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'סורפקטנט הוא חומר שמפרישות תאי הנאדיות, מפחית מתח פנים-שטחי ומונע קריסת הנאדיות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('09668a83-ce2c-42ee-a28a-16ccc545c4a1', '5b1c55d4-2454-400b-a971-c90fdab94a57', 'מפחית את המתח הפנים-שטחי בנאדיות ומונע קריסתן', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b416d7c6-ed98-4fc3-b20c-7945264a9d45', '5b1c55d4-2454-400b-a971-c90fdab94a57', 'מגביר את ייצור הריר', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f741607e-98c6-4b1a-9247-6b22285f31ad', '5b1c55d4-2454-400b-a971-c90fdab94a57', 'הורס חיידקים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cc87c77d-c5bd-4de7-a1aa-3006d46bc42f', '5b1c55d4-2454-400b-a971-c90fdab94a57', 'מוביל חמצן', false, 4, NOW());


-- Question 112: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1450ca61-0eff-42ed-bc7e-b5e289dafbf7',
    'מהו Shunt במערכת הנשימה?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'Shunt הוא מצב בו דם זורם דרך הריאות מבלי לעבור דרך נאדיות מאווררות, גורם להיפוקסמיה עמידה לחמצן.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('588135dc-573d-4ea8-ac1a-88989c6f0c2a', '1450ca61-0eff-42ed-bc7e-b5e289dafbf7', 'מצב בו דם עובר דרך הריאות מבלי להתחמצן (V/Q=0)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b43fd6b7-b1cd-4041-b777-292d84f49f3d', '1450ca61-0eff-42ed-bc7e-b5e289dafbf7', 'מצב של אוורור מוגבר', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f43afe00-6dae-41cf-9991-596adc2056e1', '1450ca61-0eff-42ed-bc7e-b5e289dafbf7', 'מצב של זילוח מוגבר', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c761afad-2e1f-4c40-835f-c11cdc975480', '1450ca61-0eff-42ed-bc7e-b5e289dafbf7', 'נשימה תקינה', false, 4, NOW());


-- Question 113: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '97dab8f1-ec6c-4b78-bfff-c9bac6521a0d',
    'מהו Dead Space Ventilation?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'Dead Space Ventilation קורה כאשר נאדיות מאווררות אך אין זילוח דם (כמו ב-PE), גורם לעלייה ב-CO2.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f17f6c5a-ce4c-4c70-ad0e-8b822a2ad8dd', '97dab8f1-ec6c-4b78-bfff-c9bac6521a0d', 'אוורור של נאדיות ללא זילוח דם (V/Q=אינסוף)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e1c8e892-1fcf-41f0-8276-e3363dc734d9', '97dab8f1-ec6c-4b78-bfff-c9bac6521a0d', 'נשימה דרך הפה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('de398561-2a03-4337-b8e9-49fa8b75b527', '97dab8f1-ec6c-4b78-bfff-c9bac6521a0d', 'אוורור תקין', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0715b11e-0a7e-47e6-b313-62fa14c79d0b', '97dab8f1-ec6c-4b78-bfff-c9bac6521a0d', 'זילוח ללא אוורור', false, 4, NOW());


-- Question 114: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '3c2e22c4-273d-4227-b4c7-0af02ed9f9cb',
    'מהו Ejection Fraction?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'Ejection Fraction (EF) הוא אחוז הדם שהחדר השמאלי שואב מתוך הנפח הכולל בו, תקין 55-70%.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bbfefab4-7deb-4af7-8097-7a0d467b8461', '3c2e22c4-273d-4227-b4c7-0af02ed9f9cb', 'אחוז הדם שהחדר השמאלי מוציא בכל פעימה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('47a4df97-cdcb-4e4b-91f3-e39396006aee', '3c2e22c4-273d-4227-b4c7-0af02ed9f9cb', 'כמות הדם הכוללת בגוף', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9f3718f9-8dd9-431e-ac80-8cbd75eff44f', '3c2e22c4-273d-4227-b4c7-0af02ed9f9cb', 'קצב הלב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9f71d40d-9f0b-470a-85a3-d4ebec98ed1f', '3c2e22c4-273d-4227-b4c7-0af02ed9f9cb', 'לחץ הדם', false, 4, NOW());


-- Question 115: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c28e27b3-f606-4370-8c04-b4688e6b5dcc',
    'מהו Systemic Vascular Resistance (SVR)?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'SVR היא ההתנגדות הכוללת לזרימת דם בכלי הדם המערכתיים, מושפעת מקוטר כלי הדם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c87e9e1c-bed5-4235-9199-e2661640f573', 'c28e27b3-f606-4370-8c04-b4688e6b5dcc', 'ההתנגדות לזרימת דם בכלי הדם המערכתיים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cbdd254a-6405-4234-9be3-8a2f6b3019b0', 'c28e27b3-f606-4370-8c04-b4688e6b5dcc', 'התנגדות בריאות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('32f24dad-88fa-411c-a944-549d3dea34ca', 'c28e27b3-f606-4370-8c04-b4688e6b5dcc', 'לחץ הדם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7a334c8d-bc3a-4af6-87ea-36465c582109', 'c28e27b3-f606-4370-8c04-b4688e6b5dcc', 'קצב הלב', false, 4, NOW());


-- Question 116: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '28798b9d-babd-4918-bce1-96743d338fbb',
    'מהו תפקיד הבולבוס הריח (Olfactory Bulb)?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'הבולבוס הריח הוא חלק מהמערכת העצבית המעבד את המידע מקולטני הריח באף.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('262b72f0-9466-4266-b5ba-dfa79adf7eee', '28798b9d-babd-4918-bce1-96743d338fbb', 'מעבד מידע ריח מהחיישנים באף', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b20fbd31-be0f-4fc2-afaa-5a9e99067af0', '28798b9d-babd-4918-bce1-96743d338fbb', 'שולט על הנשימה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0a19dc11-580d-48cf-afe0-7794c84fed79', '28798b9d-babd-4918-bce1-96743d338fbb', 'מפריש הורמונים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f3337a45-0eef-4aef-9bf2-8938f759774b', '28798b9d-babd-4918-bce1-96743d338fbb', 'שולט על קצב הלב', false, 4, NOW());


-- Question 117: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '40585780-3455-43de-8ccc-fc105550fa52',
    'מהו תפקיד ההיפותלמוס בוויסות הטמפרטורה?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'ההיפותלמוס הוא מרכז בקרת הטמפרטורה, מפעיל מנגנונים לחימום או קירור הגוף לפי הצורך.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9891edf1-1a67-46c5-8520-0e6266b8d705', '40585780-3455-43de-8ccc-fc105550fa52', 'מתפקד כתרמוסטט של הגוף ומווסת את טמפרטורת הגוף', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7d392f53-21c8-4c42-a114-0b2cec4d3b6c', '40585780-3455-43de-8ccc-fc105550fa52', 'מייצר חום בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2f6bec71-2013-4156-acea-2b857f3740a2', '40585780-3455-43de-8ccc-fc105550fa52', 'מפריש זיעה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('14b6bad1-04d1-427b-828e-7dd67184a5a4', '40585780-3455-43de-8ccc-fc105550fa52', 'אין לו תפקיד בוויסות טמפרטורה', false, 4, NOW());


-- Question 118: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ddf20318-fa86-4c6a-9109-b898e922ad33',
    'מהו Hypoxic Pulmonary Vasoconstriction?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'HPV הוא מנגנון הגנה בו כלי הדם הריאתיים מתכווצים באזורים עם חמצן נמוך, מפנה דם לאזורים מאווררים יותר.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('322bff70-71ea-48a0-8906-35e0c628e6df', 'ddf20318-fa86-4c6a-9109-b898e922ad33', 'היצרות כלי דם ריאתיים כתגובה לרמת חמצן נמוכה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3b2472c1-d8ff-44d2-8071-57473bb34650', 'ddf20318-fa86-4c6a-9109-b898e922ad33', 'התרחבות כלי דם בריאות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a335ddaf-1e4d-4d39-ae74-ce2a9ab6dbbc', 'ddf20318-fa86-4c6a-9109-b898e922ad33', 'היצרות כלי דם מערכתיים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fe026f9a-e033-46fa-9893-d254b6e79570', 'ddf20318-fa86-4c6a-9109-b898e922ad33', 'תגובה לעודף חמצן', false, 4, NOW());


-- Question 119: פיזיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '8b7b20f3-7827-43f5-b423-17b38f08fe6a',
    'מהו Hematocrit?',
    (SELECT id FROM public.categories WHERE name = 'פיזיולוגיה' LIMIT 1),
    'pending',
    'Hematocrit (HCT) הוא אחוז נפח תאי הדם האדומים מנפח הדם הכולל, תקין גברים 42-52%, נשים 37-47%.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('077ecee4-ba15-411d-b4fe-b74d3927257a', '8b7b20f3-7827-43f5-b423-17b38f08fe6a', 'אחוז תאי הדם האדומים מנפח הדם הכולל', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c698cae0-22f6-4c6d-aa68-b961e19397bd', '8b7b20f3-7827-43f5-b423-17b38f08fe6a', 'ספירת תאי דם לבנים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c4fc71fa-2aaa-4bea-898a-93591f639955', '8b7b20f3-7827-43f5-b423-17b38f08fe6a', 'רמת המוגלובין', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('56f55abe-0a3e-418a-8c16-fd5fe89a4f7f', '8b7b20f3-7827-43f5-b423-17b38f08fe6a', 'מספר הטסיות', false, 4, NOW());


-- Question 120: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '5982a702-5783-4947-8f6b-7a9cf71aabc2',
    'מהו Epinephrine (אפינפרין)?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Epinephrine הוא הורמון של המערכת הסימפתטית המופרש מה-Adrenal Medulla, משמש בהחייאה ובאנאפילקסיס.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f9f06107-6013-44a6-8f87-e001d0e1617c', '5982a702-5783-4947-8f6b-7a9cf71aabc2', 'הורמון של המערכת הסימפתטית המופרש מ-Adrenal Medulla', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e7233676-fee4-4dfb-af2f-f949b660b123', '5982a702-5783-4947-8f6b-7a9cf71aabc2', 'אנטיביוטיקה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3c1dd924-7d53-42bc-b44f-893ed3364a78', '5982a702-5783-4947-8f6b-7a9cf71aabc2', 'משכך כאבים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('dcf4c553-7b35-48a6-8078-3679dde94624', '5982a702-5783-4947-8f6b-7a9cf71aabc2', 'תרופה להורדת לחץ דם', false, 4, NOW());


-- Question 121: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd580c3a2-a95b-4576-b96c-62aeffe20ec1',
    'מה השפעת Epinephrine על מערכת הקרדיווסקולרית?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'האפינפרין מעלה קצב לב, מעלה כוח התכווצות, מכווץ כלי דם פריפריים (עור, כליות, מערכת העיכול) ומרחיב סימפונות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8495dfa2-b4d7-4ebf-ad01-3623b18b6933', 'd580c3a2-a95b-4576-b96c-62aeffe20ec1', 'מעלה קצב לב, מעלה כוח התכווצות ומכווץ כלי דם פריפריים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('18f35b37-6399-4056-9b58-b06c33d87e3f', 'd580c3a2-a95b-4576-b96c-62aeffe20ec1', 'מוריד קצב לב ומרחיב כלי דם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b9a34986-0eaa-49cf-9093-0ed82a58ce34', 'd580c3a2-a95b-4576-b96c-62aeffe20ec1', 'משפיע רק על כלי דם בריאות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c5e9923a-018a-4d4b-98b7-2e9b02cf7aab', 'd580c3a2-a95b-4576-b96c-62aeffe20ec1', 'אין לו השפעה על הלב', false, 4, NOW());


-- Question 122: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '25917198-20d5-4f73-a525-3076c6185ddc',
    'מהו Atropine?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Atropine הוא תרופה אנטי-כולינרגית החוסמת את המערכת הפרא-סימפתטית ומגבירה את קצב הלב.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ef09081f-8694-40df-8091-a4b4d46239c3', '25917198-20d5-4f73-a525-3076c6185ddc', 'תרופה אנטי-כולינרגית להגברת קצב הלב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2fd6381b-ff90-4437-992f-ee895e701aee', '25917198-20d5-4f73-a525-3076c6185ddc', 'תרופה להורדת קצב הלב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bab77509-dfc2-4b6f-b381-f66f870f7a26', '25917198-20d5-4f73-a525-3076c6185ddc', 'אנטיביוטיקה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cc751e0e-2684-4d71-98de-6cdd8627b098', '25917198-20d5-4f73-a525-3076c6185ddc', 'משכך כאבים', false, 4, NOW());


-- Question 123: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '4e82a11a-3832-4e1e-bd26-39afd81f5385',
    'מהו מינון Atropine למניעת ריור?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'ניתן לתת 0.5mg (שזה גם 0.5cc) של אטרופין IV למניעת ריור, ויש להקפיד על שטיפה אחרי האטרופין.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8636e052-380c-474f-9115-b3374c996cbd', '4e82a11a-3832-4e1e-bd26-39afd81f5385', '0.5mg (0.5cc) עם שטיפה אחריו', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7b385792-c37c-422a-a167-69ff9cc5186b', '4e82a11a-3832-4e1e-bd26-39afd81f5385', '1mg ללא שטיפה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fa1a9d90-cf84-415f-b4ef-39b11f22fd39', '4e82a11a-3832-4e1e-bd26-39afd81f5385', '2mg עם שטיפה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6971bd7d-0d1c-4dd1-aeb5-ab3dd34377a9', '4e82a11a-3832-4e1e-bd26-39afd81f5385', '0.1mg בלבד', false, 4, NOW());


-- Question 124: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'f6987ad1-a76b-4ea4-8beb-b0643c5c14ad',
    'כמה מנות Atropine ניתן לתת בברדיקרדיה?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'אפשר לתת עד 6 מנות, אבל לא חייבים להגיע לשם. ניתן מנות נוספות אם רואים שהאטרופין עוזר.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('009dfb11-d0d9-42cb-915c-324767988f01', 'f6987ad1-a76b-4ea4-8beb-b0643c5c14ad', 'עד 6 מנות אם רואים שהאטרופין עוזר', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1d6264a6-1503-4579-a0aa-b27f6d1485ee', 'f6987ad1-a76b-4ea4-8beb-b0643c5c14ad', 'מנה אחת בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ce33af54-bdc6-4096-93f7-e44f13493ac4', 'f6987ad1-a76b-4ea4-8beb-b0643c5c14ad', 'מנות בלתי מוגבלות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('692507a2-e806-4ded-8895-723ea375a33c', 'f6987ad1-a76b-4ea4-8beb-b0643c5c14ad', 'עד 3 מנות מקסימום', false, 4, NOW());


-- Question 125: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '795e5f17-1fad-4dc7-8a02-098aa07daeb7',
    'מהו Morphine (מורפין)?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Morphine הוא משכך כאבים אופיאטי חזק המופק מצמח הפרג, משמש בטיפול בכאב חזק.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4a89e7df-8308-42c8-9d6f-8dd254f6173e', '795e5f17-1fad-4dc7-8a02-098aa07daeb7', 'משכך כאבים אופיאטי חזק', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('57fee075-4d0c-498b-b597-c6d9c7372262', '795e5f17-1fad-4dc7-8a02-098aa07daeb7', 'תרופה להרדמה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('80cc79cd-95bc-46c4-bc5f-f6f111da37c8', '795e5f17-1fad-4dc7-8a02-098aa07daeb7', 'אנטיביוטיקה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c578acf5-be20-4f60-8c4c-a07701b231e8', '795e5f17-1fad-4dc7-8a02-098aa07daeb7', 'תרופה ללחץ דם', false, 4, NOW());


-- Question 126: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '74490734-563c-49d8-9a6a-4ded1fef7dee',
    'מתי ניתן Morphine או Fentanyl ב-ACS?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'אופיאטים (מורפין ופנטניל) ניתנים רק בחולים שלא הגיבו לטיפול באספירין וניטרטים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4ae59f56-e510-4309-80fd-4f32f3b6613b', '74490734-563c-49d8-9a6a-4ded1fef7dee', 'רק בחולים שלא הגיבו לטיפול באספירין וניטרטים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('256685a6-31c5-49b8-b9a7-e9d987e30f98', '74490734-563c-49d8-9a6a-4ded1fef7dee', 'מיד בתחילת הטיפול', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2324932c-2d01-410f-8d2e-cd3a0c55264c', '74490734-563c-49d8-9a6a-4ded1fef7dee', 'רק אם יש אלרגיה לאספירין', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0e08b67b-7c1a-4635-92aa-29aa2c6d596e', '74490734-563c-49d8-9a6a-4ded1fef7dee', 'רק בחולים מעל גיל 65', false, 4, NOW());


-- Question 127: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '9fafb589-3a43-4fa9-bcf0-fd8c9b077921',
    'מהו Adenosine (אדנוזין)?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Adenosine הוא תרופה אנטי-אריתמית המשמשת בעיקר לטיפול ב-PSVT על ידי עיכוב פעילות חשמלית ב-AV Node.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6f1d2b1d-1618-460e-bc21-d48ef7c8ae57', '9fafb589-3a43-4fa9-bcf0-fd8c9b077921', 'תרופה אנטי-אריתמית לטיפול ב-PSVT', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4d3114c1-d979-452c-8310-60a5546cb710', '9fafb589-3a43-4fa9-bcf0-fd8c9b077921', 'משכך כאבים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b9a77946-d48c-4784-a5a7-d8d944a69e4b', '9fafb589-3a43-4fa9-bcf0-fd8c9b077921', 'אנטיביוטיקה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('707a2898-cab7-4022-a996-4fd2f3fef214', '9fafb589-3a43-4fa9-bcf0-fd8c9b077921', 'תרופה להרדמה', false, 4, NOW());


-- Question 128: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '0495ca44-855f-4f1e-bb7c-244c90e8d576',
    'מהו ה-T1/2 של Adenosine?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'אדנוזין מגיע ל-T-חצי של 6 שניות. זו תרופה עם זמן פעולה קצר מאוד.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('83e104ac-5f11-40d8-973c-9b764ad40e60', '0495ca44-855f-4f1e-bb7c-244c90e8d576', '6 שניות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e0854746-9ba7-4277-9578-3b50a83c4a5e', '0495ca44-855f-4f1e-bb7c-244c90e8d576', '6 דקות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('15a196b7-8b92-4ade-baa2-3adb97fd3374', '0495ca44-855f-4f1e-bb7c-244c90e8d576', '60 שניות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c8c6a6a1-7f77-40f8-8e86-99f442cab781', '0495ca44-855f-4f1e-bb7c-244c90e8d576', '30 שניות', false, 4, NOW());


-- Question 129: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '8b035777-c199-4b13-9b23-c5871f9d4ed9',
    'מהן המנות של Adenosine בפרוטוקול?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'מנה ראשונה - אדנוזין 6 מ"ג, מנה שניה - אדנוזין 12 מ"ג, מנה שלישית - אדנוזין 12 מ"ג.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c033235e-b419-408c-95da-679dc458fd45', '8b035777-c199-4b13-9b23-c5871f9d4ed9', 'מנה ראשונה 6mg, מנה שניה 12mg, מנה שלישית 12mg', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c62c3079-5831-4712-bb50-b8d424f4409a', '8b035777-c199-4b13-9b23-c5871f9d4ed9', 'כל המנות 6mg', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6ab7aab1-5783-49af-ae50-d35286cbb7ee', '8b035777-c199-4b13-9b23-c5871f9d4ed9', 'מנה ראשונה 12mg, מנה שניה 6mg', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('aa46ddfd-8aef-48f2-9793-2830e5761e96', '8b035777-c199-4b13-9b23-c5871f9d4ed9', 'מנה יחידה של 18mg', false, 4, NOW());


-- Question 130: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd8bda39a-d6dd-4d21-aea4-55697bd1a64b',
    'מהי התווית נגד מוחלטת למתן Adenosine?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'אדנוזין גורם להחמרה של התקף אסטמה פעיל. אם החולה הוא חולה אסטמה ואין לו עכשיו התקף, אין בעיה לתת לו אדנוזין.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4c1a2549-4589-4e65-b1dd-7a98e3cebf42', 'd8bda39a-d6dd-4d21-aea4-55697bd1a64b', 'התקף אסטמה פעיל', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a82561f4-3833-470b-b4b1-8b109873f7e3', 'd8bda39a-d6dd-4d21-aea4-55697bd1a64b', 'חולה אסטמה ללא התקף פעיל', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4d789f1d-b1e4-4b69-94dd-83860e0457be', 'd8bda39a-d6dd-4d21-aea4-55697bd1a64b', 'גיל מעל 65', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7fb65036-28a0-44c1-a84a-2412f4292f4f', 'd8bda39a-d6dd-4d21-aea4-55697bd1a64b', 'לחץ דם מעל 140', false, 4, NOW());


-- Question 131: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '5e2cd9d8-2071-41a2-ab3b-d0176de0b451',
    'כיצד נותנים Adenosine?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'מכניסים מזרק עם אדנוזין לפקק הצבעוני של הוונפלון ואת השטיפה לפקק הלבן, נותנים את האדנוזין ומיד את הסליין (20cc push).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a1038dd7-5f24-42de-a280-df7b6efba604', '5e2cd9d8-2071-41a2-ab3b-d0176de0b451', 'מזרק אדנוזין דרך הפקק הצבעוני ושטיפת 20cc סליין דרך הפקק הלבן מיידית אחרי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('687eb996-7f4b-4a92-be95-348241d9d3fc', '5e2cd9d8-2071-41a2-ab3b-d0176de0b451', 'מזרק אדנוזין לאט במשך דקה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cb612c26-fe18-445c-b646-7fe7f20de2e4', '5e2cd9d8-2071-41a2-ab3b-d0176de0b451', 'אדנוזין בטפטוף רציף', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9f804a12-0d3b-4770-9ca5-3f77ce7af130', '5e2cd9d8-2071-41a2-ab3b-d0176de0b451', 'אדנוזין דרך הפקק הלבן ללא שטיפה', false, 4, NOW());


-- Question 132: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1a81ff46-98fa-4d5e-8b9a-02152dc2c7e1',
    'מדוע חובה להשכיב חולה לפני מתן Adenosine?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'האדנוזין מפיל לחץ דם. אבל תוך 9 שניות זה עובר. בגלל זה חובה להשכיב את החולה כדי שלא יתעלף.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('821b9289-d364-4eb5-845b-a8a0c76bbd8c', '1a81ff46-98fa-4d5e-8b9a-02152dc2c7e1', 'האדנוזין מפיל לחץ דם ויכול לגרום להתעלפות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('512832a1-15cf-4991-bc87-d157816585c6', '1a81ff46-98fa-4d5e-8b9a-02152dc2c7e1', 'להקל על מתן התרופה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cfe2aaf8-ae3c-49e5-9ee6-876f06b5336b', '1a81ff46-98fa-4d5e-8b9a-02152dc2c7e1', 'כדי לבצע ECG', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('23f0d44a-786e-494a-96f0-6528ba17fb81', '1a81ff46-98fa-4d5e-8b9a-02152dc2c7e1', 'אין חובה להשכיב את החולה', false, 4, NOW());


-- Question 133: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '349db0e3-7283-4d4b-ad01-f9511255f380',
    'מהו Amiodarone?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Amiodarone היא תרופה אנטי-אריתמית המשמשת בטיפול בהפרעות קצב חדריות ועלייתיות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cefbc69e-326b-4272-8a35-05cc66c4938e', '349db0e3-7283-4d4b-ad01-f9511255f380', 'תרופה אנטי-אריתמית לטיפול בהפרעות קצב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fcfb5c84-b4db-4016-9809-0195b90fc720', '349db0e3-7283-4d4b-ad01-f9511255f380', 'משכך כאבים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1f7493eb-8302-475c-b40a-75f85ad44f66', '349db0e3-7283-4d4b-ad01-f9511255f380', 'אנטיביוטיקה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6e7f2566-f15e-4119-9bfc-72e9e1f7a0f9', '349db0e3-7283-4d4b-ad01-f9511255f380', 'תרופה להרדמה', false, 4, NOW());


-- Question 134: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '57616d7c-8a6d-439a-95db-282cddaa5707',
    'מדוע Amiodarone משפיע על בלוטת התריס?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'יש תרופה שנקראת אמיודרון שמשפיעה על בלוטת התריס. התרופה הזו נשארת בגוף במשך 52 יום ולכן לא נוכל לבדוק את מצב הבלוטה עד שהתרופה יוצאת מהמערכת.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('681118cc-c6b9-4f17-a67d-e9de8af679f7', '57616d7c-8a6d-439a-95db-282cddaa5707', 'התרופה מכילה יוד ונשארת בגוף עד 52 יום', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('04fbcae4-e125-48a5-bf84-d54a7ad381d5', '57616d7c-8a6d-439a-95db-282cddaa5707', 'התרופה הורסת את בלוטת התריס', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cf61543e-6233-4160-91ce-053ba3e37aa6', '57616d7c-8a6d-439a-95db-282cddaa5707', 'התרופה מגבירה ייצור הורמוני תריס', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2355710b-0629-4ef5-a942-ed436f9b3779', '57616d7c-8a6d-439a-95db-282cddaa5707', 'אין לה השפעה על בלוטת התריס', false, 4, NOW());


-- Question 135: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '5d9b0405-21e9-4961-96c1-31ce28fa605b',
    'מהו Aspirin?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Aspirin הוא תרופה נוגדת טסיות (antiplatelet) המשמשת בטיפול ב-ACS למניעת הרחבת הקריש.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5cd8629a-6954-41bb-9348-158e79a6dd4f', '5d9b0405-21e9-4961-96c1-31ce28fa605b', 'תרופה נוגדת טסיות המשמשת ב-ACS', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1f66da6e-3a00-49c2-b996-bce6fab85276', '5d9b0405-21e9-4961-96c1-31ce28fa605b', 'אנטיביוטיקה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('87feb020-3331-401e-bbc7-5bd20c92febe', '5d9b0405-21e9-4961-96c1-31ce28fa605b', 'תרופה להרדמה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('60af61bb-f1b4-4232-87dc-65cc277fc339', '5d9b0405-21e9-4961-96c1-31ce28fa605b', 'תרופה נוגדת כאב בלבד', false, 4, NOW());


-- Question 136: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '42b48339-16d5-4313-ab26-4732f4a9c8b5',
    'מהו המינון של Aspirin ב-ACS?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'אספירין בלעיסה 300 מ"ג כבר בשלב מוקדם. ניתן הרבה לפני אק"ג וגם לפני וריד. אספירין הוא אנטי אגרגנטי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('74d4d292-8175-4b8b-ae88-0355c40fd001', '42b48339-16d5-4313-ab26-4732f4a9c8b5', '300mg בלעיסה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('52b9bdfd-6572-4e8a-a811-77e1707453ab', '42b48339-16d5-4313-ab26-4732f4a9c8b5', '100mg בבליעה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a9b6efe5-dd03-42f8-979c-f03dded1effd', '42b48339-16d5-4313-ab26-4732f4a9c8b5', '500mg IV', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('97f56c15-45b7-4b93-ade2-a7bd5f90df7b', '42b48339-16d5-4313-ab26-4732f4a9c8b5', '150mg תת-לשוני', false, 4, NOW());


-- Question 137: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '15cd83ba-773b-48a3-abb8-02eb0a618852',
    'מהן התוויות הנגד למתן Aspirin?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'התוויות נגד הן רגישות ידועה, אסטמה קשה שהחמירה בעקבות נטילת אספירין, או אם הוא סובל מדימומים כלשהם, בעיקר במערכת העיכול.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('55351d3a-272b-4924-b6da-87a9fe8b2eea', '15cd83ba-773b-48a3-abb8-02eb0a618852', 'רגישות ידועה, אסטמה קשה שהחמירה מאספירין, דימומים במערכת העיכול', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c007b3eb-b7f4-40ab-a5ed-93db3ee82f73', '15cd83ba-773b-48a3-abb8-02eb0a618852', 'רק אלרגיה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2a154f00-d5fc-424b-b609-55bfaaed48a1', '15cd83ba-773b-48a3-abb8-02eb0a618852', 'גיל מעל 70', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d804aef4-ea33-4325-9017-a7513d045496', '15cd83ba-773b-48a3-abb8-02eb0a618852', 'לחץ דם מעל 140', false, 4, NOW());


-- Question 138: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1f336ac2-ee8b-48d8-93ff-cf135a5ef78c',
    'מדוע Aspirin חשוב כל כך בהפרעות קצב?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'המקור הראשון של הפרעות קצב היא איסכמיה ולכן אספירין סופר חשוב, אפילו בחולה עם VT לא יציב.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('83b09d4d-ecd6-4537-9491-c3cbd09d1870', '1f336ac2-ee8b-48d8-93ff-cf135a5ef78c', 'המקור הראשון של הפרעות קצב היא איסכמיה ולכן אספירין סופר חשוב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8705ae58-2f91-44ef-ab47-0b499083f969', '1f336ac2-ee8b-48d8-93ff-cf135a5ef78c', 'אספירין מוריד קצב לב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f310da01-a1e0-47c9-87f6-3d2f5290b315', '1f336ac2-ee8b-48d8-93ff-cf135a5ef78c', 'אספירין מעלה לחץ דם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b9bf97e1-3583-44cd-a923-8256f8956946', '1f336ac2-ee8b-48d8-93ff-cf135a5ef78c', 'אספירין מרגיע את החולה', false, 4, NOW());


-- Question 139: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '52bd8455-7e11-49e2-adb8-3a81ba61ab04',
    'מה היתה התרופה הראשונה שסונתזה בפרמקולוגיה המודרנית?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'בפרמקולוגיה המודרנית שהתחילה במאה ה-19, התרופה הראשונה שסונתזה מאפס היא אספירין.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cabe0a1a-663d-4a05-87b6-46ae8190a7a7', '52bd8455-7e11-49e2-adb8-3a81ba61ab04', 'Aspirin', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('778706ef-f2d2-4e94-9998-5cf17c3389ee', '52bd8455-7e11-49e2-adb8-3a81ba61ab04', 'Morphine', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('723d9442-8113-4863-87b9-0b1452b47ce7', '52bd8455-7e11-49e2-adb8-3a81ba61ab04', 'Atropine', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a6b532e7-dbaa-4688-80d7-10d72b670bc2', '52bd8455-7e11-49e2-adb8-3a81ba61ab04', 'Epinephrine', false, 4, NOW());


-- Question 140: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a500276e-1353-476b-8fc5-b381ca68f8dc',
    'מהם Beta Blockers (חוסמי בטא)?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Beta Blockers הם אנטגוניסטים למערכת הסימפתטית, חוסמים קולטני בטא ומאטים קצב הלב ומורידים לחץ דם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0874103c-625b-46df-81dc-9615be56ebd0', 'a500276e-1353-476b-8fc5-b381ca68f8dc', 'תרופות המאטות קצב הלב ומורידות לחץ דם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a8d12fe0-e9f7-4df2-8fac-453053b83869', 'a500276e-1353-476b-8fc5-b381ca68f8dc', 'תרופות המגבירות קצב הלב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bf12fede-7871-4835-b919-9048ff9702d8', 'a500276e-1353-476b-8fc5-b381ca68f8dc', 'אנטיביוטיקות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d0f4c31d-783c-4a3e-b2c8-7397c9a7c7d6', 'a500276e-1353-476b-8fc5-b381ca68f8dc', 'משככי כאבים', false, 4, NOW());


-- Question 141: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'eb111f14-d6a0-4da8-a51e-e28c826d07f1',
    'מה מנגנון הפעולה של Beta Blockers?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Beta Blockers הם אנטגוניסטים למערכת הסימפתטית, חוסמים קולטני בטא ובכך מאטים את הלב ומורידים לחץ דם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fee53827-6099-4040-b122-7bca11a34004', 'eb111f14-d6a0-4da8-a51e-e28c826d07f1', 'אנטגוניסטים לקולטני בטא של המערכת הסימפתטית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d82831dc-0b0b-4982-9898-823e2f177edb', 'eb111f14-d6a0-4da8-a51e-e28c826d07f1', 'אגוניסטים למערכת הפרא-סימפתטית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f34b3014-eb76-423a-9ca4-8ca5c761c887', 'eb111f14-d6a0-4da8-a51e-e28c826d07f1', 'חוסמי תעלות סידן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c1ac999e-2394-4298-b5fd-da662ad874dc', 'eb111f14-d6a0-4da8-a51e-e28c826d07f1', 'מרחיבי כלי דם ישירים', false, 4, NOW());


-- Question 142: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '0290234f-a28c-4d66-9b75-712298b9709f',
    'מהם Diuretics (משתנים)?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Diuretics הם משתנים - תרופות המגבירות הפרשת שתן ובכך מורידות עומס נוזלים ולחץ דם, משמשים בבצקת ריאות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0f925a91-8755-4067-857b-fb782916e303', '0290234f-a28c-4d66-9b75-712298b9709f', 'תרופות המגבירות הפרשת שתן ומורידות עומס נוזלים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1a42b420-96d3-4114-b1cd-ed61edc97459', '0290234f-a28c-4d66-9b75-712298b9709f', 'תרופות לטיפול בזיהומי שתן', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3719c6d6-c50a-48bb-9d9d-656f95fc7770', '0290234f-a28c-4d66-9b75-712298b9709f', 'תרופות להעלאת לחץ דם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d453ccf6-e72d-47e8-8fdd-889e88725ea4', '0290234f-a28c-4d66-9b75-712298b9709f', 'תרופות נוגדות כאב', false, 4, NOW());


-- Question 143: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ef16ef9c-fd4a-41ac-b84d-0fa050bd2010',
    'מהם Potassium-Sparing Diuretics?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Potassium-Sparing Diuretics הם משתנים מיוחדים ששומרים על אשלגן ומונעים אובדן יתר שלו בשתן.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fe4be0a6-c74b-4516-8b2e-f26805e37e88', 'ef16ef9c-fd4a-41ac-b84d-0fa050bd2010', 'משתנים ששומרים על אשלגן ומונעים אובדן שלו', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('84373fd3-8dae-4850-9c22-c959063190d8', 'ef16ef9c-fd4a-41ac-b84d-0fa050bd2010', 'משתנים המגבירים הפרשת אשלגן', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d2e49886-2033-4942-b471-39e241241fef', 'ef16ef9c-fd4a-41ac-b84d-0fa050bd2010', 'תרופות להעלאת אשלגן בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8bc0c385-aca1-473f-b782-fe45295edb25', 'ef16ef9c-fd4a-41ac-b84d-0fa050bd2010', 'תרופות להורדת אשלגן', false, 4, NOW());


-- Question 144: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '90220301-c792-441e-9cb0-f4415d42f41a',
    'מהו Nitroglycerin (ניטרוגליצרין)?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Nitroglycerin הוא ניטראט המרחיב כלי דם, מוריד Preload ו-Afterload ומשמש בטיפול ב-ACS ובבצקת ריאות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1387dc05-1082-427c-90e5-6a507a79e2c3', '90220301-c792-441e-9cb0-f4415d42f41a', 'תרופה מרחיבת כלי דם לטיפול בכאבי חזה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c8441bfa-ff4b-442b-a275-619acc15d42c', '90220301-c792-441e-9cb0-f4415d42f41a', 'אנטיביוטיקה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('11d68a9e-e063-49f2-b2d2-24d43bc6af77', '90220301-c792-441e-9cb0-f4415d42f41a', 'משכך כאבים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('654abb4e-6269-4ea7-83f0-e5a64c6eb4c5', '90220301-c792-441e-9cb0-f4415d42f41a', 'תרופה להעלאת לחץ דם', false, 4, NOW());


-- Question 145: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '3660bbe5-59ae-4eff-9502-8c6d300b3da7',
    'מהו Sodium Bicarbonate?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Sodium Bicarbonate (נתרן ביקרבונט) משמש לטיפול בחמצת מטבולית על ידי העלאת ה-pH.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0a0cc5e3-b2d9-4cc0-ad21-2e0afbc76ce1', '3660bbe5-59ae-4eff-9502-8c6d300b3da7', 'תרופה לטיפול בחמצת מטבולית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('05f72855-765c-47a2-a6e0-b46d22296f1a', '3660bbe5-59ae-4eff-9502-8c6d300b3da7', 'תרופה לטיפול בבססת', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c905a3bb-6165-481c-9b5f-26fea77eb8a1', '3660bbe5-59ae-4eff-9502-8c6d300b3da7', 'אנטיביוטיקה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('246c5e3a-89c2-40a4-a13e-cac294bac33b', '3660bbe5-59ae-4eff-9502-8c6d300b3da7', 'משכך כאבים', false, 4, NOW());


-- Question 146: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '19dea86b-82cf-43a2-9703-c32446c3edce',
    'מהו Glucose?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Glucose הוא סוכר פשוט המשמש לטיפול בהיפוגליקמיה (סוכר נמוך), ניתן IV במינון 25g.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ab8dd662-180f-470c-979d-6d2ca8a5b53b', '19dea86b-82cf-43a2-9703-c32446c3edce', 'סוכר פשוט לטיפול בהיפוגליקמיה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f818e3a6-7d22-4c7f-ba92-57c8fa7b2e03', '19dea86b-82cf-43a2-9703-c32446c3edce', 'תרופה להורדת סוכר', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6bb4762c-a50e-4178-9b25-cb1c6028efba', '19dea86b-82cf-43a2-9703-c32446c3edce', 'אנטיביוטיקה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('50ea6be2-f5c5-4123-b4e9-486fb3903a76', '19dea86b-82cf-43a2-9703-c32446c3edce', 'משכך כאבים', false, 4, NOW());


-- Question 147: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '53f98b1b-4ef3-48c6-a1ab-c9cefb50f6bc',
    'מהו Midazolam (דורמיקום)?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Midazolam (דורמיקום) הוא בנזודיאזפין המשמש להרדמה, הרגעה ובקרת פרכוסים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1dbc367b-cc6f-4cb0-b57a-e0d5225e9b87', '53f98b1b-4ef3-48c6-a1ab-c9cefb50f6bc', 'בנזודיאזפין להרדמה והרגעה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5d53e743-5b07-45ef-82e7-923ec26ffb70', '53f98b1b-4ef3-48c6-a1ab-c9cefb50f6bc', 'אנטיביוטיקה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e64df00e-0fff-4663-82a7-b7e2fae9c057', '53f98b1b-4ef3-48c6-a1ab-c9cefb50f6bc', 'משכך כאבים אופיאטי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bdaa7023-3897-4fb2-98f6-ba909f921b2a', '53f98b1b-4ef3-48c6-a1ab-c9cefb50f6bc', 'תרופה ללחץ דם', false, 4, NOW());


-- Question 148: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'be4a8832-39d2-4b2f-9347-74e8be9c4a55',
    'מהו Ketamine ומהם היתרונות שלו?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Ketamine משמש להרדמה, יש לו השפעה אנלגטית טובה עם אופיאטים, ומרחיב סימפונות לכן מצוין ב-COPD/אסטמה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ccd53576-93da-4714-acef-38044cd32387', 'be4a8832-39d2-4b2f-9347-74e8be9c4a55', 'תרופה להרדמה עם השפעה אנלגטית ומרחיבה סימפונות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1be61cae-8ee7-4231-abae-3849743c0817', 'be4a8832-39d2-4b2f-9347-74e8be9c4a55', 'תרופה להורדת לחץ דם בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bb56923a-9b31-496b-bc97-d1b8e63f9987', 'be4a8832-39d2-4b2f-9347-74e8be9c4a55', 'אנטיביוטיקה רחבת טווח', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('28236863-2997-49db-9747-492b9fb7162c', 'be4a8832-39d2-4b2f-9347-74e8be9c4a55', 'תרופה נוגדת קרישה', false, 4, NOW());


-- Question 149: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c27b1d20-a420-4545-8ac7-f00bd0301ac7',
    'מהן קונטרא-אינדיקציות למתן Ketamine?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'לפי הפרוטוקול והמודולה, Ketamine לא ניתן כאשר לחץ הדם פחות מ-90-100 סיסטולי, אלא אם אין ברירה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8b0db528-c4a4-46ec-84ce-fe8600f8173c', 'c27b1d20-a420-4545-8ac7-f00bd0301ac7', 'לחץ דם פחות מ-90-100 סיסטולי (קונטרה יחסית)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ad289f50-bbce-4f85-a519-5a26f1ad9fe7', 'c27b1d20-a420-4545-8ac7-f00bd0301ac7', 'כל חולה מעל גיל 65', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a882ef72-fb44-491d-b42b-187fd26008a0', 'c27b1d20-a420-4545-8ac7-f00bd0301ac7', 'חולה עם סוכרת', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('44a76d82-a2d8-4543-baef-f48aedb4d80c', 'c27b1d20-a420-4545-8ac7-f00bd0301ac7', 'חולה עם אסטמה', false, 4, NOW());


-- Question 150: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c7518963-6d6f-411d-8b14-f34f9c4d6cfa',
    'מהו Enoxaparin Sodium?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Enoxaparin Sodium הוא הפרין במשקל מולקולרי נמוך (LMWH) המשמש למניעת קרישה ב-ACS.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ee7aa894-e5da-4b4c-945c-1a056aeb7d19', 'c7518963-6d6f-411d-8b14-f34f9c4d6cfa', 'הפרין במשקל מולקולרי נמוך - תרופה נוגדת קרישה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a5de0ce5-f88f-456c-9387-4a472c521bfd', 'c7518963-6d6f-411d-8b14-f34f9c4d6cfa', 'תרופה מקריזה דם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d394b22d-27e2-438b-9c2e-abf1bc15e255', 'c7518963-6d6f-411d-8b14-f34f9c4d6cfa', 'אנטיביוטיקה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5fd6b873-f08b-4e18-b3a3-84acda064167', 'c7518963-6d6f-411d-8b14-f34f9c4d6cfa', 'משכך כאבים', false, 4, NOW());


-- Question 151: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ecfa9f9b-34aa-40d4-ac0b-a421b9af2608',
    'מהו ED/50 (החציון המועיל)?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'ED/50 הוא החציון המועיל - מדד ליעילות של תרופה, מוגדר ככמות התרופה שתגרום להשפעה תרפיוטית ב-50% מהאנשים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7493a571-0bbb-460d-ac5d-5ea28b942114', 'ecfa9f9b-34aa-40d4-ac0b-a421b9af2608', 'כמות התרופה שתגרום להשפעה תרפיוטית ב-50% מהאנשים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('41869682-0f08-45a8-b4cd-e26427caa420', 'ecfa9f9b-34aa-40d4-ac0b-a421b9af2608', 'כמות התרופה שתגרום למוות ב-50% מהאנשים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cef0a48a-81a1-444a-83d5-71c0ee50523b', 'ecfa9f9b-34aa-40d4-ac0b-a421b9af2608', '50% מהמינון המקסימלי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6fc163df-c2aa-46d4-878a-e1cb3d0f1d05', 'ecfa9f9b-34aa-40d4-ac0b-a421b9af2608', 'הזמן עד לפעולת התרופה', false, 4, NOW());


-- Question 152: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '0650b3dc-331a-4883-9e51-f15355e2696d',
    'מהו LD/50 (חציון המוות)?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'LD/50 הוא חציון המוות - מדד לרעילות של תרופה, מוגדר ככמות התרופה שתגרום למוות ב-50% מהאנשים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c6680594-0763-4c6e-879a-5dbcbbaa3710', '0650b3dc-331a-4883-9e51-f15355e2696d', 'כמות התרופה שתגרום למוות ב-50% מהאנשים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c6e47c27-00a0-49bd-9417-a18a328d53d6', '0650b3dc-331a-4883-9e51-f15355e2696d', 'כמות התרופה שתגרום להשפעה תרפיוטית ב-50%', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c29c9361-8d3d-4b19-a764-2c2db4d2585f', '0650b3dc-331a-4883-9e51-f15355e2696d', '50% מהמינון התרפיוטי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('32557f3b-7d47-49f2-a008-1dbe8ff023c8', '0650b3dc-331a-4883-9e51-f15355e2696d', 'הזמן עד למוות מהתרופה', false, 4, NOW());


-- Question 153: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '01cb172e-c497-46a9-b504-df1791b0602c',
    'מהו Therapeutic Index (אינדקס תרפויטי)?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Therapeutic Index הוא מדד לבטיחות של תרופה - היחס בין המנה התרפיוטית למנה הרעילה. ככל שהמרווח יותר גדול, ככה ניתן להיות יותר גמיש עם המתן.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('07b97f77-5a8b-49f5-984c-2564e9772b8c', '01cb172e-c497-46a9-b504-df1791b0602c', 'היחס בין המנה התרפיוטית למנה הרעילה (LD/ED)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('16f7ab9c-db7b-4abe-8716-ddb8bf45b11c', '01cb172e-c497-46a9-b504-df1791b0602c', 'כמות התרופה הנדרשת לטיפול', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c749bf07-c901-4e93-ac27-548748ef3e5d', '01cb172e-c497-46a9-b504-df1791b0602c', 'הזמן שהתרופה נמצאת בגוף', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('22cfce39-bf1d-48ad-92d4-ccbcb4bd15de', '01cb172e-c497-46a9-b504-df1791b0602c', 'מספר המנות ביום', false, 4, NOW());


-- Question 154: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'aeef9097-a0ec-4a5d-8899-7e76550d96c6',
    'מהו T1/2 של תרופה?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'T1/2 הוא הזמן שלוקח ל-50% מהתרופה בדם להתפרק. זהו בעצם הזמן שבו התרופה נמצאת ברמה תרפיוטית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('11d50fe1-a11f-4718-97d2-7d19bcc7f29d', 'aeef9097-a0ec-4a5d-8899-7e76550d96c6', 'הזמן שלוקח ל-50% מהתרופה בדם להתפרק', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5e4d5f24-ce15-4cd0-8a58-c06672a614fd', 'aeef9097-a0ec-4a5d-8899-7e76550d96c6', 'מחצית המינון התרפיוטי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d14d45be-4501-49b8-98d0-95cd3ca383ce', 'aeef9097-a0ec-4a5d-8899-7e76550d96c6', 'הזמן עד לתחילת הפעולה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c5745de3-9762-45f7-a054-29b27756e065', 'aeef9097-a0ec-4a5d-8899-7e76550d96c6', 'חצי מהזמן שהתרופה פעילה', false, 4, NOW());


-- Question 155: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'b86823fb-9159-47cc-944b-e0d5d8e85b9a',
    'מהו Agonist (אגוניסט)?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Agonist הוא תרופה או חומר המשפיעים באופן חיובי או מפעילים מערכת פיזיולוגית מסויימת.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6fcd8082-50a1-4ed3-b1c7-d17787114739', 'b86823fb-9159-47cc-944b-e0d5d8e85b9a', 'תרופה או חומר המשפיעים באופן חיובי או מפעילים מערכת פיזיולוגית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e338c9cd-c245-48f0-8d17-80e0baa091fb', 'b86823fb-9159-47cc-944b-e0d5d8e85b9a', 'תרופה החוסמת מערכת פיזיולוגית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('30ab045d-199d-49e5-a91c-7eb4df010c3a', 'b86823fb-9159-47cc-944b-e0d5d8e85b9a', 'תרופה המנטרלת תרופה אחרת', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f49f7173-2a69-4b71-9954-665bed3cb78f', 'b86823fb-9159-47cc-944b-e0d5d8e85b9a', 'תרופה ללא השפעה', false, 4, NOW());


-- Question 156: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '79b9a97d-5faf-4dd3-b7e3-20de2e2fdead',
    'מהו Antagonist (אנטגוניסט)?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Antagonist הוא תרופה או חומר המשפיעים באופן שלילי, או חוסמים מערכת פיזיולוגית מסוימת, או השפעת תרופה אחרת.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fb8b222d-a0c3-4e85-bdb9-d80e7c1bb7b4', '79b9a97d-5faf-4dd3-b7e3-20de2e2fdead', 'תרופה או חומר המשפיעים באופן שלילי או חוסמים מערכת פיזיולוגית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a815912a-d3b3-4d7d-a4e5-235b172d3469', '79b9a97d-5faf-4dd3-b7e3-20de2e2fdead', 'תרופה המפעילה מערכת פיזיולוגית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9037ad08-82ff-4c6f-bf8e-de577c48aa9e', '79b9a97d-5faf-4dd3-b7e3-20de2e2fdead', 'תרופה המגבירה השפעת תרופה אחרת', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ca1200cf-2db9-4f69-9e24-e78f55dcf769', '79b9a97d-5faf-4dd3-b7e3-20de2e2fdead', 'תרופה בעלת השפעה כפולה', false, 4, NOW());


-- Question 157: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '2b694feb-9e6b-44da-82de-80d772661df1',
    'מהו Synergism (סינרגיזם)?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Synergism הוא פעילות משותפת של שתי תרופות או חומרים, על אתר פעולה זהה או על אותה מערכת, שמגבירה את ההשפעה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('427ef827-fc00-4170-9b0e-4870aa0d527c', '2b694feb-9e6b-44da-82de-80d772661df1', 'פעילות משותפת של שתי תרופות על אותה מערכת שמגבירה את ההשפעה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c150cd7e-058e-459d-969b-fb20e9f7b2a8', '2b694feb-9e6b-44da-82de-80d772661df1', 'שתי תרופות שמבטלות אחת את השניה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('dd426dc5-0df4-45e0-b93d-517c2d238281', '2b694feb-9e6b-44da-82de-80d772661df1', 'תרופה אחת בלבד בריכוז כפול', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3fe9ed99-9f36-42c2-8e05-dc4ad98c151c', '2b694feb-9e6b-44da-82de-80d772661df1', 'תרופות שפועלות על מערכות שונות', false, 4, NOW());


-- Question 158: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'e14be9d0-a9f0-40eb-81da-5ae749b42731',
    'מהי Indication (התווה)?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Indication היא רשימת המחלות או המצבים בהם יש לתת את התרופה. זהו המצב שבו ארצה לתת את התרופה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('93b996ed-f2ac-41ed-b108-9304e9bcdd63', 'e14be9d0-a9f0-40eb-81da-5ae749b42731', 'רשימת המחלות או המצבים בהם יש לתת את התרופה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('34bb26c2-ddd3-4555-b659-8294d73425c6', 'e14be9d0-a9f0-40eb-81da-5ae749b42731', 'רשימת המצבים בהם אסור לתת את התרופה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f2ea1428-1dd7-4d4a-b75d-9b1012b74867', 'e14be9d0-a9f0-40eb-81da-5ae749b42731', 'תופעות הלוואי של התרופה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('57db41d3-c383-427c-ba14-e3dafc1fc4c4', 'e14be9d0-a9f0-40eb-81da-5ae749b42731', 'המינון של התרופה', false, 4, NOW());


-- Question 159: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'bbeece8e-3fee-42a7-97fc-32d9c97437b8',
    'מהי Contra Indication (התווית נגד)?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Contra Indication היא רשימת המחלות או המקרים בהם אסור לתת את התרופה, כמו למשל איקקור באי ספיקת לב או לחץ דם נמוך.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b6c21d63-da19-48dc-a79a-9e9c13f483bc', 'bbeece8e-3fee-42a7-97fc-32d9c97437b8', 'רשימת המחלות או המקרים בהם אסור לתת את התרופה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a2cdd72c-43b5-4928-bc54-8249bc179133', 'bbeece8e-3fee-42a7-97fc-32d9c97437b8', 'רשימת המצבים בהם יש לתת את התרופה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a26895e7-2d38-4ffb-9b70-70607e6687ee', 'bbeece8e-3fee-42a7-97fc-32d9c97437b8', 'מינון מקסימלי של התרופה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('98d41ff4-5968-4422-821b-81947c503582', 'bbeece8e-3fee-42a7-97fc-32d9c97437b8', 'דרך מתן התרופה', false, 4, NOW());


-- Question 160: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '6c97f7d2-a5ac-48ef-b59b-658449fa95b0',
    'מהו Tolerance (סבילות)?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Tolerance היא ירידה בתגובת הגוף למינון התרפויטי במהלך טיפול ממושך. הגוף מפתח יותר רצפטורים ואז התרופה פחות מגיבה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d41198de-2f1a-4369-94ec-800612141c13', '6c97f7d2-a5ac-48ef-b59b-658449fa95b0', 'ירידה בתגובת הגוף למינון התרפויטי במהלך טיפול ממושך', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('188facfe-05c9-4eac-b374-c658d0c89b23', '6c97f7d2-a5ac-48ef-b59b-658449fa95b0', 'עלייה בתגובת הגוף לתרופה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4581f296-843a-41d7-8d57-8f7872d3bc0d', '6c97f7d2-a5ac-48ef-b59b-658449fa95b0', 'תגובה אלרגית לתרופה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('12cc28f3-7cf4-4d3d-b5da-9f591aa6d343', '6c97f7d2-a5ac-48ef-b59b-658449fa95b0', 'תופעת לוואי של התרופה', false, 4, NOW());


-- Question 161: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '9ff682cb-3f3d-4edb-8dd6-c989fc9965e3',
    'מהו Bioavailability (זמינות ביולוגית)?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'Bioavailability היא הכמות היחסית של התרופה שהגיעה למחזור הדם, מתוך כל הכמות שניתנה. במתן IV, 100% מהתרופה תגיע לדם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('af0aef76-3dcb-4b9e-9728-7341ebe7763e', '9ff682cb-3f3d-4edb-8dd6-c989fc9965e3', 'הכמות היחסית של התרופה שהגיעה למחזור הדם מתוך כל הכמות שניתנה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('56805273-bf6b-439e-83ec-9a5a43f5fe05', '9ff682cb-3f3d-4edb-8dd6-c989fc9965e3', 'כמות התרופה שנשארה בגוף', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0b3fb75c-8cd5-4311-ad40-a2b9c32d6c7d', '9ff682cb-3f3d-4edb-8dd6-c989fc9965e3', 'המהירות שהתרופה פועלת', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('142783f2-aa72-4ae7-b806-9cdf8db5594d', '9ff682cb-3f3d-4edb-8dd6-c989fc9965e3', 'הזמן שהתרופה נמצאת ברמה תרפיוטית', false, 4, NOW());


-- Question 162: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '3c4dd06e-20b7-4636-8181-b0a40fe15469',
    'מהי פרמקוקינטיקה?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'פרמקוקינטיקה היא תנועת התרופה בגוף - מה קורה לתרופה מרגע שהיא נכנסת, עוברת בדם ועד שהיא יוצאת החוצה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5fa81fb2-a611-4775-a49f-1164d2ac218b', '3c4dd06e-20b7-4636-8181-b0a40fe15469', 'תנועת התרופה בגוף - איך הגוף משפיע על התרופה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('31c86e71-b2f1-4e88-a69f-7caa1149f8a4', '3c4dd06e-20b7-4636-8181-b0a40fe15469', 'איך התרופה משפיעה על הגוף', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9d3d44e2-1b4f-43a5-8f31-5774da1bbe00', '3c4dd06e-20b7-4636-8181-b0a40fe15469', 'תופעות הלוואי של התרופה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5e7c5bac-b8c5-45f6-a41f-b62c88a438bd', '3c4dd06e-20b7-4636-8181-b0a40fe15469', 'המינון של התרופה', false, 4, NOW());


-- Question 163: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '35ed7e78-72ab-485e-94cd-38a40f91b2b5',
    'מהי פרמקודינמיקה?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'פרמקודינמיקה היא איך התרופה משפיעה על הגוף - על איזה רצפטורים היא נתפסת, מה היא עושה לאותם תאים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('aaca3a87-ee24-4826-82e5-0675c15403d6', '35ed7e78-72ab-485e-94cd-38a40f91b2b5', 'איך התרופה משפיעה על הגוף - על אילו רצפטורים ומה היא עושה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('03fba98c-4dda-45bd-8d87-e7f06ecb7908', '35ed7e78-72ab-485e-94cd-38a40f91b2b5', 'איך הגוף משפיע על התרופה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8d483473-baf4-4f57-a035-3203006122cf', '35ed7e78-72ab-485e-94cd-38a40f91b2b5', 'הזמן שהתרופה נמצאת בגוף', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1d78e209-c458-4e75-b7c9-9e253cf3e342', '35ed7e78-72ab-485e-94cd-38a40f91b2b5', 'דרך מתן התרופה', false, 4, NOW());


-- Question 164: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '31398189-e30c-468c-86bc-52ab7630ce10',
    'מהי מנת העמסה (Loading Dose)?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'מנת העמסה היא כמות התרופה שיש לתת במנה אחת בכדי להגיע לרמה התרפיוטית בדם במהירות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('dfbbf586-d410-4c89-99ad-3cf26e236ba6', '31398189-e30c-468c-86bc-52ab7630ce10', 'כמות התרופה שיש לתת במנה אחת בכדי להגיע לרמה התרפיוטית בדם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9e83f8a4-347b-4ceb-8ebb-b9a783cca2a2', '31398189-e30c-468c-86bc-52ab7630ce10', 'המינון היומי של התרופה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('be9bc730-4dd5-4904-8bfb-5f286682cc4f', '31398189-e30c-468c-86bc-52ab7630ce10', 'המינון המקסימלי האפשרי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1f40b927-5cf0-40cd-ab8c-5e049b538b17', '31398189-e30c-468c-86bc-52ab7630ce10', 'המינון לשמירה על רמת התרופה', false, 4, NOW());


-- Question 165: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'bdc2efa1-26bf-4a17-bf34-393e37ad4ec9',
    'מהי מנת אחזקה (Maintenance Dose)?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'מנת אחזקה היא כמות התרופה שיש לתת בפרק זמן מסוים, על מנת לשמור על הרמה התרפיוטית בדם אחרי שכבר הגענו אליה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0c758dd1-1dd0-4a5d-b86e-ab386add5d97', 'bdc2efa1-26bf-4a17-bf34-393e37ad4ec9', 'כמות התרופה שיש לתת בפרק זמן מסוים על מנת לשמור על הרמה התרפיוטית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('53df5c2c-6dd6-4d23-b85a-dd49b5041437', 'bdc2efa1-26bf-4a17-bf34-393e37ad4ec9', 'המנה הראשונה של התרופה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a293bed7-d187-418c-84c7-af63bdda63ef', 'bdc2efa1-26bf-4a17-bf34-393e37ad4ec9', 'המנה המקסימלית היומית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bbaed233-2747-4ac7-ba39-231aec3e37e2', 'bdc2efa1-26bf-4a17-bf34-393e37ad4ec9', 'מנה לטיפול חירום', false, 4, NOW());


-- Question 166: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a9f7178e-edbe-4b8a-930d-842effdb16cf',
    'מדוע חשוב לשטוף את הוונפלון אחרי מתן Atropine?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'הסיבה שיש תרופות שחשוב שכל המינון של התרופה יכנס ולא ישאר כלום בוונפלון (כמו למשל אטרופין) ולכן צריך לשטוף.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('501439a4-b88a-4c94-b3a1-2875964c7392', 'a9f7178e-edbe-4b8a-930d-842effdb16cf', 'כדי שכל המינון של התרופה יכנס ולא ישאר בוונפלון', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('25504754-5de8-4fe3-9f96-8279a78bd4d4', 'a9f7178e-edbe-4b8a-930d-842effdb16cf', 'כדי למנוע זיהום', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('209ce908-b6f6-44c0-92e9-bf34b34d737f', 'a9f7178e-edbe-4b8a-930d-842effdb16cf', 'כדי לשמור על הוונפלון פתוח', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1ed2c1ff-b136-48fb-8aee-2b27b18babdf', 'a9f7178e-edbe-4b8a-930d-842effdb16cf', 'אין צורך לשטוף', false, 4, NOW());


-- Question 167: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'e70d6c35-b161-467e-9d1a-35a49511f613',
    'מתי לא ניתן Adenosine בהפרעת קצב?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'לעולם לא ניתן אדנוזין בהפרעת קצב לא סדירה. אדנוזין ניתן רק בהפרעות קצב סדירות כמו PSVT.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1c7853e9-7d11-4f1b-8340-0cb2827067ca', 'e70d6c35-b161-467e-9d1a-35a49511f613', 'לעולם לא ניתן אדנוזין בהפרעת קצב לא סדירה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('84822460-0a42-47ae-b2f8-2a0c6b1a264a', 'e70d6c35-b161-467e-9d1a-35a49511f613', 'רק בהפרעות קצב חדריות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('446a9f73-277d-4c28-83f1-a490181f445f', 'e70d6c35-b161-467e-9d1a-35a49511f613', 'רק בהפרעות קצב עלייתיות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d4f2e849-926e-4bf6-87e4-c11ea343d1c0', 'e70d6c35-b161-467e-9d1a-35a49511f613', 'תמיד ניתן אדנוזין', false, 4, NOW());


-- Question 168: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'cf0a16db-9c05-40e1-8df1-b23de388b64b',
    'מתי לא ניתן Atropine בברדיקרדיה?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'ניתן אטרופין בחסמים פשוטים ולא ב-CAVB ששם האטרופין לא יעזור. מ-Mobitz 2 ומעלה לא ניתן אטרופין (אפשר לתת במקרה שהקומפלקס צר אבל עדיף שלא).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9fbddc29-5ae0-458f-82d3-ae113ca1ea99', 'cf0a16db-9c05-40e1-8df1-b23de388b64b', 'לא ניתן ב-CAVB ומ-Mobitz 2 ומעלה (מלבד במקרים מסוימים)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0b399c04-2829-4c6b-bacf-761b92925991', 'cf0a16db-9c05-40e1-8df1-b23de388b64b', 'לעולם לא ניתן אטרופין בברדיקרדיה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5ce9c1d9-8518-4703-a253-24cc2d036bb2', 'cf0a16db-9c05-40e1-8df1-b23de388b64b', 'ניתן בכל סוגי הברדיקרדיה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3f7921e2-74b5-432f-b07e-ec72b67abac1', 'cf0a16db-9c05-40e1-8df1-b23de388b64b', 'רק בסינוס ברדיקרדיה', false, 4, NOW());


-- Question 169: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'f32962fd-3b92-4393-9be9-872ab93755e3',
    'מדוע לא לרוץ לתת Atropine בברדיקרדיה?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'הבעיה עם אטרופין שהוא גורם טכיקרדיה. לכן לא לרוץ לתת אטרופין, צריך להעריך תחילה את מצב החולה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d2858412-86e2-44d5-b364-8015b91bd037', 'f32962fd-3b92-4393-9be9-872ab93755e3', 'הבעיה עם אטרופין שהוא גורם טכיקרדיה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('632db24a-34a9-4e50-be82-c57b4d1f991c', 'f32962fd-3b92-4393-9be9-872ab93755e3', 'אטרופין מוריד לחץ דם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8c242355-18e4-448e-ba7a-4eb96f46c84d', 'f32962fd-3b92-4393-9be9-872ab93755e3', 'אטרופין גורם לסיבוכים קשים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7dc6e084-0880-4d36-a9ab-c3749cf2065c', 'f32962fd-3b92-4393-9be9-872ab93755e3', 'אין בעיה לרוץ לתת אטרופין', false, 4, NOW());


-- Question 170: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '439204c8-1f23-4aec-b2b6-91fd00eaa65d',
    'מה קורה אחרי מתן Adenosine ב-PSVT?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'האדנוזין גורם לאסיסטולה ולכן הסינוס מנסה להשתלט על הקצב. ולכן חייבים להדפיס סטריפ תוך כדי מתן אדנוזין.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8dae462d-e503-4964-b8f8-823479bf0796', '439204c8-1f23-4aec-b2b6-91fd00eaa65d', 'הסינוס נכנס לאסיסטולה ואז מנסה להשתלט על הקצב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f158fc34-8c40-4f02-9ca7-e7a433b7c603', '439204c8-1f23-4aec-b2b6-91fd00eaa65d', 'הקצב עובר מיד לסינוס תקין', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6c5e46c5-93ed-4a40-9a36-d0b8e78a5e50', '439204c8-1f23-4aec-b2b6-91fd00eaa65d', 'הלב נעצר לצמיתות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c0c92f59-aa21-4547-b5a7-38a1b2c7cbfe', '439204c8-1f23-4aec-b2b6-91fd00eaa65d', 'אין שינוי בקצב', false, 4, NOW());


-- Question 171: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '529c3792-e5b0-4152-889c-86b211e4e1b1',
    'מה ההבדל בין VT ל-PSVT עם אברציה בתגובה ל-Adenosine?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'כדי להבחין בין PSVT עם אברציה לבין VT, ניתן אדנוזין. אם ה-Reentry הוא מהצומת, תהיה אסיסטולה. אבל אם האדנוזין לא יעשה כלום, זה אומר שזה VT.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('51d50b17-a94f-41db-83f5-138152d66bc1', '529c3792-e5b0-4152-889c-86b211e4e1b1', 'אם האדנוזין לא יעשה כלום, זה VT. אם יעשה אסיסטולה, זה PSVT', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5f796a11-5ab8-41df-bb5f-a16c174cc97e', '529c3792-e5b0-4152-889c-86b211e4e1b1', 'שניהם יגיבו באותה צורה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8f87e923-6ba7-49ad-bc69-5de7e1bd673f', '529c3792-e5b0-4152-889c-86b211e4e1b1', 'VT יגיב ו-PSVT לא', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d2351be4-3876-426e-8a47-f0e8d6c9e0ec', '529c3792-e5b0-4152-889c-86b211e4e1b1', 'אי אפשר להבחין ביניהם', false, 4, NOW());


-- Question 172: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'f0c5b45c-6acc-461b-8fe6-6726701fbf09',
    'מהן התוויות הנגד להימנע מתרופות המאטות AV Node?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'יש להימנע ממתן תרופות המאטות את ההולכה ב-AV Node כמו אדנוזין, איקקור, חוסמי בטא, חוסמי סידן במקרה של WPW.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0a298e1e-db84-44e5-af62-00ce3d9dfcf7', 'f0c5b45c-6acc-461b-8fe6-6726701fbf09', 'יש להימנע ממתן אדנוזין, איקקור, חוסמי בטא, חוסמי סידן ב-WPW', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('50a0f239-561b-4d40-a476-fd5022d03867', 'f0c5b45c-6acc-461b-8fe6-6726701fbf09', 'אין התוויות נגד לתרופות אלו', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7c3b7471-482f-42a0-9216-faf1e13791fa', 'f0c5b45c-6acc-461b-8fe6-6726701fbf09', 'רק בחולים מעל גיל 70', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e258baed-a6f0-4d54-aab0-0f4c0d7c3223', 'f0c5b45c-6acc-461b-8fe6-6726701fbf09', 'רק בלחץ דם נמוך', false, 4, NOW());


-- Question 173: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1212a7b3-58c5-493f-874c-09eea2a183bb',
    'מהו מקור Morphine ו-Atropine?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'מקורות לייצור תרופות כוללים צמחים - פרג (מורפין), בלה-דונה (אטרופין).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f436efc6-968a-4aad-b55c-abc3eb56806b', '1212a7b3-58c5-493f-874c-09eea2a183bb', 'צמחים - פרג (מורפין), בלה-דונה (אטרופין)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5a22eb99-66be-40e4-9522-dd93b828082b', '1212a7b3-58c5-493f-874c-09eea2a183bb', 'סינתזה כימית בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('65cc73e2-eb12-4a98-bb08-84c9b1f9cbca', '1212a7b3-58c5-493f-874c-09eea2a183bb', 'בעלי חיים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5571d6c6-968b-4e9d-bb53-e69aaf1e7df4', '1212a7b3-58c5-493f-874c-09eea2a183bb', 'מיקרואורגניזמים', false, 4, NOW());


-- Question 174: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'e73d191f-ab2d-4e4e-9a81-a1ec92bfe1d9',
    'מדוע Aspirin הורס את הקיבה?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'הפרעות שונות במערכת העיכול עצמה. אספירין לדוגמא הורס את הקיבה (את שכבת המוקוס) ולכן הוא מגיע מצופה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('61d74fd7-86fe-4f9c-9f8a-12cceeea87c4', 'e73d191f-ab2d-4e4e-9a81-a1ec92bfe1d9', 'אספירין הורס את שכבת המוקוס המגן על דופן הקיבה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('38df404a-4a6a-4275-94f3-348ce8eb16fd', 'e73d191f-ab2d-4e4e-9a81-a1ec92bfe1d9', 'אספירין מגביר חומצת קיבה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9b2d5ed9-66af-437c-88c8-e2db184f6123', 'e73d191f-ab2d-4e4e-9a81-a1ec92bfe1d9', 'אספירין גורם לזיהום בקיבה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('24eeacdc-a597-4722-8e72-dc4efcc7e312', 'e73d191f-ab2d-4e4e-9a81-a1ec92bfe1d9', 'אספירין אינו משפיע על הקיבה', false, 4, NOW());


-- Question 175: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '930e2392-b038-47ab-afc8-d27b0e1db2a1',
    'מתי ניתן לוותר על Aspirin ב-ACS?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'חולה שעושה אוטם ובצקת - אם הוא נמצא באי ספיקה נשימתית קשה, אולי בכלל נוותר על האספירין ונתן CPAP תחילה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cc0f9b6b-9e25-4054-b7fc-6d6d618a7c6a', '930e2392-b038-47ab-afc8-d27b0e1db2a1', 'אם הוא נמצא באי ספיקה נשימתית קשה, אולי נוותר על האספירין ונתמקד ב-CPAP', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b557975e-2816-41ff-b076-cb7b976d3179', '930e2392-b038-47ab-afc8-d27b0e1db2a1', 'לעולם לא מוותרים על אספירין', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0efbe89e-f512-4b4e-970e-b58f97544726', '930e2392-b038-47ab-afc8-d27b0e1db2a1', 'רק אם יש אלרגיה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d1a90681-4c46-4c3e-8614-ca0c6634df64', '930e2392-b038-47ab-afc8-d27b0e1db2a1', 'תמיד מוותרים על אספירין', false, 4, NOW());


-- Question 176: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '9785c6fd-6435-45ab-bb4b-c022c438fd38',
    'מהו Oxygen?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'חמצן (Oxygen) הוא גז חיוני לחיים המשמש לטיפול בהיפוקסיה והעלאת רמת החמצן בדם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c71d682d-684f-4ed6-bd0e-e42d0716d31f', '9785c6fd-6435-45ab-bb4b-c022c438fd38', 'גז חיוני לטיפול בהיפוקסיה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5120e15a-2abc-4e6d-bcaf-1623bcb5563b', '9785c6fd-6435-45ab-bb4b-c022c438fd38', 'תרופה להרדמה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2383bb80-0e63-42dd-a9fc-cb44fb67115c', '9785c6fd-6435-45ab-bb4b-c022c438fd38', 'אנטיביוטיקה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('af15faa5-a6a4-49d2-9c5a-e4d9673fcca2', '9785c6fd-6435-45ab-bb4b-c022c438fd38', 'משכך כאבים', false, 4, NOW());


-- Question 177: פרמקולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '391095d0-545f-4712-a624-f69c64d3d17f',
    'מהי המטרה של מתן תרופות ב-ACS?',
    (SELECT id FROM public.categories WHERE name = 'פרמקולוגיה' LIMIT 1),
    'pending',
    'הטיפול התרופתי ב-ACS כולל אספירין (אנטי אגרגנטי), ניטרטים, מתן נוגדי כאב (אופיאטים) שעוזרים להוריד את הסטרס והסימנים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d7b7c739-28d1-41bd-b53b-d65c20b1146a', '391095d0-545f-4712-a624-f69c64d3d17f', 'מתן אספירין, ניטרטים, טיפול בכאב והורדת הסטרס של המטופל', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('012cd2d7-26c4-413d-a859-84c892eaa11e', '391095d0-545f-4712-a624-f69c64d3d17f', 'רק הורדת לחץ דם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('20d70e52-6d6f-4069-bb53-c9dae84ff692', '391095d0-545f-4712-a624-f69c64d3d17f', 'רק טיפול בכאב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fdcd6e4e-9bd6-4723-952f-d4e350dd270a', '391095d0-545f-4712-a624-f69c64d3d17f', 'רק מניעת קרישה', false, 4, NOW());


-- Question 178: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '623d7045-02b4-4b5a-b8a8-3f1a438558e8',
    'מהו ECG?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'ECG (Electrocardiogram) קורא את המעבר החשמלי של הלב ומפענח בצורה גרפית את הפעילות החשמלית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a0144897-35b2-4642-8fc8-688e09ad049e', '623d7045-02b4-4b5a-b8a8-3f1a438558e8', 'אלקטרוקרדיוגרם - בדיקה הקוראת את הפעילות החשמלית של הלב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('23c383b4-5523-4275-a93c-1928282e3448', '623d7045-02b4-4b5a-b8a8-3f1a438558e8', 'בדיקת דם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1cc44596-a8e0-4aa2-8475-47e9600c284a', '623d7045-02b4-4b5a-b8a8-3f1a438558e8', 'צילום רנטגן של הלב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4eefec4a-5c04-4f9d-845f-5a8383adc288', '623d7045-02b4-4b5a-b8a8-3f1a438558e8', 'בדיקת קולות לב', false, 4, NOW());


-- Question 179: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '18f56f0d-dcad-48a0-9a76-1f00f419ed6b',
    'כמה לידים (leads) יש ב-ECG סטנדרטי?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'ECG סטנדרטי כולל 12 לידים המסתכלים על הלב מזוויות שונות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('afacd5cb-2f09-4073-bcce-6001a8571198', '18f56f0d-dcad-48a0-9a76-1f00f419ed6b', '12 לידים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('33126b06-71c3-4a4b-af15-48d162e0c9aa', '18f56f0d-dcad-48a0-9a76-1f00f419ed6b', '6 לידים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7ba4aff1-dfc8-450c-aa86-81916dc67753', '18f56f0d-dcad-48a0-9a76-1f00f419ed6b', '8 לידים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4488e597-8ed4-4969-a424-2a091a08d7b0', '18f56f0d-dcad-48a0-9a76-1f00f419ed6b', '15 לידים', false, 4, NOW());


-- Question 180: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'f397e407-ef4c-4ab5-81d1-99efef08ab3a',
    'מהי Sinus Tachycardia?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'Sinus Tachycardia היא קצב סינוסי תקין אבל מהיר (מעל 100 פעימות לדקה).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a0ff7b76-140a-45ef-af4a-4f6f4d7f1b49', 'f397e407-ef4c-4ab5-81d1-99efef08ab3a', 'קצב סינוסי מעל 100 פעימות לדקה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('31070754-8d11-4301-a54c-c77333bb8232', 'f397e407-ef4c-4ab5-81d1-99efef08ab3a', 'קצב סינוסי מתחת ל-60 פעימות לדקה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1ab4ecca-336b-4c04-99f3-97ccf91c5213', 'f397e407-ef4c-4ab5-81d1-99efef08ab3a', 'הפרעת קצב לא סינוסית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('864d3b6e-1a46-4903-b145-412bdc12dcb7', 'f397e407-ef4c-4ab5-81d1-99efef08ab3a', 'פרפור עליות', false, 4, NOW());


-- Question 181: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '7a607b11-67fe-4305-9d6c-d2ede75fd971',
    'מהי Sinus Bradycardia?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'Sinus Bradycardia היא קצב סינוסי איטי (מתחת ל-60 פעימות לדקה).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('38850c4d-ccc1-435c-a933-25820985e873', '7a607b11-67fe-4305-9d6c-d2ede75fd971', 'קצב סינוסי מתחת ל-60 פעימות לדקה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0e1911ba-6561-499c-a584-940a0e93eb0c', '7a607b11-67fe-4305-9d6c-d2ede75fd971', 'קצב סינוסי מעל 100 פעימות לדקה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('81e5229e-9c54-44d5-92c6-6107c1e506a8', '7a607b11-67fe-4305-9d6c-d2ede75fd971', 'הפרעת קצב חדרית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('995ed7b7-0b63-4a9c-92a0-f80a6b9a15d8', '7a607b11-67fe-4305-9d6c-d2ede75fd971', 'פרפור עליות', false, 4, NOW());


-- Question 182: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '7c80266e-c481-46b7-b043-1273eedd8a09',
    'מהו Defibrillation?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'Defibrillation היא דפיברילציה - מתן שוק חשמלי כטיפול בדום לב מסוג VF/VT.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d4f067fa-9c97-4175-8ada-2214aa4bcf62', '7c80266e-c481-46b7-b043-1273eedd8a09', 'דפיברילציה - מתן שוק חשמלי לטיפול ב-VF/VT', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d7562d48-aa88-43e8-9ef7-abda0a2bf387', '7c80266e-c481-46b7-b043-1273eedd8a09', 'הנשמה מלאכותית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8730b2b3-1980-4317-a3aa-630487ce82af', '7c80266e-c481-46b7-b043-1273eedd8a09', 'עיסוי לב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3d5abc48-6eee-4769-8420-783cd22fac1f', '7c80266e-c481-46b7-b043-1273eedd8a09', 'מתן תרופות', false, 4, NOW());


-- Question 183: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'e456f3a3-17c4-428e-9a59-7584130b31d4',
    'מהו IHD (Ischemic Heart Disease)?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'IHD (Ischemic Heart Disease) היא מחלת לב איסכמית הנגרמת מחסימה בעורקים הכליליים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('caafc5f9-2f40-4400-baa9-d4f254b70ebc', 'e456f3a3-17c4-428e-9a59-7584130b31d4', 'מחלת לב איסכמית - חסימה בעורקים הכליליים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('70af3976-1e05-44bb-8005-2d0bfbc692fa', 'e456f3a3-17c4-428e-9a59-7584130b31d4', 'דלקת שריר הלב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f47054e9-4eb5-46ce-a54a-0c45e559d1a6', 'e456f3a3-17c4-428e-9a59-7584130b31d4', 'הפרעת קצב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b884f4a6-c743-4a5f-a43a-450ab3625fdd', 'e456f3a3-17c4-428e-9a59-7584130b31d4', 'מום במסתמי הלב', false, 4, NOW());


-- Question 184: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '846360eb-5cb6-41a3-bfee-d9b8716d7121',
    'איזה עליה ב-ECG מעידה על אוטם שריר הלב?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'עליית מקטע ה-ST ב-ECG מעידה על אוטם שריר הלב חריף (STEMI).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4e123b59-da6b-4a63-af5b-377f43d377a7', '846360eb-5cb6-41a3-bfee-d9b8716d7121', 'עליית מקטע ST', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('48751d4b-6c5b-42d2-a195-fe0a97561cf8', '846360eb-5cb6-41a3-bfee-d9b8716d7121', 'עליית גל P', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f3a8f6f5-6c75-41a6-a0ee-3d05cd731abe', '846360eb-5cb6-41a3-bfee-d9b8716d7121', 'עליית גל T', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9d1d3616-74ad-403b-a617-f6278b3eb48e', '846360eb-5cb6-41a3-bfee-d9b8716d7121', 'עליית גל Q', false, 4, NOW());


-- Question 185: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '41d65ba0-fed5-4bca-9a0a-87b7281f2ac2',
    'באיזה קצב לב מתחילים להופיע סימפטומים קליניים של ברדיקרדיה?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'ברדיקרדיה מתחת ל-50 מוריד את ה-Cardiac Output בצורה מסוכנת ולכן מופיעים סימנים קליניים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('999cbac1-5608-483c-87f3-5ce6cf7cccb8', '41d65ba0-fed5-4bca-9a0a-87b7281f2ac2', 'מתחת ל-50 פעימות לדקה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('30fae65d-5c94-4bad-9ad9-734ffbbabc55', '41d65ba0-fed5-4bca-9a0a-87b7281f2ac2', 'מתחת ל-80 פעימות לדקה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6bed804c-bc16-419b-bdcd-1679fe84ee0d', '41d65ba0-fed5-4bca-9a0a-87b7281f2ac2', 'מתחת ל-40 פעימות לדקה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5064d73f-86b1-465b-b204-ccc6f4907869', '41d65ba0-fed5-4bca-9a0a-87b7281f2ac2', 'מתחת ל-70 פעימות לדקה', false, 4, NOW());


-- Question 186: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd1edb989-595c-4b27-810e-b3d6d71fea4a',
    'מה קורה לדיאסטולה בטכיקרדיה?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'בטכיקרדיה הדיאסטולה מתקצרת ולכן הקורונרים לא מתמלאים וכתוצאה מזה הלב סובל כי הוא לא מקבל מספיק חמצן.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e4e8a4d9-6bd4-4af2-ba46-f6b41b6fc6f0', 'd1edb989-595c-4b27-810e-b3d6d71fea4a', 'הדיאסטולה מתקצרת והקורונרים לא מתמלאים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0c9e7c24-0413-4906-8ca1-600fff5168db', 'd1edb989-595c-4b27-810e-b3d6d71fea4a', 'הדיאסטולה מתארכת', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cb1041d7-cd46-4a96-b52e-9761eeef5621', 'd1edb989-595c-4b27-810e-b3d6d71fea4a', 'הדיאסטולה לא משתנה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('65fd2642-16b6-4f76-838f-a0b76a4af1bb', 'd1edb989-595c-4b27-810e-b3d6d71fea4a', 'הדיאסטולה נעלמת', false, 4, NOW());


-- Question 187: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '2da8567b-93ee-4c6e-98f9-462e0c4f5e07',
    'מהו טווח הקצב בסינוס טכיקרדיה?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'סינוס טכיקרדיה הוא קצב של 100 עד 180 פעימות לדקה. מעל 150 קשה לזהות אותו.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('03177a94-ae40-47ca-a555-e409ef41b35e', '2da8567b-93ee-4c6e-98f9-462e0c4f5e07', '100-180 פעימות לדקה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f864ee77-e8c2-4683-b63c-30887a9e4895', '2da8567b-93ee-4c6e-98f9-462e0c4f5e07', '60-100 פעימות לדקה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c53639ff-d43a-4f28-a197-b538bcfb700a', '2da8567b-93ee-4c6e-98f9-462e0c4f5e07', '150-250 פעימות לדקה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fbb3dafe-6d0f-487c-a3d6-1a80210472d3', '2da8567b-93ee-4c6e-98f9-462e0c4f5e07', '80-120 פעימות לדקה', false, 4, NOW());


-- Question 188: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '225673ea-63eb-438a-a851-5b5904ae212f',
    'מי סובל בברדיקרדיה - הלב או הגוף?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'בברדיקרדיה הגוף יסבול כי לא מגיע מספיק חמצן לגוף. הלב לא בהכרח סובל.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b9853e52-ed92-4ffb-930f-3ac90cb17995', '225673ea-63eb-438a-a851-5b5904ae212f', 'הגוף סובל כי לא מגיע מספיק חמצן לרקמות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3b006ecd-d782-4204-8039-910805c056c6', '225673ea-63eb-438a-a851-5b5904ae212f', 'הלב סובל מהיפוקסיה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a72d0e8a-3c9e-4ee4-9628-5c8037a5314c', '225673ea-63eb-438a-a851-5b5904ae212f', 'שניהם סובלים באותה מידה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7a8c1163-f179-4694-93f1-110ab278f4b6', '225673ea-63eb-438a-a851-5b5904ae212f', 'אף אחד לא סובל', false, 4, NOW());


-- Question 189: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'bed674d9-bbb6-4bfa-9030-50d64f1fb273',
    'מי סובל בטכיקרדיה - הלב או הגוף?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'בטכיקרדיה הלב הוא זה שסובל. הגוף אמור לקבל חמצן אבל הדיאסטולה מתקצרת ולכן הקורונרים לא מתמלאים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3c3d19bd-541e-47c7-bc78-aae0bf49f624', 'bed674d9-bbb6-4bfa-9030-50d64f1fb273', 'הלב סובל כי לא מקבל מספיק חמצן', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3b15e971-6d7e-4661-9d8a-f6a743ce561b', 'bed674d9-bbb6-4bfa-9030-50d64f1fb273', 'הגוף סובל מחוסר חמצן', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('04a22568-0977-454a-8ed2-ca82565ab300', 'bed674d9-bbb6-4bfa-9030-50d64f1fb273', 'שניהם סובלים באותה מידה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('83bfb578-22f6-48da-a4ff-0d93fdda8a9b', 'bed674d9-bbb6-4bfa-9030-50d64f1fb273', 'אף אחד לא סובל', false, 4, NOW());


-- Question 190: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '84c2e766-1b6d-47f6-a7d7-005fb468cdb9',
    'מהו הסימפטום העיקרי של טכיקרדיה?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'בטכיקרדיה יהיה קודם כל כאבים בחזה בגלל שהלב סובל מחוסר חמצן.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('caefe7c2-7f25-4ad9-8f7e-6911c4fc06ec', '84c2e766-1b6d-47f6-a7d7-005fb468cdb9', 'כאבים בחזה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ebd3404d-9413-4d17-9f69-7b905f68af54', '84c2e766-1b6d-47f6-a7d7-005fb468cdb9', 'סחרחורת', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9d83cf8f-b563-484a-b652-a1eef55fa292', '84c2e766-1b6d-47f6-a7d7-005fb468cdb9', 'התעלפות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c4dc5172-9a93-42b2-8a33-a6cc0eac072c', '84c2e766-1b6d-47f6-a7d7-005fb468cdb9', 'בחילות', false, 4, NOW());


-- Question 191: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '89bccd11-dfb9-4416-866d-07e7c443ee8f',
    'באיזה קצב סינוס טכיקרדיה נחשבת מסוכנת?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'בספרות כל מה שהוא 150 נחשב מסוכן כי הדיאסטולה קצרה מדי ולא מאפשרת מילוי תקין של הלב.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2f093aa9-bab2-4ecc-ada4-562d5c7882b0', '89bccd11-dfb9-4416-866d-07e7c443ee8f', 'מעל 150 פעימות לדקה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5d87b6fd-9fce-46eb-b2e0-f1fe48110159', '89bccd11-dfb9-4416-866d-07e7c443ee8f', 'מעל 100 פעימות לדקה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('031cd948-6c19-4db7-b79d-6160212c858d', '89bccd11-dfb9-4416-866d-07e7c443ee8f', 'מעל 120 פעימות לדקה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b1a04692-81cb-4b67-9438-56f6eb3fa016', '89bccd11-dfb9-4416-866d-07e7c443ee8f', 'מעל 180 פעימות לדקה', false, 4, NOW());


-- Question 192: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '35bbe6d3-aaf0-4af0-b8b2-a924f2791cd4',
    'איזו תרופה היא תרופת הבחירה בטיפול ב-PSVT?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'אדנוזין היא תרופה מאוד פוטנטית לשבירת PSVT. היא חוסמת את ה-AV Node באופן זמני.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0a08ddcb-3bbc-42f7-9f2d-a11d2ea0e3ac', '35bbe6d3-aaf0-4af0-b8b2-a924f2791cd4', 'אדנוזין', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5781f7fc-600d-4346-b215-bcfe61cbfcd0', '35bbe6d3-aaf0-4af0-b8b2-a924f2791cd4', 'אמיודורון', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6d69c2c3-db4a-4c20-828a-135bb25c32a3', '35bbe6d3-aaf0-4af0-b8b2-a924f2791cd4', 'אטרופין', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e702baf0-3ec2-4a60-8f3f-e52b2707925d', '35bbe6d3-aaf0-4af0-b8b2-a924f2791cd4', 'אדרנלין', false, 4, NOW());


-- Question 193: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd482a220-39e4-4d66-bc25-1dfa83cdeeff',
    'מהי העורק הכלילי שאחראי על זילוח מרבית החדר השמאלי?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'ה-LAD הוא העורק הכלילי החשוב ביותר ואחראי על זילוח מרבית החדר השמאלי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('42bf2dd0-4f61-4d3c-8b7b-5e2e2e9db996', 'd482a220-39e4-4d66-bc25-1dfa83cdeeff', 'LAD - Left Anterior Descending', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ba3cd4df-8e01-4104-84e8-90fc7678bbd7', 'd482a220-39e4-4d66-bc25-1dfa83cdeeff', 'RCA - Right Coronary Artery', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('81f80f5c-97a3-41a1-84fe-0fec5fd4f483', 'd482a220-39e4-4d66-bc25-1dfa83cdeeff', 'CX - Circumflex', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('626f6844-283f-4a25-ad38-71f0aedc308f', 'd482a220-39e4-4d66-bc25-1dfa83cdeeff', 'PDA - Posterior Descending Artery', false, 4, NOW());


-- Question 194: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ec3421ec-39a0-455d-8fe9-4c9e40a88ed1',
    'מהו הגורם העיקרי לסינוס טכיקרדיה?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'הגורם מספר 1 לסינוס טכיקרדיה זה המערכת הסימפתטית, בדרך כלל כמנגנון פיצוי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('957d88bd-66c2-4953-973a-3f8afc16d6d3', 'ec3421ec-39a0-455d-8fe9-4c9e40a88ed1', 'פעילות המערכת הסימפתטית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ed937aa9-e683-4309-a774-316ac4626782', 'ec3421ec-39a0-455d-8fe9-4c9e40a88ed1', 'פעילות המערכת הפרא-סימפתטית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d77fe661-6769-47ba-b4d6-4917abf4e081', 'ec3421ec-39a0-455d-8fe9-4c9e40a88ed1', 'אוטם שריר הלב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('eba42d24-1f36-4ce8-b9f6-61589b12ee2d', 'ec3421ec-39a0-455d-8fe9-4c9e40a88ed1', 'תרופות', false, 4, NOW());


-- Question 195: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c668b9f6-af21-4b3f-ad68-6ae4288e7c7c',
    'מהו הגורם העיקרי לסינוס ברדיקרדיה?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'הגורם מספר 1 לסינוס ברדיקרדיה זה המערכת הפרא-סימפתטית (וואגוס).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3d6761f8-aa82-4fb2-993e-422968a9ba14', 'c668b9f6-af21-4b3f-ad68-6ae4288e7c7c', 'פעילות המערכת הפרא-סימפתטית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5bcc2b2d-ef88-436b-8d99-226cd8218e20', 'c668b9f6-af21-4b3f-ad68-6ae4288e7c7c', 'פעילות המערכת הסימפתטית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('98bad0a7-e138-43b0-b0e9-fe8a8d1b1a4a', 'c668b9f6-af21-4b3f-ad68-6ae4288e7c7c', 'אוטם שריר הלב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('07a44df7-329d-4dfd-91d9-87a39b7eb8e9', 'c668b9f6-af21-4b3f-ad68-6ae4288e7c7c', 'דלקת שריר הלב', false, 4, NOW());


-- Question 196: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1b483371-12c9-4d81-b6b1-1d5e0077c820',
    'באיזה מצב פיזיולוגי נראה סינוס ברדיקרדיה?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'סינוס ברדיקרדיה תקינה נמצאת אצל ספורטאים, אחרי מתן תרופות (בטא בלוקרים) ובמצב שינה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('619efef6-8ec9-4c29-b9ec-7c4833ead476', '1b483371-12c9-4d81-b6b1-1d5e0077c820', 'אצל ספורטאים ובזמן שינה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6ecadd09-6904-4059-9f7e-054587cb4434', '1b483371-12c9-4d81-b6b1-1d5e0077c820', 'אחרי מאמץ גופני', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7729d808-4037-4ba4-8f65-5604295be6ec', '1b483371-12c9-4d81-b6b1-1d5e0077c820', 'בזמן חום גבוה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ad495514-acbe-4a69-ab5c-37f21dc8fd41', '1b483371-12c9-4d81-b6b1-1d5e0077c820', 'בזמן לחץ', false, 4, NOW());


-- Question 197: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a9a7297f-c446-49d9-83cf-b80b18686360',
    'מהו Heart Failure?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'Heart Failure היא אי ספיקת לב, מצב בו הלב אינו מסוגל לשאוב מספיק דם לצרכי הגוף.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('847ca1f1-5315-4cbe-b446-5c6311a99c43', 'a9a7297f-c446-49d9-83cf-b80b18686360', 'אי ספיקת לב - הלב אינו מסוגל לשאוב מספיק דם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ecb012d6-64d6-41ce-a61d-eaf9829816e7', 'a9a7297f-c446-49d9-83cf-b80b18686360', 'הפרעת קצב חולפת', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b608df31-bbf4-4ecd-992b-84449ce40e69', 'a9a7297f-c446-49d9-83cf-b80b18686360', 'דלקת בשריר הלב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0bc02835-9451-4b4f-b463-3b8f99c880f4', 'a9a7297f-c446-49d9-83cf-b80b18686360', 'חסימה בעורקים הכליליים', false, 4, NOW());


-- Question 198: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '52a7b58c-2c9a-42cf-bdf6-15403dbe5cf3',
    'מהו STEMI?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'STEMI הוא אוטם שריר הלב עם עליות של מקטע ה-ST ב-ECG, מצריך טיפול דחוף.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b20ebea1-9f46-4d6a-ab1e-1ac179644fc3', '52a7b58c-2c9a-42cf-bdf6-15403dbe5cf3', 'ST Elevation Myocardial Infarction - אוטם עם עליות ST', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ecf7839c-c46b-4b88-96b3-a9995c04cbe2', '52a7b58c-2c9a-42cf-bdf6-15403dbe5cf3', 'אוטם ללא עליות ST', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bf621e33-de92-44e5-a381-00013ae7e840', '52a7b58c-2c9a-42cf-bdf6-15403dbe5cf3', 'הפרעת קצב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cdfdecb4-b745-4603-ae52-5a5c3cba4327', '52a7b58c-2c9a-42cf-bdf6-15403dbe5cf3', 'אנגינה יציבה', false, 4, NOW());


-- Question 199: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '814f5ec5-e111-4e33-8bf2-7b34c95f71ae',
    'מהו ACS (Acute Coronary Syndrome)?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'ACS (Acute Coronary Syndrome) היא תסמונת כלילית חריפה הכוללת STEMI, Non-STEMI ואנגינה לא יציבה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e713cc5c-f56a-4fec-8b56-dff834869510', '814f5ec5-e111-4e33-8bf2-7b34c95f71ae', 'תסמונת כלילית חריפה הכוללת STEMI, NSTEMI ואנגינה לא יציבה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e01d724c-a6f0-4c57-84af-76b006714532', '814f5ec5-e111-4e33-8bf2-7b34c95f71ae', 'רק אוטם שריר הלב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fd866f84-1945-44a4-800c-4cf7b5392b17', '814f5ec5-e111-4e33-8bf2-7b34c95f71ae', 'רק אנגינה יציבה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8d0f653d-a1d5-4907-a4c1-74b6f1463889', '814f5ec5-e111-4e33-8bf2-7b34c95f71ae', 'הפרעת קצב בלבד', false, 4, NOW());


-- Question 200: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '0f20e696-616d-4e12-90f3-232027521a45',
    'מהו Atrial Fibrillation?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'Atrial Fibrillation (A fib) הוא פרפור עליות - הפרעת קצב בה העליות מתכווצות בצורה כאוטית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1a758e2c-2458-47fb-839e-72d7b3d151a8', '0f20e696-616d-4e12-90f3-232027521a45', 'פרפור עליות - הפרעת קצב עלייתית לא מסודרת', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('996b6c1d-9842-45b0-8a8b-a2b6b8d5ac34', '0f20e696-616d-4e12-90f3-232027521a45', 'פרפור חדרים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('52900587-87e7-442f-a410-5febf7ec4df1', '0f20e696-616d-4e12-90f3-232027521a45', 'קצב סינוסי תקין', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('56e0604b-a54d-4763-b9c9-082d026a3c8c', '0f20e696-616d-4e12-90f3-232027521a45', 'חסם הולכה', false, 4, NOW());


-- Question 201: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '9a464345-0eae-45bf-9bf9-8fd1dde591c9',
    'מהו VT (Ventricular Tachycardia)?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'Ventricular Tachycardia (VT) היא טכיקרדיה חדרית - קצב מהיר ממוצא חדרי, עלול להיות מסכן חיים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('88133993-ece0-448a-9e49-748a23607cf6', '9a464345-0eae-45bf-9bf9-8fd1dde591c9', 'טכיקרדיה חדרית - קצב מהיר ממוצא חדרי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5996fe56-687e-4911-a773-ce21e61ebe0a', '9a464345-0eae-45bf-9bf9-8fd1dde591c9', 'טכיקרדיה עלייתית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ead3684d-45ad-4361-a499-10452f023a9d', '9a464345-0eae-45bf-9bf9-8fd1dde591c9', 'קצב סינוסי מהיר', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c06acece-7b43-4f5b-aa7f-218be37b3544', '9a464345-0eae-45bf-9bf9-8fd1dde591c9', 'ברדיקרדיה חדרית', false, 4, NOW());


-- Question 202: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '522680a6-5513-4708-8ef1-93dea9215f5e',
    'מהו WCT (Wide Complex Tachycardia)?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'WCT היא טכיקרדיה עם קומפלקס רחב, לרוב מעידה על קצב ממוצא חדרי או הולכה לקויה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2ffe0db3-bd70-4de2-9411-ede9971ddfdb', '522680a6-5513-4708-8ef1-93dea9215f5e', 'טכיקרדיה עם קומפלקס רחב - חשד לקצב חדרי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('20c0508c-3380-4395-8526-7a2cd1985c5e', '522680a6-5513-4708-8ef1-93dea9215f5e', 'טכיקרדיה עם קומפלקס צר', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d678d0d3-87f5-4a1f-bdc1-46910c6ebf41', '522680a6-5513-4708-8ef1-93dea9215f5e', 'ברדיקרדיה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b6a364b6-9b29-4a8b-8851-49cd518d95f1', '522680a6-5513-4708-8ef1-93dea9215f5e', 'קצב סינוסי תקין', false, 4, NOW());


-- Question 203: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'bf3531ca-cf31-4983-8b84-9ed42682d4e6',
    'מהו NCT (Narrow Complex Tachycardia)?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'NCT היא טכיקרדיה עם קומפלקס צר, לרוב ממוצא על-חדרי (עליות או ג''נקשיין).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b27fb16a-4749-43b2-9cdc-4348ef6edac6', 'bf3531ca-cf31-4983-8b84-9ed42682d4e6', 'טכיקרדיה עם קומפלקס צר - לרוב ממוצא על-חדרי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('84318b01-3171-4411-90bc-5784464c20eb', 'bf3531ca-cf31-4983-8b84-9ed42682d4e6', 'טכיקרדיה עם קומפלקס רחב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('14de9b08-2850-4fba-ba97-491ee250df80', 'bf3531ca-cf31-4983-8b84-9ed42682d4e6', 'ברדיקרדיה סינוסית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('558b7527-d25b-40a3-a42b-52c917649b74', 'bf3531ca-cf31-4983-8b84-9ed42682d4e6', 'פרפור חדרים', false, 4, NOW());


-- Question 204: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ed5650a6-0dab-43ab-8f8b-57a18b904db1',
    'מהו Cardiogenic Shock?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'Cardiogenic Shock הוא מצב בו הלחץ דם כבר כל כך נמוך שכל מנגנוני הפיצוי קרסו, יש בצקת ריאות ולחץ נמוך.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ef4b82f4-e5b8-4953-8926-772c979ed9c0', 'ed5650a6-0dab-43ab-8f8b-57a18b904db1', 'בצקת ריאות ולחץ דם נמוך - כל מנגנוני הפיצוי קרסו', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b73ea6c2-9b79-4ff2-a72a-bb3570e6f551', 'ed5650a6-0dab-43ab-8f8b-57a18b904db1', 'הלם על רקע דימום', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('732cda8e-7e94-49f1-96be-4c8b3384b194', 'ed5650a6-0dab-43ab-8f8b-57a18b904db1', 'הלם על רקע זיהומי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8d70e115-c301-4eea-bd48-afc798093f0d', 'ed5650a6-0dab-43ab-8f8b-57a18b904db1', 'הלם על רקע אלרגי', false, 4, NOW());


-- Question 205: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '4db5ed55-27cd-41ca-bb7b-6c9a168e2eb7',
    'מהו טווח הקצב ב-VT?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'VT יכולה להביא לקצב חדרי של 120-260 פעימות לדקה. פולימורפיק יכול להיות גם מעל 260.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5f1f9713-4854-4852-a265-b3432b720057', '4db5ed55-27cd-41ca-bb7b-6c9a168e2eb7', '120-260 פעימות לדקה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8ff146a7-180c-4fac-aefc-ec759f34eb74', '4db5ed55-27cd-41ca-bb7b-6c9a168e2eb7', '100-180 פעימות לדקה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('891520fb-2768-4d87-85ac-ac1f8a1d8c55', '4db5ed55-27cd-41ca-bb7b-6c9a168e2eb7', '60-100 פעימות לדקה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ff6f7d14-ea72-455b-9acd-680c3ec47764', '4db5ed55-27cd-41ca-bb7b-6c9a168e2eb7', '150-250 פעימות לדקה', false, 4, NOW());


-- Question 206: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'da1ede86-3062-4395-bedc-536a13840fde',
    'מהו הגורם השכיח ביותר ל-VT?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'VT מופיע ברוב המקרים בעת אירוע אקוטי של איסכמיה/אוטם (כלומר היפוקסיה של רקמה).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7909e7a5-0ea7-42f9-a5d8-58167606f485', 'da1ede86-3062-4395-bedc-536a13840fde', 'אירוע אקוטי של איסכמיה/אוטם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6bb1152e-ef19-41df-b904-62d86aff50f0', 'da1ede86-3062-4395-bedc-536a13840fde', 'דלקת שריר הלב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a92712e8-c1c2-4740-a401-e19244d07fc5', 'da1ede86-3062-4395-bedc-536a13840fde', 'הפרעה באלקטרוליטים בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('99ccf2d5-cb81-472a-a208-2c54ad1e7954', 'da1ede86-3062-4395-bedc-536a13840fde', 'שימוש בתרופות', false, 4, NOW());


-- Question 207: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '393b6e8a-84d7-4434-ac1a-bcb5b9966a76',
    'מהו MAT (Multifocal Atrial Tachycardia)?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'MAT היא קוצב עלייתי מתחלף (תועה) עם דופק מעל 100, טכיקרדיה ממוקד עלייתי רב מוקדי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b0db2ddf-dc84-4185-b9be-13339076d606', '393b6e8a-84d7-4434-ac1a-bcb5b9966a76', 'טכיקרדיה ממוקד עלייתי רב מוקדי - קוצב עלייתי מתחלף', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ee2288e7-ef02-4610-bcb9-fd63dab25afa', '393b6e8a-84d7-4434-ac1a-bcb5b9966a76', 'פרפור עליות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('de4904ce-0a5c-46af-96d8-49fbde111a3c', '393b6e8a-84d7-4434-ac1a-bcb5b9966a76', 'טכיקרדיה חדרית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7c747d7e-17d5-4ce8-b9ae-d101d311524a', '393b6e8a-84d7-4434-ac1a-bcb5b9966a76', 'קצב סינוסי', false, 4, NOW());


-- Question 208: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '93df442e-afe3-475d-ad05-62fb20eec8a0',
    'אילו שתי הפרעות קצב טכיקרדיות הן אוטומטיות לגמרי ללא Reentry?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'ישנם שתי הפרעות קצב טכיקרדיות יחידות שהן אוטומטיות לגמרי ואין בהן Reentry: סינוס טכיקרדיה ו-MAT.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fbd35157-ec31-49b8-b293-0e456295aa39', '93df442e-afe3-475d-ad05-62fb20eec8a0', 'סינוס טכיקרדיה ו-MAT', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('88b7c01b-3f5a-4a82-96e8-973a8e5fc078', '93df442e-afe3-475d-ad05-62fb20eec8a0', 'PSVT ו-VT', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f998b7f8-b353-4112-99ab-26b2920332cf', '93df442e-afe3-475d-ad05-62fb20eec8a0', 'A.fib ו-Flutter', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ab2bb613-2755-4748-8afe-4cf92581ca52', '93df442e-afe3-475d-ad05-62fb20eec8a0', 'VT ו-VF', false, 4, NOW());


-- Question 209: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'e27b52f7-ad93-4d91-a7e0-17b36c499ce8',
    'מתי נטפל ב-Atrial Fibrillation?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'מטפלים בטכיקרדיה (תגובה חדרית מהירה) רק מעל 150 או 130-140 אבל עושה ירידת לחץ דם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2b766b96-88c8-4d0b-85e4-d153200131c1', 'e27b52f7-ad93-4d91-a7e0-17b36c499ce8', 'רק מעל 150 או 130-140 אבל עושה ירידת לחץ דם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('95113547-1cfe-45cc-ae85-849b703ab773', 'e27b52f7-ad93-4d91-a7e0-17b36c499ce8', 'בכל מקרה של A.fib', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b68c2b54-78de-4e78-a29a-ed6c2044db33', 'e27b52f7-ad93-4d91-a7e0-17b36c499ce8', 'רק אם יש כאבים בחזה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('09094351-b268-4bc1-8b7d-80818c89e2e1', 'e27b52f7-ad93-4d91-a7e0-17b36c499ce8', 'רק אם מתחת ל-100', false, 4, NOW());


-- Question 210: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a313f2a8-691d-4f19-9709-51084d7d6ac5',
    'מהו Cardiac Asthma?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'Cardiac Asthma היא בצקת ריאות שבה במקום חרחורים שומעים צפצופים אינספירטוריים ואקספירטוריים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('198f98eb-16ed-4c7e-b84a-478b749ea80f', 'a313f2a8-691d-4f19-9709-51084d7d6ac5', 'בצקת ריאות שבמקום חרחורים שומעים צפצופים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1e2f4935-fefc-4544-88dc-3b2c01f0e585', 'a313f2a8-691d-4f19-9709-51084d7d6ac5', 'אסטמה רגילה המחמירה בגלל בעיית לב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7a722319-0e22-4007-8dab-88f3dc7de242', 'a313f2a8-691d-4f19-9709-51084d7d6ac5', 'ברונכוספזם עקב תרופות לב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('69bd2197-321a-4007-805d-832977acf912', 'a313f2a8-691d-4f19-9709-51084d7d6ac5', 'קוצר נשימה על רקע אלרגי', false, 4, NOW());


-- Question 211: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'fb595f3e-2012-4f54-b2bb-4195c326ee9b',
    'מהו Cardiac Contusion?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'Cardiac Contusion היא חבלת לב - פגיעה טראומטית בשריר הלב, בדרך כלל עקב טראומה קהה לחזה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4a7db700-abd1-4092-894b-c49cfc95425b', 'fb595f3e-2012-4f54-b2bb-4195c326ee9b', 'חבלת לב - פגיעה טראומטית בשריר הלב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('12fe2133-8d31-4d47-9495-573c695c708a', 'fb595f3e-2012-4f54-b2bb-4195c326ee9b', 'דלקת שריר הלב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9f47181d-4cd3-458d-b638-24fe7d56989d', 'fb595f3e-2012-4f54-b2bb-4195c326ee9b', 'אוטם שריר הלב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('13cb8e81-c405-48ae-84ef-345e43955440', 'fb595f3e-2012-4f54-b2bb-4195c326ee9b', 'קרע בשריר הלב', false, 4, NOW());


-- Question 212: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'cf56da6e-5234-4cf6-ba3a-ca1dcf83c463',
    'איזה ליד ב-ECG מסתכל על החלק התחתון של הלב?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'ליד 2, 3 ו-AVF מסתכלים על החלק התחתון (Inferior) של הלב.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a4568592-e508-4be2-a00e-442b925fe742', 'cf56da6e-5234-4cf6-ba3a-ca1dcf83c463', 'לידים 2, 3 ו-AVF', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('86c9a9d0-596c-4728-a697-943a618be78b', 'cf56da6e-5234-4cf6-ba3a-ca1dcf83c463', 'לידים V1-V4', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3f4f9a64-bbfc-491e-8e13-e8ff28b9c07b', 'cf56da6e-5234-4cf6-ba3a-ca1dcf83c463', 'לידים I ו-AVL', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f7f68104-8db8-4ec7-845f-2b8387e8021e', 'cf56da6e-5234-4cf6-ba3a-ca1dcf83c463', 'לידים V5-V6', false, 4, NOW());


-- Question 213: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '75eada0e-6fd1-4e0f-91b4-c369e15e064d',
    'מה קורה כאשר נותנים אדנוזין ל-PSVT?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'כשנותנים אדנוזין ל-PSVT תהיה אסיסטולה זמנית ואז החולה יחזור לקצב סינוס תקין.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ae3ec23c-3add-4432-aef9-93860d1f8bd9', '75eada0e-6fd1-4e0f-91b4-c369e15e064d', 'אסיסטולה זמנית ואז חזרה לקצב סינוס', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b2dba08a-fb9f-4587-b595-e5ea93449a09', '75eada0e-6fd1-4e0f-91b4-c369e15e064d', 'עצירת לב קבועה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('400131c7-d240-41a3-8761-462761f88989', '75eada0e-6fd1-4e0f-91b4-c369e15e064d', 'המרה ל-VT', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5daef6d6-4a13-4649-9f3d-1229911492af', '75eada0e-6fd1-4e0f-91b4-c369e15e064d', 'המשך PSVT ללא שינוי', false, 4, NOW());


-- Question 214: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '2664ed3c-8461-40b3-b84c-5c0b1f896599',
    'מהי המנה הדיאגנוסטית של אדנוזין?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'מנה דיאגנוסטית (אדנוזין טסט) היא 6mg, משמשת להבחנה בין PSVT ל-Flutter.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d071092c-6d04-4da8-ac97-c23f9592cf9c', '2664ed3c-8461-40b3-b84c-5c0b1f896599', '6mg', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7b4862f9-7684-4ad1-902a-3eaf98dc08a5', '2664ed3c-8461-40b3-b84c-5c0b1f896599', '12mg', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5d178b60-86bd-460e-8fdc-89300b09b4e8', '2664ed3c-8461-40b3-b84c-5c0b1f896599', '3mg', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9fd656b2-a64b-408e-a473-7812c56c804d', '2664ed3c-8461-40b3-b84c-5c0b1f896599', '9mg', false, 4, NOW());


-- Question 215: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c40789b0-e38f-4d08-8c99-38935ed0d687',
    'מה ההבדל בין Monomorphic ל-Polymorphic VT?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'VT ממקור אחד נקרא Monomorphic, ממספר מקורות נקרא Polymorphic.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('69eda6e3-897b-49ff-bf10-ab18e6ed74e7', 'c40789b0-e38f-4d08-8c99-38935ed0d687', 'Monomorphic - ממקור אחד, Polymorphic - ממספר מקורות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('99fd6677-790e-4f6b-bddc-2a51a23b2e25', 'c40789b0-e38f-4d08-8c99-38935ed0d687', 'Monomorphic - מהיר יותר, Polymorphic - איטי יותר', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('716c1968-f566-453d-ad70-fa9a23579d1b', 'c40789b0-e38f-4d08-8c99-38935ed0d687', 'Monomorphic - עם דופק, Polymorphic - בלי דופק', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b3417d54-cadc-4cc4-9205-d003ce34121a', 'c40789b0-e38f-4d08-8c99-38935ed0d687', 'אין הבדל, זה אותו דבר', false, 4, NOW());


-- Question 216: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '4320032d-b436-4c4c-a206-9b6c6b8c117c',
    'כמה פעימות מוקדמות חדריות רצופות מגדירות Short Run VT?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    '4 ומעלה פעימות מוקדמות רצופות מוגדר כ-Short Run VT (Ventricular Tachycardia).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('067ad836-a4d2-4617-ba62-3c4358ba516c', '4320032d-b436-4c4c-a206-9b6c6b8c117c', '4 ומעלה פעימות מוקדמות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1b47e0ef-b971-4434-8c3a-662318c0e57c', '4320032d-b436-4c4c-a206-9b6c6b8c117c', '2 פעימות מוקדמות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('29f43fc2-cd7c-4695-9fc6-4c0db08bb232', '4320032d-b436-4c4c-a206-9b6c6b8c117c', '6 פעימות מוקדמות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7a1811ef-b742-4278-9c95-44cdaf89461e', '4320032d-b436-4c4c-a206-9b6c6b8c117c', '10 פעימות מוקדמות', false, 4, NOW());


-- Question 217: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '5ab2aeb7-2e2f-4b39-a41e-c328f18a5b50',
    'מהי התרופה היעילה ביותר ב-SVT?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'אדנוקור (Adenosine) מוריד את מהירות ההולכה בעיקר ב-AV Node ולכן התרופה יעילה מאוד לטיפול ב-SVT.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('09fcdb36-f53b-4977-b952-658fda647626', '5ab2aeb7-2e2f-4b39-a41e-c328f18a5b50', 'אדנוקור (Adenosine) - הורדת מהירות ההולכה ב-AV Node', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('86ab6bf4-86e3-46ca-b557-d8fbc09854a6', '5ab2aeb7-2e2f-4b39-a41e-c328f18a5b50', 'אמיודורון', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e260aec1-b699-41c1-be47-0c3d9a0f0185', '5ab2aeb7-2e2f-4b39-a41e-c328f18a5b50', 'אטרופין', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ee921911-9869-4b89-8ff6-f131f9e1a394', '5ab2aeb7-2e2f-4b39-a41e-c328f18a5b50', 'ליגנוקאין', false, 4, NOW());


-- Question 218: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'cbde278c-fc14-4b24-9ba4-1e024baf2844',
    'איזה מסתם מפריד בין העליה השמאלית לחדר השמאלי?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'המסתם המיטרלי (Mitral Valve) מפריד בין העליה השמאלית לחדר השמאלי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('50a5b5e8-227f-4419-a9c8-53d048a5afa7', 'cbde278c-fc14-4b24-9ba4-1e024baf2844', 'מסתם מיטרלי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('374030a1-e053-4772-8e50-b9b5a326e524', 'cbde278c-fc14-4b24-9ba4-1e024baf2844', 'מסתם אורטלי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ba67a4ea-e02d-4582-8c97-f6b0f568e9e5', 'cbde278c-fc14-4b24-9ba4-1e024baf2844', 'מסתם טריקוספידלי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c0906e1b-6655-4b86-8b79-1feb7be4403d', 'cbde278c-fc14-4b24-9ba4-1e024baf2844', 'מסתם פולמונרי', false, 4, NOW());


-- Question 219: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'bb1f6be3-e6d7-48cd-a0d2-733f556bcbf4',
    'מהו Valvular Heart Disease?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'Valvular Heart Disease היא מחלת מסתמי הלב, הכוללת היצרות (stenosis) או אי ספיקה (regurgitation) של המסתמים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9c73488e-6d56-4840-92f0-363560191486', 'bb1f6be3-e6d7-48cd-a0d2-733f556bcbf4', 'מחלת מסתמי הלב - פגיעה במסתמים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cff41a9d-b539-4a0c-b879-d8a6d341c5b9', 'bb1f6be3-e6d7-48cd-a0d2-733f556bcbf4', 'חסימה בעורקים הכליליים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('10c759eb-fcec-463d-9037-f3b6ebda97ae', 'bb1f6be3-e6d7-48cd-a0d2-733f556bcbf4', 'דלקת בשריר הלב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5fc54d7a-b3e2-47d2-b90f-7b0692d5d489', 'bb1f6be3-e6d7-48cd-a0d2-733f556bcbf4', 'הפרעת קצב', false, 4, NOW());


-- Question 220: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '067222cd-9f6e-4dcf-97f3-2d8c8a5d76ed',
    'מהו Heart Murmur?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'Heart Murmur (אוושה) הוא קול לא תקין הנשמע בהאזנה ללב, לרוב עקב זרימת דם סוערת דרך המסתמים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5c9a07e3-049e-4b89-9a9e-c2452e934815', '067222cd-9f6e-4dcf-97f3-2d8c8a5d76ed', 'אוושה - קול לא תקין הנשמע בהאזנה ללב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('61774952-0d18-4ec5-bd39-47d21d1afb40', '067222cd-9f6e-4dcf-97f3-2d8c8a5d76ed', 'הפרעת קצב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('32319eaf-d92f-4971-8058-82ca0d98ac4e', '067222cd-9f6e-4dcf-97f3-2d8c8a5d76ed', 'כאב בחזה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('68ed5bf3-43f9-4e27-9418-73ed58ea4fd4', '067222cd-9f6e-4dcf-97f3-2d8c8a5d76ed', 'קוצר נשימה', false, 4, NOW());


-- Question 221: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '5f257992-70f9-4006-b7e4-d26c3a8f632b',
    'מהי Conjunctive Heart Failure?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'Conjunctive Heart Failure (CHF) היא אי ספיקת לב גודשת, מצב בו הלב לא מצליח לשאוב דם ביעילות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a6177aeb-e12e-4c61-a3ab-6d0f2ae0b1cb', '5f257992-70f9-4006-b7e4-d26c3a8f632b', 'אי ספיקת לב גודשת - CHF', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f6442898-02d6-443e-a2e0-1fb9cfd28e7b', '5f257992-70f9-4006-b7e4-d26c3a8f632b', 'דלקת בשריר הלב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4a71b87f-c109-4874-bd9d-b97cde743016', '5f257992-70f9-4006-b7e4-d26c3a8f632b', 'הפרעת קצב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('66796b04-467c-4186-a75b-ac888bbac6f2', '5f257992-70f9-4006-b7e4-d26c3a8f632b', 'חסימה בעורקים', false, 4, NOW());


-- Question 222: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'aff6a50e-ad9d-485e-96e3-19fc1061f797',
    'מהו VF (Ventricular Fibrillation)?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'Ventricular Fibrillation (VF) הוא פרפור חדרים - הפרעת קצב קטלנית בה החדרים רועדים ללא התכווצות יעילה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0c496e8c-426f-4b2c-95f4-a60d1c56044e', 'aff6a50e-ad9d-485e-96e3-19fc1061f797', 'פרפור חדרים - הפרעת קצב קטלנית הדורשת דפיברילציה מיידית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2e63254e-d58f-4083-9258-c10c7605e64f', 'aff6a50e-ad9d-485e-96e3-19fc1061f797', 'פרפור עליות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('73bed410-2d28-41e8-a7db-ceabe1fa6942', 'aff6a50e-ad9d-485e-96e3-19fc1061f797', 'טכיקרדיה חדרית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c5154458-a377-40c5-bf5f-b57435b66546', 'aff6a50e-ad9d-485e-96e3-19fc1061f797', 'אסיסטולה', false, 4, NOW());


-- Question 223: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '519bfccf-5f2c-4030-9407-46a1856da9be',
    'מהו PSVT (Paroxysmal Supra-Ventricular Tachycardia)?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'PSVT היא טכיקרדיה על-חדרית התקפית, הפרעת קצב Reentrant המתחילה ומסתיימת באופן פתאומי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('91bc7deb-9240-451b-bbf4-834661315e5c', '519bfccf-5f2c-4030-9407-46a1856da9be', 'טכיקרדיה על-חדרית התקפית - הפרעת קצב Reentrant', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ec08ce75-4ad9-4f7d-89c5-f0d81b9797ac', '519bfccf-5f2c-4030-9407-46a1856da9be', 'טכיקרדיה חדרית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('61be02c3-3800-4ff9-805d-87bfac78a36a', '519bfccf-5f2c-4030-9407-46a1856da9be', 'פרפור עליות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('11decc74-d224-4dcb-aa4c-78b0ea151c88', '519bfccf-5f2c-4030-9407-46a1856da9be', 'ברדיקרדיה סינוסית', false, 4, NOW());


-- Question 224: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a4bc42ee-ec26-4874-9b7e-c47d507ec3a8',
    'מהו LBBB (Left Bundle Branch Block)?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'LBBB הוא חסם בצרור השמאלי, כאשר הוא חדש מטופל כמו STEMI בפרוטוקול ACS.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e7684c9c-e926-4b08-abd0-a6c2989d1b1b', 'a4bc42ee-ec26-4874-9b7e-c47d507ec3a8', 'חסם הולכה בצרור השמאלי - יכול להחקות STEMI', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3d770182-4967-4734-b192-1d12620f0ad0', 'a4bc42ee-ec26-4874-9b7e-c47d507ec3a8', 'חסם הולכה בצרור הימני', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bff701cb-98de-47fb-8fcc-d8db4002da36', 'a4bc42ee-ec26-4874-9b7e-c47d507ec3a8', 'הפרעת קצב עלייתית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ba4935c5-f430-4bca-8338-335858f3e2ed', 'a4bc42ee-ec26-4874-9b7e-c47d507ec3a8', 'אוטם שריר הלב', false, 4, NOW());


-- Question 225: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '3d01b634-120d-408c-8777-40d09d7a5c94',
    'מתי מבצעים ECG ימני-אחורי?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'ECG ימני-אחורי מבוצע כדי לראות את הקירות הימני והאחורי של הלב שלא נראים ב-ECG רגיל.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('125ee165-2a8a-4b56-aaf8-b47c88306e63', '3d01b634-120d-408c-8777-40d09d7a5c94', 'כשיש חשד לאוטם בקיר הימני או האחורי של הלב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6b294dce-c510-4513-a14f-bca344ec511a', '3d01b634-120d-408c-8777-40d09d7a5c94', 'בכל מקרה של כאבים בחזה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4b1e832c-c6fd-40d5-a6d7-bc742a471640', '3d01b634-120d-408c-8777-40d09d7a5c94', 'רק בהפרעות קצב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e629c2ff-3b1a-4e85-85e3-8c27fc30cc22', '3d01b634-120d-408c-8777-40d09d7a5c94', 'לא מבצעים בשטח', false, 4, NOW());


-- Question 226: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '5d1dd73a-0e4f-4a26-9d57-5e59f2710577',
    'מהו Cardiac Tamponade?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'Cardiac Tamponade הוא הצטברות נוזל או דם בכיס הפריקרד שלוחץ על הלב ומפריע לתפקודו.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2869d480-23f3-4f64-90f0-28d9873e02be', '5d1dd73a-0e4f-4a26-9d57-5e59f2710577', 'הצטברות נוזל/דם בכיס הפריקרד הלוחץ על הלב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('12bf2fdc-66fa-429e-833a-8206c8ef7c7f', '5d1dd73a-0e4f-4a26-9d57-5e59f2710577', 'חסימה בעורקים הכליליים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('00842730-db5f-486f-9082-eb849fe67f22', '5d1dd73a-0e4f-4a26-9d57-5e59f2710577', 'קרע במסתם הלב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('34b6a768-36ad-41fc-aa82-3411db2c6724', '5d1dd73a-0e4f-4a26-9d57-5e59f2710577', 'דלקת בכיס הפריקרד', false, 4, NOW());


-- Question 227: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '873c3e6b-9fae-4897-93c2-3adbcc398696',
    'מהו CRT (Cardiac Resynchronization Therapy)?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'CRT היא טיפול בסנכרון מחדש של הלב באמצעות קוצב מיוחד לחולים עם אי ספיקת לב.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9b3664df-d57e-4acb-b330-c02a1cf19d06', '873c3e6b-9fae-4897-93c2-3adbcc398696', 'טיפול בסנכרון מחדש של הלב באמצעות קוצב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6914c1ab-6c57-467a-b0a7-d870fa60bb69', '873c3e6b-9fae-4897-93c2-3adbcc398696', 'החייאה לבבית-ריאתית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ba99a1f7-f2db-4dfd-ab4c-35323c483d3c', '873c3e6b-9fae-4897-93c2-3adbcc398696', 'דפיברילציה חשמלית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a262fe1b-5967-41a8-b813-ca00fa10ccce', '873c3e6b-9fae-4897-93c2-3adbcc398696', 'צנתור לב', false, 4, NOW());


-- Question 228: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c8ab21ea-f2f1-44de-813d-75c0bedd62b7',
    'מה ההבדל בין Compensated Shock ל-Uncompensated Shock?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'Compensated Shock (Pre-Shock) הוא הלם מפוצה עם מנגנוני פיצוי פעילים, ואילו Uncompensated Shock הוא כשהמנגנונים קרסו.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c92e121b-3b8b-4aff-8cca-da7e8635694f', 'c8ab21ea-f2f1-44de-813d-75c0bedd62b7', 'ב-Compensated יש מנגנוני פיצוי פעילים, ב-Uncompensated הם קרסו', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8d681613-a0d2-435c-809f-7f4699a1788d', 'c8ab21ea-f2f1-44de-813d-75c0bedd62b7', 'ב-Compensated יש לחץ דם נמוך, ב-Uncompensated לחץ תקין', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d34080b9-71e8-4897-b17a-f85b5b9fcc61', 'c8ab21ea-f2f1-44de-813d-75c0bedd62b7', 'ב-Compensated יש אובדן הכרה, ב-Uncompensated לא', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('129c2e09-5831-4f58-8723-ec944c8f521a', 'c8ab21ea-f2f1-44de-813d-75c0bedd62b7', 'אין הבדל, זה אותו מצב', false, 4, NOW());


-- Question 229: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '804d4ef8-408c-4f00-9380-5998b05a1752',
    'מהו הגורם העיקרי ל-VF?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'הפרעת קצב של VF מקורה כמעט תמיד באוטם מסיבי (של חדר שמאל).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4a54dc1e-1356-4d3a-8301-f645a2ebb9b2', '804d4ef8-408c-4f00-9380-5998b05a1752', 'אוטם מסיבי של החדר השמאלי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3e752297-4a67-4681-b1f3-1d12c6211467', '804d4ef8-408c-4f00-9380-5998b05a1752', 'דלקת שריר הלב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('983d3272-8710-48b2-a897-d8d6c52de0a9', '804d4ef8-408c-4f00-9380-5998b05a1752', 'היפוקלמיה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7f2f59b8-b212-4c56-9962-353d9efdfacb', '804d4ef8-408c-4f00-9380-5998b05a1752', 'שימוש בתרופות', false, 4, NOW());


-- Question 230: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ece2ed3d-3b5c-4a8f-9467-ac3240161488',
    'מהו AVNRT?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'AVNRT הוא PSVT הרגיל - מעגל Reentry שקורה רק בתוך ה-AV Node.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fdf357c2-37a0-45db-bb4a-622f3304a05c', 'ece2ed3d-3b5c-4a8f-9467-ac3240161488', 'Atrio-Ventricular Node Reentrant Tachycardia - PSVT הרגיל', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e8f91b8a-56dc-4d85-a585-633a33ed8c6a', 'ece2ed3d-3b5c-4a8f-9467-ac3240161488', 'טכיקרדיה חדרית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('16f5358c-96df-41ea-aa7c-b656c4b3824f', 'ece2ed3d-3b5c-4a8f-9467-ac3240161488', 'פרפור עליות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d2e718f7-def4-4171-800a-d17174db5110', 'ece2ed3d-3b5c-4a8f-9467-ac3240161488', 'ברדיקרדיה', false, 4, NOW());


-- Question 231: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '3f4b9f7e-861d-4bb5-b7ea-0505abfe76ab',
    'איזו תרופה היתה תרופת הבחירה לשבירת VF בעבר?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'ליגנוקאין היה תרופת בחירה לפי ה-ACLS ל-VF. כיום אין בנט"ן והשתמש באמיודורון.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3b3faf4b-84a4-41e5-9272-d013e95f83db', '3f4b9f7e-861d-4bb5-b7ea-0505abfe76ab', 'ליגנוקאין (לידוקאין)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6aec1ee0-d30d-41ed-a2be-8a6999ff4651', '3f4b9f7e-861d-4bb5-b7ea-0505abfe76ab', 'אמיודורון', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('88980a83-309f-4d70-bce0-ecf98c579112', '3f4b9f7e-861d-4bb5-b7ea-0505abfe76ab', 'אטרופין', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('31479ad5-a779-4dcc-991f-fae19f0d75e9', '3f4b9f7e-861d-4bb5-b7ea-0505abfe76ab', 'אדרנלין', false, 4, NOW());


-- Question 232: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '8a8d3b31-6ed1-4ec8-afd2-b24c37ef4bf1',
    'מהי קונטרה אינדיקציה לליגנוקאין?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'התוויות נגד לליגנוקאין - ברדיקרדיה מלווה בפעילות אקטופית, בגלל שהוא מעכב.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2882d142-85d0-41c7-aee4-adcb1729f385', '8a8d3b31-6ed1-4ec8-afd2-b24c37ef4bf1', 'ברדיקרדיה מלווה בפעילות אקטופית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('79987c35-1785-4120-8741-60d17cf798c1', '8a8d3b31-6ed1-4ec8-afd2-b24c37ef4bf1', 'טכיקרדיה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('372602ee-d931-45ea-8499-5e6d07b4fbf7', '8a8d3b31-6ed1-4ec8-afd2-b24c37ef4bf1', 'לחץ דם גבוה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bad152ea-9db8-4107-b926-82f65a24d31a', '8a8d3b31-6ed1-4ec8-afd2-b24c37ef4bf1', 'אסטמה', false, 4, NOW());


-- Question 233: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '15ca2a8b-bcd1-4fc1-8ac8-29fbd3473c98',
    'מהו PEA (Pulseless Electrical Activity)?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'PEA הוא כל פעם שיש משהו במוניטור (למעט VF ו-VT) ואין דופק קרוטידי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('77747b1f-cc6c-4859-818e-699550e3c98f', '15ca2a8b-bcd1-4fc1-8ac8-29fbd3473c98', 'פעילות חשמלית ללא דופק - דום לב עם פעילות ב-ECG', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('00c07c1e-5563-4d1a-8d10-595ecc749703', '15ca2a8b-bcd1-4fc1-8ac8-29fbd3473c98', 'אסיסטולה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a29444f5-2352-4b18-b638-8c46ba88c952', '15ca2a8b-bcd1-4fc1-8ac8-29fbd3473c98', 'VF', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0365a3e4-1d3e-4a89-8b40-8967ce5ac40c', '15ca2a8b-bcd1-4fc1-8ac8-29fbd3473c98', 'VT עם דופק', false, 4, NOW());


-- Question 234: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '4dbde870-0853-4186-9649-dc8d2fee5551',
    'מהו R on T?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'R on T הוא פעימה מוקדמת חדרית המופיעה על גל T, מסוכן מאוד ויכול להוביל ל-VT או VF.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6d65317f-b7ed-46c3-a619-3b4cdda2c638', '4dbde870-0853-4186-9649-dc8d2fee5551', 'פעימה מוקדמת חדרית המופיעה על גל T - מסוכן מאוד', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8c6795f9-2fb8-4e34-b02e-1b8f5aa5a7de', '4dbde870-0853-4186-9649-dc8d2fee5551', 'פעימה מוקדמת עלייתית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('43edfcb1-7582-44fe-8c56-19e5078206b0', '4dbde870-0853-4186-9649-dc8d2fee5551', 'קצב סינוסי תקין', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ee6d2fe9-3829-4a22-bfa4-35f8b59b2f91', '4dbde870-0853-4186-9649-dc8d2fee5551', 'חסם הולכה', false, 4, NOW());


-- Question 235: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'b8943c26-8b21-4f5a-8b13-9b1854d3af9f',
    'איזו אנרגיה משמשת להיפוך חשמלי של VT?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'VT מטופלת בהיפוך חשמלי של 100 ג''אול (synchronized).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2da8bf55-a510-474a-af07-136e6ac68fd2', 'b8943c26-8b21-4f5a-8b13-9b1854d3af9f', '100 ג''אול', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('df6754e8-8b5e-4259-92c7-7d074c7c3344', 'b8943c26-8b21-4f5a-8b13-9b1854d3af9f', '50 ג''אול', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('84efa269-20ac-4765-8f62-4a9e1a5f485d', 'b8943c26-8b21-4f5a-8b13-9b1854d3af9f', '200 ג''אול', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c60560f0-5e38-4a4d-9427-e6f9ffe55ddf', 'b8943c26-8b21-4f5a-8b13-9b1854d3af9f', '360 ג''אול', false, 4, NOW());


-- Question 236: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '48c2d657-706a-4cef-94dd-412d004730b9',
    'איזו אנרגיה משמשת להיפוך חשמלי של PSVT/Flutter?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'A.Flutter/PSVT מטופלים ב-50-100 ג''אול (לפי גודל החולה או חוסר יציבות של החולה).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bf29342e-f9ee-45b3-98e0-cc7685220c60', '48c2d657-706a-4cef-94dd-412d004730b9', '50-100 ג''אול לפי גודל החולה או חוסר יציבות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('08ccf96f-7abf-4d0d-a73c-28d7c55d9ba7', '48c2d657-706a-4cef-94dd-412d004730b9', '200 ג''אול', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e26af64e-97d3-462d-8356-6baff3d9fa83', '48c2d657-706a-4cef-94dd-412d004730b9', '360 ג''אול', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('18b78212-f6df-47c9-bc98-6f301707187e', '48c2d657-706a-4cef-94dd-412d004730b9', '25 ג''אול', false, 4, NOW());


-- Question 237: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ad555de3-5cc9-4f2f-9e55-6a83e3836552',
    'כיצד מבחינים בין PSVT עם אברציה לבין VT?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'אם מתלבטים בין PSVT עם אברציה לבין VT ניתן אדנוזין - אם לא עושה כלום, מדובר ב-VT, אם עושה, מדובר ב-PSVT עם אברציה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3f4a16bd-b5d1-4561-9c54-36299107255d', 'ad555de3-5cc9-4f2f-9e55-6a83e3836552', 'נותנים אדנוזין - אם לא עושה כלום זה VT, אם עושה זה PSVT', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('964da2be-a43a-494b-96fd-579c15c02391', 'ad555de3-5cc9-4f2f-9e55-6a83e3836552', 'לפי קצב הלב בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c589239c-ed6b-4c4d-8e95-1dfc8ee18085', 'ad555de3-5cc9-4f2f-9e55-6a83e3836552', 'לפי לחץ הדם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f5f1e5a8-49ac-4899-93ef-fb03d5845002', 'ad555de3-5cc9-4f2f-9e55-6a83e3836552', 'בלתי אפשרי להבחין', false, 4, NOW());


-- Question 238: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '8b50f999-107b-4a05-8551-08e3cb481e78',
    'מתי נשקול שימוש במגנזיום בטיפול בהפרעות קצב?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'מגנזיום משמש רק בטכיאריתמיה פולימורפית רחבת קומפלקס ולא סדירה (TDP). פולימורפיק VT זו הפעם היחידה שנשקול מגנזיום.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3a859b40-2fd6-4969-ac3d-7f7bb40383a2', '8b50f999-107b-4a05-8551-08e3cb481e78', 'רק בטכיאריתמיה פולימורפית רחבת קומפלקס ולא סדירה (TDP)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5fc69cd0-d9eb-45fb-97ec-8e8ae3789bcc', '8b50f999-107b-4a05-8551-08e3cb481e78', 'בכל VT', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('00ed0435-e08f-4b70-a3af-c49b9bd1f93b', '8b50f999-107b-4a05-8551-08e3cb481e78', 'בכל PSVT', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f0cdcc17-bb2b-47d7-8a6b-4b458729d22d', '8b50f999-107b-4a05-8551-08e3cb481e78', 'בברדיקרדיה', false, 4, NOW());


-- Question 239: קרדיולוגיה
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ec524f11-c691-4ea8-b216-eade8ddf90bf',
    'מהו Idioventricular Rhythm?',
    (SELECT id FROM public.categories WHERE name = 'קרדיולוגיה' LIMIT 1),
    'pending',
    'קצב זה הוא סוג של פעימות מילוט חדריות עם עליה באוטומטיות של הקוצב. ההפרעה נגרמת בדרך כלל מאוטם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5d961989-549c-4d3a-9688-97f53cb966db', 'ec524f11-c691-4ea8-b216-eade8ddf90bf', 'קצב מילוט חדרי עם עליה באוטומטיות - בדרך כלל מאוטם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b3e7b0e3-0c23-44f0-b81d-6b629823c859', 'ec524f11-c691-4ea8-b216-eade8ddf90bf', 'VT', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e7993606-517c-4ea2-9951-a43b146ad652', 'ec524f11-c691-4ea8-b216-eade8ddf90bf', 'קצב סינוסי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('361afbce-cd0c-4a82-9779-144fdc4e098b', 'ec524f11-c691-4ea8-b216-eade8ddf90bf', 'פרפור חדרים', false, 4, NOW());


-- Question 240: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '28a429a9-d215-45b2-965a-b02d826c7bae',
    'מהי המטרה העיקרית של מערכת הנשימה?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'מטרת הנשימה היא להביא חמצן לרמת התא ולהוציא את ה-CO2 מהגוף שהוא פסולת מנשימה תאית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b5913091-215d-4651-b3af-081a6ceec0d6', '28a429a9-d215-45b2-965a-b02d826c7bae', 'להביא חמצן לתאים ולהוציא CO2 מהגוף', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('934e7649-ff97-4159-9173-d9112eab63fa', '28a429a9-d215-45b2-965a-b02d826c7bae', 'לשאוב דם לכל הגוף', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5135ceca-bd6a-4ebe-9077-768b748533a5', '28a429a9-d215-45b2-965a-b02d826c7bae', 'לסנן פסולת מהדם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('64ab5113-fec2-4a1d-b082-a032c499125f', '28a429a9-d215-45b2-965a-b02d826c7bae', 'לייצר תאי דם אדומים', false, 4, NOW());


-- Question 241: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '4a70ce14-60ed-421b-ba79-0117c5528334',
    'באיזה אזור מתרחש חילוף הגזים בריאות?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'חילוף הגזים מתרחש בנאדיות הריאה (Alveoli) שם מתבצע מעבר של חמצן ל-CO2 בין האוויר לדם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a95c57b3-d956-4210-aa4b-2e54d390ca21', '4a70ce14-60ed-421b-ba79-0117c5528334', 'בנאדיות הריאה (Alveoli)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6c4709c8-84bd-4c42-a5e2-3719c1f703b5', '4a70ce14-60ed-421b-ba79-0117c5528334', 'בסימפונות הגדולות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('582aa9ee-4d36-4a1c-9d04-61a6b8637d98', '4a70ce14-60ed-421b-ba79-0117c5528334', 'בקנה (Trachea)', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5a341c44-4b4f-4f36-817d-b5352cece034', '4a70ce14-60ed-421b-ba79-0117c5528334', 'בגרון (Pharynx)', false, 4, NOW());


-- Question 242: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '367f1b1e-5573-41e9-bf64-549959aaa186',
    'מהו Dead Space בדרכי הנשימה?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Dead Space (מרחב המת) הוא כ-150 מ"ל - החלק המוביל בדרכי הנשימה שלא משתתף בחילוף גזים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4045e2e3-feac-44ce-892f-0e5d78cb0022', '367f1b1e-5573-41e9-bf64-549959aaa186', 'החלק המוביל שלא משתתף בחילוף גזים (150 מ"ל)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3afa4821-807a-4e6a-b56d-8d31883d71fa', '367f1b1e-5573-41e9-bf64-549959aaa186', 'הנפח השיורי בריאה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b9593e97-a543-4e50-b6d1-5a03d93c15cc', '367f1b1e-5573-41e9-bf64-549959aaa186', 'אזור פגוע בריאה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('452e41c8-99a3-4440-bb63-60ecf949497d', '367f1b1e-5573-41e9-bf64-549959aaa186', 'החלל הפלאורלי', false, 4, NOW());


-- Question 243: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'cc079f66-b0b3-424c-acc5-9f459d0a8206',
    'איפה נמצא מרכז הנשימה העיקרי במוח?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'מרכז הנשימה העיקרי נמצא ב-Medulla והוא אחראי על הנשימה היום יומית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0f536585-07fe-446b-82f3-84f0d3bb0741', 'cc079f66-b0b3-424c-acc5-9f459d0a8206', 'ב-Medulla (המדולה)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bdcc1024-3480-41b8-9f94-17a4661f71cf', 'cc079f66-b0b3-424c-acc5-9f459d0a8206', 'בקורטקס המוחי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('dac40ac4-03f8-4409-a0b8-e21cac8fb8b5', 'cc079f66-b0b3-424c-acc5-9f459d0a8206', 'בהיפותלמוס', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d7a45807-ed84-4ed0-b2aa-1ebac218f671', 'cc079f66-b0b3-424c-acc5-9f459d0a8206', 'בגזע המוח התיכון', false, 4, NOW());


-- Question 244: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '94c6d3eb-063e-481b-89c5-07a690fc1997',
    'מהו Tidal Volume (TV)?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Tidal Volume הוא נפח האויר הזורם אל תוך דרכי הנשימה ויוצא במחזור נשימה אחד במנוחה - כ-500 מ"ל.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bc5736f7-690c-4352-b818-675bd816e025', '94c6d3eb-063e-481b-89c5-07a690fc1997', 'נפח האויר בנשימה רגילה במנוחה (500 מ"ל)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('671bc12d-ec61-4535-b8e6-a2c350ef9050', '94c6d3eb-063e-481b-89c5-07a690fc1997', 'הנפח המקסימלי של הריאה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c646e726-47f3-4748-ae58-6a770b970798', '94c6d3eb-063e-481b-89c5-07a690fc1997', 'הנפח השיורי בריאה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7d309252-7573-4091-9713-e27d78f7dc30', '94c6d3eb-063e-481b-89c5-07a690fc1997', 'נפח הנשימה בפעילות גופנית', false, 4, NOW());


-- Question 245: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '649b5d97-5a9e-40f9-a234-7e5195c1e5dc',
    'מהו תפקיד הסורפקטנט (Surfactant)?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Surfactant הוא חומר שמורכב מחלבונים ושומנים שתפקידו למנוע תמט (קריסה) של הריאה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a35de8ec-2cf0-4ce0-8550-42f9589a206c', '649b5d97-5a9e-40f9-a234-7e5195c1e5dc', 'למנוע תמט (קריסה) של הריאה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('20798145-6e11-4cc5-9466-28764165ecee', '649b5d97-5a9e-40f9-a234-7e5195c1e5dc', 'להגן מפני זיהומים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f2fc5abb-46a9-49fa-bfde-eac97836cf98', '649b5d97-5a9e-40f9-a234-7e5195c1e5dc', 'לייצר ריר', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1a2ed73e-0b29-43fc-a130-022fedc17531', '649b5d97-5a9e-40f9-a234-7e5195c1e5dc', 'להעביר חמצן לדם', false, 4, NOW());


-- Question 246: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '53172ec9-700d-49a3-adf6-f7e8f36553a8',
    'מהו Respiratory Rate התקין במבוגר?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'קצב נשימה תקין במבוגר הוא 12-20 נשימות לדקה במנוחה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1a383a49-f13c-43cd-859c-771ba6964c2b', '53172ec9-700d-49a3-adf6-f7e8f36553a8', '12-20 נשימות לדקה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bb4d10b5-349f-4d49-88f1-4851ca14c592', '53172ec9-700d-49a3-adf6-f7e8f36553a8', '8-12 נשימות לדקה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f35363e0-0b6b-4808-9a3d-68e994b8b837', '53172ec9-700d-49a3-adf6-f7e8f36553a8', '20-30 נשימות לדקה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('afd88014-83bf-4ce8-8b98-176f5159011e', '53172ec9-700d-49a3-adf6-f7e8f36553a8', '30-40 נשימות לדקה', false, 4, NOW());


-- Question 247: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'e8cfe012-dbd0-4aa4-b236-4248099ebf10',
    'מהו Hypoxia?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Hypoxia הוא מצב של חוסר חמצן ברקמות הגוף, עלול להיות מסכן חיים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9c4b5a0a-ef7a-4fda-9401-55cb043f1204', 'e8cfe012-dbd0-4aa4-b236-4248099ebf10', 'מצב של חוסר חמצן ברקמות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('588c3d09-4348-462c-a806-fff57b900bf5', 'e8cfe012-dbd0-4aa4-b236-4248099ebf10', 'עודף חמצן בדם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('063edc42-d509-477f-bb26-586554a3cf66', 'e8cfe012-dbd0-4aa4-b236-4248099ebf10', 'עודף CO2 בדם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a7cf2f0c-cd76-4482-9ef8-2338554e9475', 'e8cfe012-dbd0-4aa4-b236-4248099ebf10', 'חוסר CO2 בדם', false, 4, NOW());


-- Question 248: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '0e46ed6f-586c-47ef-b347-7f7ed60d2a12',
    'איזה אחוז חמצן יש באוויר אותו אנו נושמים?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'באוויר אותו אנו נושמים יש 21% חמצן בתנאים רגילים בגובה פני הים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0948a96d-f423-422b-8ec0-538cdc87af7e', '0e46ed6f-586c-47ef-b347-7f7ed60d2a12', '21% חמצן', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4e35c0d6-288a-4065-bccf-2b82513f9721', '0e46ed6f-586c-47ef-b347-7f7ed60d2a12', '16% חמצן', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0591e26c-8b90-484f-b1eb-d2af463ad9b9', '0e46ed6f-586c-47ef-b347-7f7ed60d2a12', '30% חמצן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('081c7a3c-aaac-4e50-aa89-76347add5c66', '0e46ed6f-586c-47ef-b347-7f7ed60d2a12', '50% חמצן', false, 4, NOW());


-- Question 249: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ddcca9b1-1bbf-47c8-9359-abfdfa3155de',
    'מהו Pneumothorax?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Pneumothorax הוא חזה אוויר - מצב בו נכנס אוויר לחלל הפלאורלי בין דפנות בית החזה לריאה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7ca2a3b4-054e-4158-ac33-a7eca889db4b', 'ddcca9b1-1bbf-47c8-9359-abfdfa3155de', 'חזה אוויר - כניסת אוויר לחלל הפלאורלי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('296579f0-77ba-4e63-92c2-23261bd987ef', 'ddcca9b1-1bbf-47c8-9359-abfdfa3155de', 'דם בחלל הפלאורלי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2bb75142-fbde-4e0a-805e-d5789beaf7a6', 'ddcca9b1-1bbf-47c8-9359-abfdfa3155de', 'נוזל בחלל הפלאורלי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('40e54833-b9f3-481a-972d-0cecc327438a', 'ddcca9b1-1bbf-47c8-9359-abfdfa3155de', 'דלקת ריאות', false, 4, NOW());


-- Question 250: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '7514a517-b4d6-4c29-be82-2b194476f294',
    'מהי Dyspnea?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Dyspnea היא תחושה סובייקטיבית של קוצר נשימה או קושי בנשימה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('64f20af9-c080-46bf-ae9c-67ed4c646db0', '7514a517-b4d6-4c29-be82-2b194476f294', 'תחושת קוצר נשימה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('35c76e02-3a26-4ace-b93e-5249e794c3d7', '7514a517-b4d6-4c29-be82-2b194476f294', 'נשימה מהירה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c4006f52-c4dc-46ae-8904-4461a9b2dd3d', '7514a517-b4d6-4c29-be82-2b194476f294', 'נשימה איטית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b70dda53-57c3-4c0b-adc8-b4fd6387a0f2', '7514a517-b4d6-4c29-be82-2b194476f294', 'הפסקת נשימה', false, 4, NOW());


-- Question 251: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '300c3efa-290c-4b39-ad0d-742bf7ec75e5',
    'מהם קרומי הפלאורה?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'קרומי הפלאורה הם שני קרומים - פריאטלית (חיצונית) וויסצרלית (פנימית) שיוצרים חלל פלאורלי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('15a3f5c3-4422-4354-80fc-c81db784edd1', '300c3efa-290c-4b39-ad0d-742bf7ec75e5', 'שני קרומים המקיפים את הריאה - פלאורה פריאטלית וויסצרלית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('308ecac4-c1e1-454a-8c57-4ba0dd7d4347', '300c3efa-290c-4b39-ad0d-742bf7ec75e5', 'הקרום המקיף את הלב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2956a063-5307-4722-b26f-936a289ba57d', '300c3efa-290c-4b39-ad0d-742bf7ec75e5', 'הקרום של דפנות בית החזה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('42bbdc06-24a4-408a-a53d-aecb8cb45635', '300c3efa-290c-4b39-ad0d-742bf7ec75e5', 'הקרום של הסרעפת', false, 4, NOW());


-- Question 252: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '78799fef-c9ba-4321-a38e-2c3f81e1f250',
    'איזה שריר אחראי על כ-60% מהנשימה?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'הסרעפת אחראית על כ-60% מהנשימה והיא השריר העיקרי בתהליך הנשימה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4a9e2cc3-1ebc-428f-8268-7cfacaf6fc2f', '78799fef-c9ba-4321-a38e-2c3f81e1f250', 'הסרעפת (Diaphragm)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('361ade90-5502-4fc3-890d-1c5348c6f3b6', '78799fef-c9ba-4321-a38e-2c3f81e1f250', 'השרירים הבין-צלעיים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e4c9057f-2e7b-4441-be99-f585137feab0', '78799fef-c9ba-4321-a38e-2c3f81e1f250', 'שרירי הצוואר', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('99b874bc-7ed9-4ecf-a9e5-35782ce72bab', '78799fef-c9ba-4321-a38e-2c3f81e1f250', 'שרירי הבטן', false, 4, NOW());


-- Question 253: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '33a04c6c-0b64-488c-9b1e-546db04419df',
    'מהו Cyanosis?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Cyanosis הוא כחלון - שינוי צבע העור והריריות לכחול עקב רמה נמוכה של חמצן בדם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cd15611f-9b19-406e-a31e-0c74e9c27544', '33a04c6c-0b64-488c-9b1e-546db04419df', 'כחלון - שינוי צבע העור לכחול עקב חוסר חמצן', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('02901bea-159c-454c-9f2e-4d2bc11a9c63', '33a04c6c-0b64-488c-9b1e-546db04419df', 'אדמומיות בעור', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3acd535f-9d76-406c-a3ef-c31f85522919', '33a04c6c-0b64-488c-9b1e-546db04419df', 'חיוורון', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('42431db3-c825-49e8-8b3b-cba680264dfa', '33a04c6c-0b64-488c-9b1e-546db04419df', 'צהבהב', false, 4, NOW());


-- Question 254: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '0d3a5bc9-2719-4e5f-8131-a2e11dec57c6',
    'מהו Tachypnea?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Tachypnea היא נשימה מהירה מעל 20 נשימות לדקה במבוגרים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9005e013-7423-48ed-b7ae-06effc308b80', '0d3a5bc9-2719-4e5f-8131-a2e11dec57c6', 'נשימה מהירה מעל 20 לדקה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6a065837-cbe9-45f2-97d3-bef320ccba63', '0d3a5bc9-2719-4e5f-8131-a2e11dec57c6', 'נשימה איטית מתחת ל-12 לדקה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3e081ff8-0a94-4c14-945e-44d798de5eae', '0d3a5bc9-2719-4e5f-8131-a2e11dec57c6', 'נשימה עמוקה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ec849c78-4677-42c2-a011-bcd43fb9ab60', '0d3a5bc9-2719-4e5f-8131-a2e11dec57c6', 'הפסקת נשימה', false, 4, NOW());


-- Question 255: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '20c244c3-092c-4a7c-9646-e942cc56fad9',
    'מהו Bradypnea?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Bradypnea היא נשימה איטית מתחת ל-12 נשימות לדקה במבוגרים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c597bab2-c175-4014-a6a2-5037ec328c33', '20c244c3-092c-4a7c-9646-e942cc56fad9', 'נשימה איטית מתחת ל-12 לדקה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8e240d7e-af56-426f-a284-7cc457118ebf', '20c244c3-092c-4a7c-9646-e942cc56fad9', 'נשימה מהירה מעל 20 לדקה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('dfa1dec1-a88e-46cf-acb1-7db8aaa6e251', '20c244c3-092c-4a7c-9646-e942cc56fad9', 'נשימה רדודה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('15054dfc-7987-4798-9aa3-0dd4cc8cc0ce', '20c244c3-092c-4a7c-9646-e942cc56fad9', 'נשימה לא סדירה', false, 4, NOW());


-- Question 256: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '5ef8b6cc-1e00-4e1a-ae50-4e3dddb99cc3',
    'מהו Apnea?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Apnea היא הפסקה זמנית של הנשימה, עלולה להיות מסכנת חיים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('040c7bed-3df7-4374-a6f1-32642a9e8d06', '5ef8b6cc-1e00-4e1a-ae50-4e3dddb99cc3', 'הפסקת נשימה זמנית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7dcde098-bd34-468e-9aee-87136981a59a', '5ef8b6cc-1e00-4e1a-ae50-4e3dddb99cc3', 'נשימה מהירה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f21ffbfe-70f2-4327-a2ac-502b8629e3a0', '5ef8b6cc-1e00-4e1a-ae50-4e3dddb99cc3', 'נשימה איטית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2461f14d-760d-40ba-a3f8-47191262d998', '5ef8b6cc-1e00-4e1a-ae50-4e3dddb99cc3', 'נשימה רדודה', false, 4, NOW());


-- Question 257: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1044785f-b1d1-411e-a2b5-46605cb3e97e',
    'מהו Hypercarbia?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Hypercarbia (Hypercapnia) הוא מצב של עודף CO2 בדם, עלול לגרום לחמצת נשימתית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a78485b1-da77-4212-ae25-b734dc6c0c59', '1044785f-b1d1-411e-a2b5-46605cb3e97e', 'עודף CO2 בדם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2354529a-11fb-4cf5-a945-b4173ccae47d', '1044785f-b1d1-411e-a2b5-46605cb3e97e', 'חוסר CO2 בדם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('182bcc85-9df3-4aac-b7a0-302676d92a03', '1044785f-b1d1-411e-a2b5-46605cb3e97e', 'עודף חמצן בדם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a9512b31-9c2c-481d-9d2a-cbcb238a8e8b', '1044785f-b1d1-411e-a2b5-46605cb3e97e', 'חוסר חמצן בדם', false, 4, NOW());


-- Question 258: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '0b28b1d0-a5c8-4833-a5e6-9ad2f33d104f',
    'מהו SpO2?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'SpO2 הוא אחוז רוויית החמצן בהמוגלובין כפי שנמדד בפולס אוקסימטר.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e8139df9-2ade-43f9-a200-a7d4cd0b24bf', '0b28b1d0-a5c8-4833-a5e6-9ad2f33d104f', 'רוויית חמצן בדם (Oxygen Saturation)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8d57c775-b285-47f0-a4d9-04c70352da56', '0b28b1d0-a5c8-4833-a5e6-9ad2f33d104f', 'לחץ חלקי של חמצן', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('95b8ca26-c074-451a-a854-4d321cae9616', '0b28b1d0-a5c8-4833-a5e6-9ad2f33d104f', 'רמת CO2 בדם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4eee5b55-3ee5-41b3-a8c6-36beae228914', '0b28b1d0-a5c8-4833-a5e6-9ad2f33d104f', 'נפח הנשימה', false, 4, NOW());


-- Question 259: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '593b8a6f-112c-4ce8-9be1-77470d841a38',
    'איזה ערך SpO2 נחשב תקין?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'ערך SpO2 תקין הוא 94-100% אצל מבוגרים בריאים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('21ea199c-a9df-4e57-b35b-d649a7a9f30e', '593b8a6f-112c-4ce8-9be1-77470d841a38', '94-100%', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2d3d6d51-20f6-4c69-b29e-d429eb4cb715', '593b8a6f-112c-4ce8-9be1-77470d841a38', '85-90%', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('78ade4cd-d67a-4e86-902c-81bcb317bfa3', '593b8a6f-112c-4ce8-9be1-77470d841a38', '70-80%', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d5fe9737-0992-4437-83fb-4d04483c40e6', '593b8a6f-112c-4ce8-9be1-77470d841a38', '100% בלבד', false, 4, NOW());


-- Question 260: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '26ab318a-319e-4519-bac0-bc24a4fea2f6',
    'מהו Wheezing?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Wheezing (צפצופים) הם קולות נשימה חריקתיים באקספיריום, מעידים על היצרות דרכי נשימה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b4ce4bb7-624e-4b44-ba05-9702464a74de', '26ab318a-319e-4519-bac0-bc24a4fea2f6', 'צפצופים - קולות נשימה חריקתיים באקספיריום', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('392a09ac-3e5b-4df3-bfda-64cf088e5c2e', '26ab318a-319e-4519-bac0-bc24a4fea2f6', 'חרחורים רטובים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c05fa808-a8c4-4d39-b3ab-22ad5a15fee7', '26ab318a-319e-4519-bac0-bc24a4fea2f6', 'קולות נשימה תקינים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f957c4e4-02b2-47ea-9000-da143676689f', '26ab318a-319e-4519-bac0-bc24a4fea2f6', 'אי קולות נשימה', false, 4, NOW());


-- Question 261: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'cb5dccfe-3300-4eb9-bde5-3cd9a30ca44e',
    'מהו Stridor?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Stridor היא צרידה - קול נשימה חד באינספיריום המעיד על חסימה בדרכי נשימה עליונות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3db7c6a9-f712-45fd-90f2-c7c7a35c3e13', 'cb5dccfe-3300-4eb9-bde5-3cd9a30ca44e', 'צרידה - קול נשימה באינספיריום המעיד על חסימה עליונה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2088b134-8396-4a3b-8964-09a9260a75b2', 'cb5dccfe-3300-4eb9-bde5-3cd9a30ca44e', 'צפצופים באקספיריום', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('25d0a6b0-611a-4921-9d2f-2ca5f76514a7', 'cb5dccfe-3300-4eb9-bde5-3cd9a30ca44e', 'חרחורים בריאות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6228a221-4f2d-4697-b92b-09a90fbec1bf', 'cb5dccfe-3300-4eb9-bde5-3cd9a30ca44e', 'שתיקה ריאתית', false, 4, NOW());


-- Question 262: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '112a301a-83a5-48cd-a95d-755e5b1a84de',
    'מהן Crackles (Rales)?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Crackles (חרחורים) הם קולות נשימה פצפצניים המעידים על נוזל בריאות או פתיחת נאדיות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4e03cf6b-576c-4936-b38c-736f43f30a3d', '112a301a-83a5-48cd-a95d-755e5b1a84de', 'חרחורים - קולות נשימה המעידים על נוזל בריאות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('de0cf839-7884-492f-aed9-b69ec225cd92', '112a301a-83a5-48cd-a95d-755e5b1a84de', 'צפצופים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('aeff4882-29dd-4dd7-879c-ffcceb290b85', '112a301a-83a5-48cd-a95d-755e5b1a84de', 'קולות נשימה תקינים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9f76d4a8-b24c-489f-9ebf-5affd10caf6a', '112a301a-83a5-48cd-a95d-755e5b1a84de', 'צרידה', false, 4, NOW());


-- Question 263: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '98c5e4a2-f577-45cc-aab0-3ec0a6f7803a',
    'מהו Respiratory Distress?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Respiratory Distress היא מצוקה נשימתית עם סימנים כמו שימוש בשרירי עזר, נחיריים מתרחבות וטכיפניאה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7c389569-6fa5-479e-b601-694b775fee1f', '98c5e4a2-f577-45cc-aab0-3ec0a6f7803a', 'מצוקה נשימתית - קושי בנשימה עם סימנים קליניים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fead2eb7-0ab6-41c6-862a-96b3febacee2', '98c5e4a2-f577-45cc-aab0-3ec0a6f7803a', 'הפסקת נשימה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('646cb1ce-db88-4149-9bd8-ee3b7e6f2b7d', '98c5e4a2-f577-45cc-aab0-3ec0a6f7803a', 'נשימה תקינה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cf5f67da-849c-4533-b047-ff56ace299e8', '98c5e4a2-f577-45cc-aab0-3ec0a6f7803a', 'נשימה מהירה בלבד', false, 4, NOW());


-- Question 264: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ddf133b3-9356-4690-95c3-46b71af6307c',
    'מהי חשיבות מתן חמצן בהיפוקסיה?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'מתן חמצן בהיפוקסיה חיוני להעלאת רמת החמצן בדם וברקמות ולמניעת נזק איברים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('43e05161-66d6-4222-8928-f6998d91a402', 'ddf133b3-9356-4690-95c3-46b71af6307c', 'להעלות את רמת החמצן בדם וברקמות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f2944c6a-6e83-406a-a44b-92becaa4ffd0', 'ddf133b3-9356-4690-95c3-46b71af6307c', 'להוריד את רמת ה-CO2', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b39f275e-a8ae-495b-acfc-e669b775da6a', 'ddf133b3-9356-4690-95c3-46b71af6307c', 'להרדים את החולה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9aaae5e9-a3a5-440b-89b4-15e4df1e9aea', 'ddf133b3-9356-4690-95c3-46b71af6307c', 'למנוע התייבשות', false, 4, NOW());


-- Question 265: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a6fa5766-9baa-4027-93b7-75978dd543f8',
    'מהו הדחף העיקרי לנשימה אצל אדם בריא?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'הדחף העיקרי לנשימה הוא כימורצפטורים המגיבים לעליה ב-CO2, לא לירידה בחמצן.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('83debdbd-164a-4b01-aab8-eb41010d2e87', 'a6fa5766-9baa-4027-93b7-75978dd543f8', 'עליה ברמת CO2 בדם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e5acd592-ec76-49f0-b23f-f52df2550ab1', 'a6fa5766-9baa-4027-93b7-75978dd543f8', 'ירידה ברמת החמצן', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2949eacc-8315-426f-b8e7-8770895edaba', 'a6fa5766-9baa-4027-93b7-75978dd543f8', 'עליה ברמת החמצן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c630c933-b40b-46aa-8b0a-cbb4d874c94e', 'a6fa5766-9baa-4027-93b7-75978dd543f8', 'ירידה ברמת ה-pH', false, 4, NOW());


-- Question 266: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'e744564f-bbd9-4c75-afd2-046371392615',
    'מהי Respiratory Acidosis?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Respiratory Acidosis היא חמצת נשימתית שנגרמת מצבירה של CO2 בדם עקב היפוונטילציה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('518875ce-871e-42f4-ab21-cea382cfbd7d', 'e744564f-bbd9-4c75-afd2-046371392615', 'חמצת נשימתית עקב צבירת CO2 בדם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('790af57f-dfd1-4a8b-a791-f09dc5451493', 'e744564f-bbd9-4c75-afd2-046371392615', 'בססת נשימתית עקב הורדת CO2', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('05dfab77-a441-49fc-a98f-c6feb942e394', 'e744564f-bbd9-4c75-afd2-046371392615', 'חמצת מטבולית עקב צבירת חומצות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ea6b23e6-8989-4b7e-ab62-07fffb7d19f2', 'e744564f-bbd9-4c75-afd2-046371392615', 'בססת מטבולית', false, 4, NOW());


-- Question 267: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '22e006c1-8752-4b4e-9b64-dc98c53397a3',
    'מהי Respiratory Alkalosis?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Respiratory Alkalosis נגרמת כאשר החולה מוריד את רמת ה-CO2 עקב היפרוונטילציה (נשימה מוגברת).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8c86e567-c917-47b5-8271-fc5535ea2fe8', '22e006c1-8752-4b4e-9b64-dc98c53397a3', 'בססת נשימתית עקב הורדת רמת CO2 (היפרוונטילציה)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4ac6bfc3-4108-4363-b799-0b8bf596d597', '22e006c1-8752-4b4e-9b64-dc98c53397a3', 'חמצת נשימתית עקב עליית CO2', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cb3aa153-10cb-436c-b82d-bfc97f2334a1', '22e006c1-8752-4b4e-9b64-dc98c53397a3', 'בססת מטבולית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6203cf3c-d8b3-4b52-8a59-fe19275c72a6', '22e006c1-8752-4b4e-9b64-dc98c53397a3', 'חמצת מטבולית', false, 4, NOW());


-- Question 268: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '5f60e723-a5eb-4dc9-bdb7-fb322a028a1a',
    'מהו V/Q Mismatch?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'V/Q Mismatch הוא חוסר התאמה בין ventilation (אוורור) ל-perfusion (זילוח דם) בריאות, גורם להיפוקסיה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e8bdd322-751a-4444-afd2-f685e71f8caa', '5f60e723-a5eb-4dc9-bdb7-fb322a028a1a', 'חוסר התאמה בין אוורור (Ventilation) לזילוח דם (Perfusion) בריאות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f6754620-9ff9-4ea8-85f3-f4ccb81bf4c9', '5f60e723-a5eb-4dc9-bdb7-fb322a028a1a', 'הפרש בין לחץ אוויר לדם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c78ad153-80d2-46e1-8250-6308a7053e6b', '5f60e723-a5eb-4dc9-bdb7-fb322a028a1a', 'חוסר איזון בין החדר הימני לשמאלי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('beadfa89-e8cc-4e0f-814e-2fea3ca12868', '5f60e723-a5eb-4dc9-bdb7-fb322a028a1a', 'הבדל בין נפח הנשימה לקיבולת הריאה', false, 4, NOW());


-- Question 269: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '808f76dd-3f9c-4c83-b1d4-7e96a5304b02',
    'מהו Pulmonary Edema?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Pulmonary Edema היא בצקת ריאות - הצטברות נוזלים בנאדיות הריאה, עלולה להיות קרדיוגנית או לא קרדיוגנית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f8070d81-f7f1-4c7a-94e5-1f666a2b1621', '808f76dd-3f9c-4c83-b1d4-7e96a5304b02', 'בצקת ריאות - הצטברות נוזלים בנאדיות הריאה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1db23eb7-997b-4373-af2e-e4d554f7daca', '808f76dd-3f9c-4c83-b1d4-7e96a5304b02', 'דלקת ריאות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0ec1be43-e590-4ade-be31-ba4a94759569', '808f76dd-3f9c-4c83-b1d4-7e96a5304b02', 'אוויר בחלל הפלאורלי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('780bf145-c2ca-4fb6-aca9-2cd80c6ff61a', '808f76dd-3f9c-4c83-b1d4-7e96a5304b02', 'דם בריאות', false, 4, NOW());


-- Question 270: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '00818be9-a5fb-4419-8f23-76027f3c8200',
    'מהי אסטמה (Asthma)?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'אסטמה היא מחלה דלקתית כרונית של דרכי הנשימה המאופיינת בברונכוספזם והיפר-תגובתיות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6066860c-d401-46d3-8ee4-71628cd09fcf', '00818be9-a5fb-4419-8f23-76027f3c8200', 'מחלה דלקתית כרונית של דרכי הנשימה עם ברונכוספזם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('25c7343b-f999-4f04-8db3-a7f0f82de705', '00818be9-a5fb-4419-8f23-76027f3c8200', 'זיהום חיידקי בריאות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e167fbe8-c76d-4588-87a4-f4b6534f4dad', '00818be9-a5fb-4419-8f23-76027f3c8200', 'בצקת ריאות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('62244488-271f-401c-840f-2ad1a1ec26cb', '00818be9-a5fb-4419-8f23-76027f3c8200', 'סרטן ריאות', false, 4, NOW());


-- Question 271: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a59cdfac-ba7f-4fe1-8249-7ae31d3fec0e',
    'מהו COPD?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'COPD (Chronic Obstructive Pulmonary Disease) כוללת אמפיזמה וברונכיטיס כרונית, בדרך כלל בגלל עישון.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b440efc3-a7bf-4cf7-95a1-5cd1c2ed84f6', 'a59cdfac-ba7f-4fe1-8249-7ae31d3fec0e', 'מחלת ריאות חסימתית כרונית (אמפיזמה וברונכיטיס כרונית)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1cb95e05-c2e3-4c12-bc0c-946e7616cf18', 'a59cdfac-ba7f-4fe1-8249-7ae31d3fec0e', 'אסטמה חריפה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('39bace58-029e-4295-b989-4a08eb405b66', 'a59cdfac-ba7f-4fe1-8249-7ae31d3fec0e', 'דלקת ריאות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('53763c2a-86d8-478d-bf74-1ea378df9897', 'a59cdfac-ba7f-4fe1-8249-7ae31d3fec0e', 'בצקת ריאות', false, 4, NOW());


-- Question 272: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '8c544f82-17f1-4988-85c4-6c359426afcd',
    'מהי Pneumonia?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Pneumonia היא דלקת ריאות - זיהום של נאדיות הריאה (בדרך כלל חיידקי או ויראלי).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3fe6642b-f66a-4676-8c83-293e17d59229', '8c544f82-17f1-4988-85c4-6c359426afcd', 'דלקת ריאות - זיהום בנאדיות הריאה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('87aef5d0-39c4-4254-ae63-a047961b2565', '8c544f82-17f1-4988-85c4-6c359426afcd', 'בצקת ריאות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('53b775fc-ae47-45e5-9b9c-5a5e48e93583', '8c544f82-17f1-4988-85c4-6c359426afcd', 'חזה אוויר', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5debfd77-bb2d-4c5c-ab70-4c305356d483', '8c544f82-17f1-4988-85c4-6c359426afcd', 'אסטמה', false, 4, NOW());


-- Question 273: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '0dffeebc-fe2a-45d8-92c1-e46a50b91616',
    'מהו CPAP?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'CPAP (Continuous Positive Airway Pressure) היא תמיכה נשימתית לא פולשנית בלחץ חיובי רציף.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('847914e5-66e3-4952-8802-7d528178e7ac', '0dffeebc-fe2a-45d8-92c1-e46a50b91616', 'תמיכה נשימתית לא פולשנית בלחץ חיובי רציף', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ffd97dc3-a760-46a7-a995-77dc9cf8166d', '0dffeebc-fe2a-45d8-92c1-e46a50b91616', 'אינטובציה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c7d4fcba-c751-4123-9692-0d3dbec2bbc4', '0dffeebc-fe2a-45d8-92c1-e46a50b91616', 'הנשמה מכנית פולשנית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2b83fc90-5d05-46dd-9a5d-aa650d9911a8', '0dffeebc-fe2a-45d8-92c1-e46a50b91616', 'מתן חמצן במסכה רגילה', false, 4, NOW());


-- Question 274: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c82b1b57-dde8-4447-973f-99109b5cc6a8',
    'מהו PEEP?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'PEEP (Positive End Expiratory Pressure) הוא לחץ חיובי בסוף הנשיפה שמונע קריסת נאדיות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e4d12fbc-a3b1-4884-9bbb-f1acd48fb5bf', 'c82b1b57-dde8-4447-973f-99109b5cc6a8', 'לחץ חיובי בסוף הנשיפה למניעת קריסת נאדיות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4b8c39fd-bfdd-4dd4-8fa4-e40203ff780b', 'c82b1b57-dde8-4447-973f-99109b5cc6a8', 'לחץ בזמן השאיפה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8c055496-7551-4298-8196-adde750e3c4f', 'c82b1b57-dde8-4447-973f-99109b5cc6a8', 'לחץ בחלל הפלאורלי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b9631191-9110-49a0-8238-69ccce1fd47f', 'c82b1b57-dde8-4447-973f-99109b5cc6a8', 'לחץ הדם הריאתי', false, 4, NOW());


-- Question 275: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ade99329-399c-4253-92fb-4f8c636fc35e',
    'מהו Acute Respiratory Failure?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Acute Respiratory Failure היא אי ספיקה נשימתית חריפה - כשל של מערכת הנשימה לספק חמצן או להוציא CO2.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a7316d14-c8a1-4689-abd7-5f80ccd26595', 'ade99329-399c-4253-92fb-4f8c636fc35e', 'אי ספיקה נשימתית חריפה - כשל של מערכת הנשימה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('10573ab3-5ea4-417c-a0a5-272a12897f12', 'ade99329-399c-4253-92fb-4f8c636fc35e', 'קוצר נשימה קל', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('80839e77-bb9b-411b-88b7-9cd8bfe832de', 'ade99329-399c-4253-92fb-4f8c636fc35e', 'אסטמה חריפה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('02ad0a8d-2847-4a3b-ac37-8692e9cb32a7', 'ade99329-399c-4253-92fb-4f8c636fc35e', 'דלקת ריאות', false, 4, NOW());


-- Question 276: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'f6ddfb0d-0499-4c42-ae73-70610038da88',
    'מהו Hyperventilation Syndrome?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Hyperventilation Syndrome הוא תסמונת בה החולה נושם מהר מדי ומוריד CO2, גורם לבססת נשימתית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d88f91e0-720f-41b5-857b-4c7899f79d67', 'f6ddfb0d-0499-4c42-ae73-70610038da88', 'נשימה מוגברת שגורמת לבססת נשימתית והורדת CO2', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('81e60f8f-6ade-49e6-981e-4c7eefc50734', 'f6ddfb0d-0499-4c42-ae73-70610038da88', 'חמצת נשימתית עקב נשימה איטית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('824648dd-2603-4f3f-8891-e448bc898bc4', 'f6ddfb0d-0499-4c42-ae73-70610038da88', 'דלקת בסימפונות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0a35efe6-6c70-4663-8727-ab12160fa6d3', 'f6ddfb0d-0499-4c42-ae73-70610038da88', 'חסימה בדרכי הנשימה', false, 4, NOW());


-- Question 277: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'e471be8a-aed4-46b8-a687-72fc1f003de6',
    'מהו Residual Volume (RV)?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'RV הוא הנפח השיורי שנשאר תמיד בריאה (כ-1200 מ"ל) ושומר על הריאה פתוחה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('047ff575-359c-46dc-88a4-e4087a5ecdbe', 'e471be8a-aed4-46b8-a687-72fc1f003de6', 'הנפח השיורי שנשאר בריאה אחרי נשיפה מקסימלית (1200 מ"ל)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e0182f5f-c956-4cf9-8774-e78b8a865472', 'e471be8a-aed4-46b8-a687-72fc1f003de6', 'נפח הנשימה הרגיל', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4cc134cb-a919-43ad-9a38-87ef55b9286a', 'e471be8a-aed4-46b8-a687-72fc1f003de6', 'הנפח המקסימלי של הריאה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('05c6b4a4-c893-4f70-b819-fbfc60cbaeb2', 'e471be8a-aed4-46b8-a687-72fc1f003de6', 'Dead Space', false, 4, NOW());


-- Question 278: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '8360aa48-badf-4477-8a22-411a0b191887',
    'מהו Vital Capacity?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Vital Capacity הוא הנפח המקסימלי המנוצל של הריאה - כ-4800 מ"ל, ללא הנפח השיורי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6e5686cb-7e88-4110-9af0-01dd9fc82be3', '8360aa48-badf-4477-8a22-411a0b191887', 'הנפח המקסימלי המנוצל של הריאה (4800 מ"ל)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('05fe18d0-da24-4f51-aefd-bdd5908e96be', '8360aa48-badf-4477-8a22-411a0b191887', 'נפח הנשימה הרגיל', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('27af1dc2-9fd9-4d62-838d-c464675c6193', '8360aa48-badf-4477-8a22-411a0b191887', 'הנפח השיורי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1d631c48-f8c0-441e-aee1-d3a9ace8a160', '8360aa48-badf-4477-8a22-411a0b191887', 'Dead Space', false, 4, NOW());


-- Question 279: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'f8f44d1e-22d6-4f13-be86-8315656a528f',
    'איזה ערך PO2 (לחץ חלקי של חמצן) תקין בדם עורקי?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'ערך PO2 תקין בדם עורקי הוא 80-100 mmHg (או טור).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8cdaaa67-112a-46d2-a771-51069468e32b', 'f8f44d1e-22d6-4f13-be86-8315656a528f', '80-100 mmHg', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3c26909e-1b12-4eaf-9752-2384b0bee924', 'f8f44d1e-22d6-4f13-be86-8315656a528f', '40-60 mmHg', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4b34a049-79ed-46bd-bd03-6a8a2ab93cde', 'f8f44d1e-22d6-4f13-be86-8315656a528f', '60-80 mmHg', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4d270f5a-0ce9-4b83-9b6c-8e33caf09e01', 'f8f44d1e-22d6-4f13-be86-8315656a528f', '100-120 mmHg', false, 4, NOW());


-- Question 280: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c36f6eed-0a42-42ed-8301-548fc4b0a98b',
    'איזה ערך PCO2 (לחץ חלקי של CO2) תקין בדם עורקי?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'ערך PCO2 תקין בדם עורקי הוא 35-45 mmHg.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('de3e5ec4-28fa-48a8-a795-a9d0810db978', 'c36f6eed-0a42-42ed-8301-548fc4b0a98b', '35-45 mmHg', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3be33e3c-654a-4162-8e37-9954d3758f06', 'c36f6eed-0a42-42ed-8301-548fc4b0a98b', '20-30 mmHg', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5daff29e-79fd-4b9f-bdbb-65c376ba07b1', 'c36f6eed-0a42-42ed-8301-548fc4b0a98b', '50-60 mmHg', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1ef45733-873c-4ea2-901e-37a636d8b105', 'c36f6eed-0a42-42ed-8301-548fc4b0a98b', '60-80 mmHg', false, 4, NOW());


-- Question 281: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a337a51a-d23e-48dc-9049-7b73839afbdc',
    'מהו Bronchospasm?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Bronchospasm הוא התכווצות של שרירי הסימפונות שגורמת להיצרות דרכי הנשימה, טיפוסי לאסטמה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4f687e70-be7c-427f-be01-0a26af301400', 'a337a51a-d23e-48dc-9049-7b73839afbdc', 'התכווצות של שרירי הסימפונות והיצרות דרכי הנשימה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ef6aee47-6f7a-4106-b8e2-587ee8c202e9', 'a337a51a-d23e-48dc-9049-7b73839afbdc', 'הרחבת סימפונות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b59d03f0-e14c-4a89-870b-2c68e2839fee', 'a337a51a-d23e-48dc-9049-7b73839afbdc', 'דלקת סימפונות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ccce8c70-db38-4869-8efe-594e50f5b04b', 'a337a51a-d23e-48dc-9049-7b73839afbdc', 'קריסת סימפונות', false, 4, NOW());


-- Question 282: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '0408d8ce-b7aa-4e87-b12b-8afaec987fd7',
    'מהו תפקיד הפונס (Pons) בשליטה על הנשימה?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'הפונס (Pontine Respiratory Group) פועל כשיש צורך בהעמקת הנשימה או שימוש בשרירי עזר.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('babd7da1-5a75-48d9-927d-ebf24b7dd34f', '0408d8ce-b7aa-4e87-b12b-8afaec987fd7', 'הפעלה בצורך בהעמקת נשימה ושימוש בשרירי עזר', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d6832d95-f497-4c6f-9b90-ee10fd0e2794', '0408d8ce-b7aa-4e87-b12b-8afaec987fd7', 'הפעלת הנשימה היום יומית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fa472c56-5421-4abd-a184-9663dcb23ca6', '0408d8ce-b7aa-4e87-b12b-8afaec987fd7', 'בלימת הנשימה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8c8945d2-35ba-419b-8148-c6e38186163a', '0408d8ce-b7aa-4e87-b12b-8afaec987fd7', 'אין תפקיד בשליטה על הנשימה', false, 4, NOW());


-- Question 283: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd469f6e5-e30c-4871-9ecd-471e8443fb8b',
    'מהו Status Asthmaticus?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Status Asthmaticus הוא התקף אסטמה קשה וממושך שלא מגיב לטיפול סטנדרטי, מסכן חיים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bfd830da-2d0b-434e-b982-b73feaffefbe', 'd469f6e5-e30c-4871-9ecd-471e8443fb8b', 'התקף אסטמה קשה וממושך שלא מגיב לטיפול', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('03bc31fc-6b7f-4c26-974f-d8b4b0e3a244', 'd469f6e5-e30c-4871-9ecd-471e8443fb8b', 'אסטמה קלה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('303375d0-e3c7-4ad7-bdaa-4796a79b64f0', 'd469f6e5-e30c-4871-9ecd-471e8443fb8b', 'אסטמה יציבה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7f0b535d-5533-44e1-8e86-2a4ae1d88da4', 'd469f6e5-e30c-4871-9ecd-471e8443fb8b', 'דלקת ריאות', false, 4, NOW());


-- Question 284: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '6b698d72-7131-4ac2-9931-1b35b92d39b5',
    'מהו Tension Pneumothorax?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Tension Pneumothorax הוא חזה אוויר מתח - מצב מסכן חיים בו לחץ האוויר דוחק את הלב והכלי הדם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e4201476-54ef-4248-88f5-fc6d0be5b201', '6b698d72-7131-4ac2-9931-1b35b92d39b5', 'חזה אוויר מתח - לחץ מוגבר בחלל הפלאורלי שדוחק את הלב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('31baf7b3-4628-4ce9-b5d6-c0c3ae343dee', '6b698d72-7131-4ac2-9931-1b35b92d39b5', 'חזה אוויר פשוט', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('af0d3be4-e38d-43ab-b4c0-c589c788347c', '6b698d72-7131-4ac2-9931-1b35b92d39b5', 'דם בחלל הפלאורלי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f43601b3-c7dd-4369-b0b0-63e14a596a56', '6b698d72-7131-4ac2-9931-1b35b92d39b5', 'נוזל בחלל הפלאורלי', false, 4, NOW());


-- Question 285: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '375304b9-2d77-45db-a30f-4e034797d065',
    'מהו Hemothorax?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Hemothorax הוא הצטברות דם בחלל הפלאורלי, בדרך כלל עקב טראומה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f58353bb-16e1-4b7a-af99-117c1cdb3871', '375304b9-2d77-45db-a30f-4e034797d065', 'דם בחלל הפלאורלי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5f6e0606-f09c-46a7-8570-851b698240b0', '375304b9-2d77-45db-a30f-4e034797d065', 'אוויר בחלל הפלאורלי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('18f8ddf0-5404-436f-bac4-d306374a26b7', '375304b9-2d77-45db-a30f-4e034797d065', 'נוזל בחלל הפלאורלי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8ce401ce-a678-4cc0-85f5-bf0c8513864a', '375304b9-2d77-45db-a30f-4e034797d065', 'דלקת בריאות', false, 4, NOW());


-- Question 286: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1b99c431-996c-4cf2-b196-3d91c0199766',
    'מהו Pleural Effusion?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Pleural Effusion הוא הצטברות נוזל בחלל הפלאורלי, עלול להפריע לנשימה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fd1bae16-b3d3-4e17-b872-03978ef2bf3a', '1b99c431-996c-4cf2-b196-3d91c0199766', 'הצטברות נוזל בחלל הפלאורלי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d3e18450-9896-478e-b364-4ae48c2100dd', '1b99c431-996c-4cf2-b196-3d91c0199766', 'אוויר בחלל הפלאורלי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('03bdf3bb-a1cb-4f08-8961-de183b1be94c', '1b99c431-996c-4cf2-b196-3d91c0199766', 'דם בחלל הפלאורלי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bbc3a083-7c92-42cd-8895-6944c08701f8', '1b99c431-996c-4cf2-b196-3d91c0199766', 'דלקת בפלאורה', false, 4, NOW());


-- Question 287: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'b12f589a-fe72-4bee-b216-d06634e5d608',
    'מהו Pulmonary Embolism (PE)?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Pulmonary Embolism הוא תסחיף ריאתי - חסימה של עורק ריאתי על ידי קריש דם, מסכן חיים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e87fc647-570d-437c-bf48-7134eb6a0f04', 'b12f589a-fe72-4bee-b216-d06634e5d608', 'תסחיף ריאתי - חסימה של עורק ריאתי על ידי קריש דם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('965e288f-05a3-4429-bfa8-31cc8aecca80', 'b12f589a-fe72-4bee-b216-d06634e5d608', 'דלקת ריאות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5f45d7be-1495-4eac-b177-c2448a5a9390', 'b12f589a-fe72-4bee-b216-d06634e5d608', 'בצקת ריאות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2385e5b0-94cb-45e1-86f3-d92cf7963afd', 'b12f589a-fe72-4bee-b216-d06634e5d608', 'חזה אוויר', false, 4, NOW());


-- Question 288: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '3c3cf03d-dbe3-4b5a-9438-1c8062e93b7b',
    'מהו Orthopnea?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Orthopnea הוא קוצר נשימה המופיע בשכיבה ומשתפר בישיבה, טיפוסי לבצקת ריאות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('59fcf297-850b-426d-ab0f-000d0259fd66', '3c3cf03d-dbe3-4b5a-9438-1c8062e93b7b', 'קוצר נשימה בשכיבה המשתפר בישיבה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f25e50a9-7e38-43d0-9922-dbc105b99a66', '3c3cf03d-dbe3-4b5a-9438-1c8062e93b7b', 'קוצר נשימה בישיבה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8afb48b3-1227-4876-9053-fefc191c022d', '3c3cf03d-dbe3-4b5a-9438-1c8062e93b7b', 'קוצר נשימה במאמץ בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cc584cf7-4891-4ed9-b2b5-8cc9ae667a9a', '3c3cf03d-dbe3-4b5a-9438-1c8062e93b7b', 'קוצר נשימה לילי', false, 4, NOW());


-- Question 289: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'fd1c1163-1ad2-4143-a612-5ba7725bddff',
    'מהו ARDS (Acute Respiratory Distress Syndrome)?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'ARDS היא בצקת ריאות non-cardiogenic (לא לבבית) עם דלקת וכשל נשימתי חמור, תמותה גבוהה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e550dda1-b35d-4f93-ba6e-d7874aa2c746', 'fd1c1163-1ad2-4143-a612-5ba7725bddff', 'בצקת ריאות שלא על רקע לבבי עם כשל נשימתי חמור', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1a32c98b-bcea-496b-8a57-4211daaa52ea', 'fd1c1163-1ad2-4143-a612-5ba7725bddff', 'בצקת ריאות קרדיוגנית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('620a33b2-8849-4c52-b8e8-d923d3192675', 'fd1c1163-1ad2-4143-a612-5ba7725bddff', 'דלקת ריאות חיידקית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7a656d82-1ec1-493b-ba51-784736c3af1c', 'fd1c1163-1ad2-4143-a612-5ba7725bddff', 'אסטמה חמורה', false, 4, NOW());


-- Question 290: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd86a4818-b1ac-4e29-bc9d-be047305f330',
    'מה קורה לרמת CO2 באמפיזמה?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'באמפיזמה יש ירידה ב-V (אוורור) וגם ירידה ב-Q (זילוח) בגלל הרס נאדיות וכלי דם, אך V/Q נשמר יחסית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8e6fdddd-7c82-4ccc-b771-e63adbb216fc', 'd86a4818-b1ac-4e29-bc9d-be047305f330', 'יש ירידה גם ב-V וגם ב-Q, אך V/Q נשמר יחסית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('558ceb4e-642a-46fa-b8d3-554ac9c866b9', 'd86a4818-b1ac-4e29-bc9d-be047305f330', 'עלייה חדה ב-CO2 בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a44b4f42-3f20-417f-bfc1-d64f6d308a97', 'd86a4818-b1ac-4e29-bc9d-be047305f330', 'ירידה ב-V בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f55a5e2d-f232-4655-82be-4414c53f9218', 'd86a4818-b1ac-4e29-bc9d-be047305f330', 'עלייה ב-Q בלבד', false, 4, NOW());


-- Question 291: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '2be0def5-6c98-4e75-ae45-4a593d250bdd',
    'כיצד משפיעה הנשמה בלחץ חיובי (CPAP/PEEP) על הפיזיולוגיה הקרדיווסקולרית?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'הנשמה בלחץ חיובי מקטינה את ה-Preload (מקטינה החזר ורידי) ואת ה-Afterload (לחץ על החדרים).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('36114429-3b32-4809-a59b-f12621132a00', '2be0def5-6c98-4e75-ae45-4a593d250bdd', 'מקטינה Preload ו-Afterload', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('751e231d-eb29-4160-a3fb-6e7929fde34d', '2be0def5-6c98-4e75-ae45-4a593d250bdd', 'מגדילה Preload ו-Afterload', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('650fcd33-3c2d-4cb7-8b36-88da191d6453', '2be0def5-6c98-4e75-ae45-4a593d250bdd', 'מגדילה Preload ומקטינה Afterload', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('97102674-a187-489c-ae11-f1821c30bf19', '2be0def5-6c98-4e75-ae45-4a593d250bdd', 'לא משפיעה על הפרמטרים ההמודינמיים', false, 4, NOW());


-- Question 292: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '32cef4ed-b8fd-4c93-836c-352f674c6e35',
    'מהו ABG (Arterial Blood Gas)?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'ABG היא בדיקת גזי דם עורקי המודדת PO2, PCO2, pH, HCO3 ועוד, חיונית לאבחון הפרעות נשימתיות ומטבוליות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('29db8d8f-ceb9-4648-9a45-c5f9f069e2f2', '32cef4ed-b8fd-4c93-836c-352f674c6e35', 'בדיקת גזי דם עורקי - מודדת PO2, PCO2, pH, HCO3', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1b2e3c3c-3c8a-4586-ae51-d59199a733ca', '32cef4ed-b8fd-4c93-836c-352f674c6e35', 'בדיקת דם ורידי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6892f575-34e9-4f49-864a-e9c9b756b6a2', '32cef4ed-b8fd-4c93-836c-352f674c6e35', 'בדיקת רוויית חמצן בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('21e44f8a-96dc-4306-bf01-caa2355a082c', '32cef4ed-b8fd-4c93-836c-352f674c6e35', 'בדיקת לחץ דם', false, 4, NOW());


-- Question 293: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd91d0cff-e1eb-40d7-8b56-84ebdb9cf234',
    'מהי ההבחנה בין Type 1 ל-Type 2 Respiratory Failure?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Type 1 Respiratory Failure - כשל בחמצון (PO2 נמוך), Type 2 - כשל באוורור (PCO2 גבוה).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('72e18dec-cc30-47d8-bc95-b9a9ff3d8089', 'd91d0cff-e1eb-40d7-8b56-84ebdb9cf234', 'Type 1 - כשל בחמצון (היפוקסיה), Type 2 - כשל באוורור (היפרקפניה)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('26e204d3-7102-4c34-b28e-46cfb7b7e0c7', 'd91d0cff-e1eb-40d7-8b56-84ebdb9cf234', 'Type 1 - כשל באוורור, Type 2 - כשל בחמצון', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1082f6b6-6afc-4dc2-89f5-b618f98d58ca', 'd91d0cff-e1eb-40d7-8b56-84ebdb9cf234', 'Type 1 - חריף, Type 2 - כרוני', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('160d8f14-a8b3-4995-9c55-3e29fe82fe99', 'd91d0cff-e1eb-40d7-8b56-84ebdb9cf234', 'אין הבדל משמעותי', false, 4, NOW());


-- Question 294: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd786e715-929f-4aa8-b14b-f890fc2381fc',
    'מהו Shunt בהקשר של V/Q Mismatch?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Shunt הוא אזור בריאה שיש בו זילוח דם (Q) אבל אין אוורור (V=0), גורם להיפוקסיה שלא מגיבה לחמצן.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('65a33309-b210-4fad-bd07-df2482e73201', 'd786e715-929f-4aa8-b14b-f890fc2381fc', 'אזור בריאה עם פרפוזיה (Q) אבל ללא אוורור (V=0)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f41fbb5c-6e20-4355-b6bc-b857d2b3a4ec', 'd786e715-929f-4aa8-b14b-f890fc2381fc', 'אזור בריאה עם אוורור אבל ללא פרפוזיה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f27ad6f9-c01a-4e84-a69a-3b48ec7b48ab', 'd786e715-929f-4aa8-b14b-f890fc2381fc', 'אזור בריאה תקין', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b045f4f7-c922-4a6f-ab3a-4daf9ad66443', 'd786e715-929f-4aa8-b14b-f890fc2381fc', 'Dead Space', false, 4, NOW());


-- Question 295: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1bb3b3d0-ae53-4a7f-8c27-60450176bda3',
    'מהו Dead Space בהקשר של V/Q Mismatch?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Dead Space פיזיולוגי הוא אזור בריאה שיש בו אוורור (V) אבל אין זילוח דם (Q=0).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e23e2789-36eb-4243-8667-2384b5ada0f4', '1bb3b3d0-ae53-4a7f-8c27-60450176bda3', 'אזור בריאה עם אוורור (V) אבל ללא פרפוזיה (Q=0)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5a4a6a27-8f3b-4c98-9f33-0238a43d4362', '1bb3b3d0-ae53-4a7f-8c27-60450176bda3', 'אזור בריאה עם פרפוזיה אבל ללא אוורור', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bd49a660-02de-4e6a-82c3-491d028d5804', '1bb3b3d0-ae53-4a7f-8c27-60450176bda3', '150 מ"ל של דרכי הנשימה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('66714dbe-7cb2-4d7b-8ce4-b5c9c230d469', '1bb3b3d0-ae53-4a7f-8c27-60450176bda3', 'Shunt', false, 4, NOW());


-- Question 296: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '138ed7f2-8ec5-4dab-8006-12b2f11ede8b',
    'מהו Hering-Breuer Reflex?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Hering-Breuer Reflex מונע ניפוח יתר של הריאות - בארורצפטורים בפלאורה מדווחים למרכז הנשימה לעצור.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2413bc6e-b1be-451e-ab56-921a438955bd', '138ed7f2-8ec5-4dab-8006-12b2f11ede8b', 'רפלקס שמונע ניפוח יתר של הריאות על ידי בארורצפטורים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('75b3c2af-97d3-4cd1-aff3-0c0928b56092', '138ed7f2-8ec5-4dab-8006-12b2f11ede8b', 'רפלקס השיעול', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('20ad0570-c634-481f-96d6-5e6ddd448547', '138ed7f2-8ec5-4dab-8006-12b2f11ede8b', 'רפלקס הנשימה העיקרי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a7cf4a4b-212c-4b43-a82a-992912b7ba6e', '138ed7f2-8ec5-4dab-8006-12b2f11ede8b', 'רפלקס הגנתי מפני חסימה', false, 4, NOW());


-- Question 297: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'e0ebb3ff-8428-4244-b65f-024ef72169e4',
    'מהי ההשפעה של חמצן גבוה ממושך על חולי COPD?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'בחולי COPD כרוני, הדחף לנשימה מבוסס על היפוקסיה, ומתן חמצן גבוה עלול לדכא דחף זה ולגרום להיפרקפניה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9fc99b85-414e-43d9-b98f-8d714a17728e', 'e0ebb3ff-8428-4244-b65f-024ef72169e4', 'עלול לדכא את דחף הנשימה ולגרום להיפרקפניה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('dd12c4ee-e4a7-4831-9878-4357446c5407', 'e0ebb3ff-8428-4244-b65f-024ef72169e4', 'משפר תמיד את המצב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d8ed7b12-c1ef-4806-bc35-a181f069db98', 'e0ebb3ff-8428-4244-b65f-024ef72169e4', 'אין השפעה מיוחדת', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2848d6e1-0126-4cba-91b9-8f57a8efdad7', 'e0ebb3ff-8428-4244-b65f-024ef72169e4', 'גורם לבצקת ריאות', false, 4, NOW());


-- Question 298: מערכת נשימתית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '4eb0c7f8-2119-4b21-8516-72edf94d9892',
    'מהו Diffusion Capacity ומתי הוא פגום?',
    (SELECT id FROM public.categories WHERE name = 'מערכת נשימתית' LIMIT 1),
    'pending',
    'Diffusion Capacity היא יכולת מעבר גזים דרך הממברנה, פגומה במחלות כמו פיברוזיס, אמפיזמה, ובצקת ריאות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a68a61e2-5e40-4c37-85f8-bd2fe0b898f5', '4eb0c7f8-2119-4b21-8516-72edf94d9892', 'יכולת מעבר גזים דרך הממברנה האלווואולרית-קפילרית, פגום בפיברוזיס ואמפיזמה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b182ba6e-c92f-45de-bd4a-b64b9fcd9803', '4eb0c7f8-2119-4b21-8516-72edf94d9892', 'יכולת הריאה להתרחב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1c0ee529-f4d2-4850-a5ba-12068bb74854', '4eb0c7f8-2119-4b21-8516-72edf94d9892', 'כוח שרירי הנשימה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0c23bc33-d462-4e37-8e22-5fd714598321', '4eb0c7f8-2119-4b21-8516-72edf94d9892', 'נפח הנשימה', false, 4, NOW());


-- Question 299: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'b544e3ae-ef26-4128-aa0f-cd1af09d5b30',
    'מהו תפקיד נתיב האוויר?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'נתיב האוויר אחראי על העברת אוויר לריאות, הגנה מפני גופים זרים ואיזון חומצה-בסיס.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bc8ade4a-dc6a-452e-a812-5639839d47c3', 'b544e3ae-ef26-4128-aa0f-cd1af09d5b30', 'העברת אוויר לריאות, הגנה מפני גופים זרים ואיזון חומצה-בסיס', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('69db8c41-87a2-46ab-8cf1-8d38294357d4', 'b544e3ae-ef26-4128-aa0f-cd1af09d5b30', 'שאיבת דם לגוף', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e87d795b-615a-47d1-b06b-5cf38211b76f', 'b544e3ae-ef26-4128-aa0f-cd1af09d5b30', 'סינון פסולת', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b0ae913d-b426-42b2-9380-d19c3db2d5b0', 'b544e3ae-ef26-4128-aa0f-cd1af09d5b30', 'ייצור הורמונים', false, 4, NOW());


-- Question 300: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a098e5e6-7620-4825-8529-50c764294151',
    'מהי אינטובציה?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'אינטובציה היא החדרת צינור אנדוטרכאלי דרך הגרון והקנה כדי לאבטח נתיב אוויר.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6ea9659d-f4f1-4aa6-b9de-80ee01222a83', 'a098e5e6-7620-4825-8529-50c764294151', 'Endotracheal Intubation - החדרת צינור דרך הקנה לריאות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4ec671b4-bf74-4fe4-8485-eafe97398753', 'a098e5e6-7620-4825-8529-50c764294151', 'החדרת צינור דרך האף בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0b50407d-9e5f-4697-b362-4fa5d6a82241', 'a098e5e6-7620-4825-8529-50c764294151', 'מתן חמצן באמצעות מסכה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('51332fd6-bc1d-4f5d-90ef-a6b6628bf8a7', 'a098e5e6-7620-4825-8529-50c764294151', 'הנשמה באמבו בלבד', false, 4, NOW());


-- Question 301: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'dbbb69ae-17e4-45f5-8447-95a4472d1278',
    'מתי נחשבת אינטובציה למוצלחת?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'אינטובציה מוצלחת מוגדרת כאשר הבלונית עברה את מיתרי הקול והטובוס ממוקם נכון בקנה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7053e136-3942-426c-9a65-f6159628cc3d', 'dbbb69ae-17e4-45f5-8447-95a4472d1278', 'כאשר הבלונית של הטובוס עברה את מיתרי הקול והיא במקום', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7ff4ad40-5fa2-44ef-a161-35a37bf499fa', 'dbbb69ae-17e4-45f5-8447-95a4472d1278', 'כאשר הטובוס נכנס לפה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b1e55665-dc43-48c4-80f2-3df76776af50', 'dbbb69ae-17e4-45f5-8447-95a4472d1278', 'כאשר החולה מפסיק לנשום', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('203a59fa-232a-49ef-8fb9-a313be6574c3', 'dbbb69ae-17e4-45f5-8447-95a4472d1278', 'כאשר החולה מאבד הכרה', false, 4, NOW());


-- Question 302: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '99754a0b-0c2b-4b18-9a32-bf4f4e28de49',
    'מהו BVM?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'BVM הוא אמבו-מסיכה, מכשיר להנשמה ידנית המשמש כחלק מניהול נתיב אוויר בסיסי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ad5a88a4-9b35-4d40-9a70-3a1a498e39b8', '99754a0b-0c2b-4b18-9a32-bf4f4e28de49', 'Bag-Valve-Mask - אמבו-מסיכה להנשמה ידנית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0b946477-de79-4b57-bb65-67c0a2eb54cc', '99754a0b-0c2b-4b18-9a32-bf4f4e28de49', 'מכשיר מדידת לחץ דם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('11c15d19-b2d1-43b6-a38a-90048778adff', '99754a0b-0c2b-4b18-9a32-bf4f4e28de49', 'מנשם אוטומטי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1488733e-8ebb-4754-a775-6a53422f78a3', '99754a0b-0c2b-4b18-9a32-bf4f4e28de49', 'מכשיר סקשן', false, 4, NOW());


-- Question 303: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '4c84141f-bd83-469f-be94-60ccbb2b513c',
    'כמה זמן נמשך נסיון אינטובציה בודד?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'משך נסיון אינטובציה בודד מוגבל לעד 30 שניות כדי למנוע היפוקסיה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ca9d75f6-79fb-4737-8739-52de855fadf2', '4c84141f-bd83-469f-be94-60ccbb2b513c', 'עד 30 שניות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('90a8bf4f-d8bd-402c-854c-8926cf306844', '4c84141f-bd83-469f-be94-60ccbb2b513c', 'עד 60 שניות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5692600e-ba47-4e33-a9b6-1c0d6ec25cc6', '4c84141f-bd83-469f-be94-60ccbb2b513c', 'עד 15 שניות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b5866be7-8543-423d-a26c-6af371e5520e', '4c84141f-bd83-469f-be94-60ccbb2b513c', 'אין מגבלת זמן', false, 4, NOW());


-- Question 304: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '87989e79-458f-4d79-a152-69b28e783054',
    'איזה חלק של נתיב האוויר כולל את האפיגלוטיס?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'האפיגלוטיס הוא חלק מנתיב האוויר העליון, המכסה את הקנה בזמן בליעה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a26ad14b-9ae5-47f0-bd0c-e4b41893b3db', '87989e79-458f-4d79-a152-69b28e783054', 'נתיב אוויר עליון', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cbed3269-4977-4b53-842f-5eb4003488e3', '87989e79-458f-4d79-a152-69b28e783054', 'נתיב אוויר תחתון', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9ab6f7d6-7434-4b6a-9237-55e6d9f212aa', '87989e79-458f-4d79-a152-69b28e783054', 'האלוואולי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('524236bd-eac4-4d6d-a342-776e4c917143', '87989e79-458f-4d79-a152-69b28e783054', 'הסימפונות', false, 4, NOW());


-- Question 305: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '3f513317-33e9-49b6-bbc8-a5b0a29a687a',
    'מהי פראוקסיגינציה?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'פראוקסיגינציה היא הנשמה ב-BVM למשך 2 דקות לפני אינטובציה כדי להעלות רזרבת חמצן.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c4765659-f69d-47ac-be24-26d1b03a8faa', '3f513317-33e9-49b6-bbc8-a5b0a29a687a', 'ביצוע הנשמה ב-BVM למשך 2 דקות לפני אינטובציה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fcc9ba94-ede5-4163-80c0-a6422b001592', '3f513317-33e9-49b6-bbc8-a5b0a29a687a', 'בדיקת רמת החמצן בדם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0a65534c-2e56-44b0-a96a-b510f32fe8a9', '3f513317-33e9-49b6-bbc8-a5b0a29a687a', 'מתן חמצן במסיכה אחרי אינטובציה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e78f592c-7ae8-49f1-8b12-50cf02318cba', '3f513317-33e9-49b6-bbc8-a5b0a29a687a', 'הנשמה מלאכותית במנשם', false, 4, NOW());


-- Question 306: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a99aee5d-ee02-4935-9ce1-bc4abdb53c62',
    'מהו מנתב אוויר (Airway)?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'מנתב אוויר (Oral/Nasal Airway) הוא מכשיר להרמת הלשון ומניעת חסימת נתיב אוויר בחולה מחוסר הכרה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9ade831d-3c94-41dd-8e8a-b537c37e4223', 'a99aee5d-ee02-4935-9ce1-bc4abdb53c62', 'מכשיר להרמת הלשון ומניעת חסימת נתיב אוויר', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('df01cae3-e200-4682-9632-07f84328e462', 'a99aee5d-ee02-4935-9ce1-bc4abdb53c62', 'צינור לאינטובציה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e463bab4-fdc7-45ea-87cc-1123a31a7e20', 'a99aee5d-ee02-4935-9ce1-bc4abdb53c62', 'מסכת חמצן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('24fa1657-d1d0-422b-a920-2d995c6a3207', 'a99aee5d-ee02-4935-9ce1-bc4abdb53c62', 'מכשיר למדידת נשימה', false, 4, NOW());


-- Question 307: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '15ec80de-4a8a-43ce-8222-ca9771609abf',
    'מהו Laryngoscope?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'לרינגוסקופ הוא מכשיר עם להב ואור המאפשר ראייה של מיתרי הקול בזמן ביצוע אינטובציה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d44f595c-3d1f-4e90-84e1-41c0dbc5e242', '15ec80de-4a8a-43ce-8222-ca9771609abf', 'מכשיר המשמש לראיית מיתרי הקול בזמן אינטובציה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b333fb7c-1d01-4466-bba2-70ef2d294cbb', '15ec80de-4a8a-43ce-8222-ca9771609abf', 'מכשיר למדידת חמצן', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9b4d7e77-95a4-4ba4-b0b6-2e982ed56ed7', '15ec80de-4a8a-43ce-8222-ca9771609abf', 'מכשיר לניקוי הגרון', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('052601a5-df72-4f3f-9eb8-9f8b1f71cf9b', '15ec80de-4a8a-43ce-8222-ca9771609abf', 'מכשיר להאזנה לריאות', false, 4, NOW());


-- Question 308: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '0c3696ed-edce-431e-9b8d-dabf3b7d96b0',
    'מהי סקשיין (Suction)?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'סקשיין היא שאיבת הפרשות, דם או הקאה מדרכי הנשימה כדי לשמור על פטנטיות נתיב האוויר.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6ae63461-cd2e-4d32-a1fe-564555fb80c0', '0c3696ed-edce-431e-9b8d-dabf3b7d96b0', 'שאיבת הפרשות מדרכי הנשימה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('81f0176b-ba6b-45ba-b03f-712ac8ae6f05', '0c3696ed-edce-431e-9b8d-dabf3b7d96b0', 'מתן תרופות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('56e63e29-3184-461d-a599-2efd00aa7784', '0c3696ed-edce-431e-9b8d-dabf3b7d96b0', 'מדידת לחץ דם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4e9d8bf1-bfbe-4ae8-a81c-e7bbab3c97e9', '0c3696ed-edce-431e-9b8d-dabf3b7d96b0', 'הנשמה מלאכותית', false, 4, NOW());


-- Question 309: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '68f3e248-4449-4d1d-8927-6d45c6ac3b90',
    'מהו טובוס אנדוטרכאלי (ETT)?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'טובוס אנדוטרכאלי (Endotracheal Tube) הוא צינור גמיש עם בלונית המוחדר לקנה לאבטחת נתיב אוויר.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('29f84148-ab70-4276-ac4a-b224e2f538d8', '68f3e248-4449-4d1d-8927-6d45c6ac3b90', 'צינור גמיש עם בלונית המוחדר לקנה באינטובציה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0a0d3bb1-8a9c-4f0c-84f5-761e1e1d2895', '68f3e248-4449-4d1d-8927-6d45c6ac3b90', 'מכשיר למדידת לחץ אוויר', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0699a00b-ff05-4389-853b-9ccb3ff2ce83', '68f3e248-4449-4d1d-8927-6d45c6ac3b90', 'מסכה להנשמה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1f07bc50-5601-485e-8a1c-ac9b46722c25', '68f3e248-4449-4d1d-8927-6d45c6ac3b90', 'מכשיר לניטור נשימה', false, 4, NOW());


-- Question 310: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '030df479-ded5-4d0b-8329-e1d4f7062f3d',
    'מהו CPAP?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'CPAP היא שיטה לתמיכה נשימתית לא פולשנית בלחץ חיובי רציף, מפחיתה צורך באינטובציה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b2b38d49-f4f8-4787-8878-4e517fb4d340', '030df479-ded5-4d0b-8329-e1d4f7062f3d', 'Continuous Positive Airway Pressure - תמיכה נשימתית לא פולשנית בלחץ חיובי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('34ea1047-e357-46df-88cc-319225d4f940', '030df479-ded5-4d0b-8329-e1d4f7062f3d', 'מכשיר לאינטובציה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('344d5a7c-e8b0-4fed-9928-c7cb6df5e94a', '030df479-ded5-4d0b-8329-e1d4f7062f3d', 'תרופה להרחבת סימפונות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8459ed37-9f7b-461c-9d83-6762bc528c82', '030df479-ded5-4d0b-8329-e1d4f7062f3d', 'מכשיר למדידת חמצן', false, 4, NOW());


-- Question 311: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '68b20b71-c98e-44af-939d-5d6ceb2d1d54',
    'מהו Capnography?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'קפנוגרפיה היא מדידת רמת CO2 בסוף הנשיפה (EtCO2), משמשת לאימות מיקום הטובוס.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9281be7d-8ffa-4b5e-90de-25e4b6259589', '68b20b71-c98e-44af-939d-5d6ceb2d1d54', 'מדידת רמת CO2 בסוף הנשיפה לאימות אינטובציה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bdb73fbf-14fe-4335-a2aa-c9ba62818992', '68b20b71-c98e-44af-939d-5d6ceb2d1d54', 'מדידת רמת חמצן בדם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a53ee31e-6761-47a9-8273-5f6b66b6879f', '68b20b71-c98e-44af-939d-5d6ceb2d1d54', 'מדידת קצב נשימה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f2b92d39-1fa2-4d4d-8d58-fa816e061191', '68b20b71-c98e-44af-939d-5d6ceb2d1d54', 'מדידת נפח ריאות', false, 4, NOW());


-- Question 312: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd275525e-30f8-490d-932a-2c415857ccaa',
    'איזה חלק באנטומיה של נתיב האוויר מכיל את מיתרי הקול?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'מיתרי הקול נמצאים בתיבת הקול (Larynx), והם הנקודה שדרכה חייב לעבור הטובוס באינטובציה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b904a49c-9bcf-40bc-88e6-18585437c247', 'd275525e-30f8-490d-932a-2c415857ccaa', 'תיבת הקול (Larynx)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d1836fa7-e230-4b4a-81f7-68999866942e', 'd275525e-30f8-490d-932a-2c415857ccaa', 'הקנה (Trachea)', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f11eb186-3c2e-441c-bbda-1ffcee4460c9', 'd275525e-30f8-490d-932a-2c415857ccaa', 'הגרון (Pharynx)', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e9a33c83-faec-41e0-ace7-bc15bec9bace', 'd275525e-30f8-490d-932a-2c415857ccaa', 'האפיגלוטיס', false, 4, NOW());


-- Question 313: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '70a1b190-daa6-4a91-b43e-1cad3c490d38',
    'מהו Difficult Airway?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'Difficult Airway הוא מצב בו ההנהלה והאבטחה של נתיב האוויר מהווים אתגר טכני משמעותי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('db4402e8-dd40-4a8f-917d-6610d7136de0', '70a1b190-daa6-4a91-b43e-1cad3c490d38', 'נתיב אוויר שבו ההנהלה והאבטחה מהווים אתגר טכני משמעותי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('52066af0-b435-4bdc-a4ca-447c33de00ac', '70a1b190-daa6-4a91-b43e-1cad3c490d38', 'חולה שסירב לטיפול', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a62d7e4b-729d-4766-a1e4-2ce7d297c00c', '70a1b190-daa6-4a91-b43e-1cad3c490d38', 'נתיב אוויר תקין לחלוטין', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9bb07d69-fcae-4da9-a825-b627eeb047b4', '70a1b190-daa6-4a91-b43e-1cad3c490d38', 'חולה עם אלרגיה לתרופות', false, 4, NOW());


-- Question 314: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'bb7b327c-2d8b-44f8-81b8-a3258c5424c1',
    'מהי התווית עיקרית לאינטובציה?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'התוויות עיקריות לאינטובציה כוללות אובדן יכולת לשמור על נתיב אוויר פטנט והפסקת נשימה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3d5c939a-0d14-40fe-8de9-9a9c36e9d97d', 'bb7b327c-2d8b-44f8-81b8-a3258c5424c1', 'אובדן יכולת לשמור על נתיב אוויר פטנט או הפסקת נשימה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('46b9cb59-b4fe-431e-929c-b3e0055646db', 'bb7b327c-2d8b-44f8-81b8-a3258c5424c1', 'כל חולה עם כאבים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e4890f4f-d278-45a9-beb8-adf589621138', 'bb7b327c-2d8b-44f8-81b8-a3258c5424c1', 'כל חולה מחוסר הכרה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7d19949b-a410-48ad-93f6-9c88cdf5585e', 'bb7b327c-2d8b-44f8-81b8-a3258c5424c1', 'כל חולה עם לחץ דם נמוך', false, 4, NOW());


-- Question 315: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'cb26117a-33ed-4aa7-933b-f8b4e3019c2f',
    'מהו RSI?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'RSI היא הרדמה ברצף מהיר (Rapid Sequence Intubation) לביצוע אינטובציה בחולה מעורפל הכרה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('620fca35-6d31-43df-a649-658be694adcf', 'cb26117a-33ed-4aa7-933b-f8b4e3019c2f', 'Rapid Sequence Intubation - הרדמה מהירה לאינטובציה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('144a8e87-6b1a-4eae-9497-15cb837393de', 'cb26117a-33ed-4aa7-933b-f8b4e3019c2f', 'בדיקת נשימה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3c77cf57-1976-4678-b3c4-7599f8a102ff', 'cb26117a-33ed-4aa7-933b-f8b4e3019c2f', 'טיפול בדום לב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e605d3c4-8ae9-42b2-8c89-5321ef23a786', 'cb26117a-33ed-4aa7-933b-f8b4e3019c2f', 'מדידת סטורציה', false, 4, NOW());


-- Question 316: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '4e058252-4ee8-420e-93b3-754292c22f6c',
    'מהו EtCO2?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'EtCO2 (End-Tidal CO2) הוא רמת הפחמן הדו-חמצני בסוף הנשיפה, משמש לאימות אינטובציה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('60797217-efd6-494d-a579-6798a101765e', '4e058252-4ee8-420e-93b3-754292c22f6c', 'End-Tidal CO2 - רמת CO2 בסוף הנשיפה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ed9c00b9-39a6-4c55-a561-8837fd386140', '4e058252-4ee8-420e-93b3-754292c22f6c', 'רמת חמצן בדם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8e6a4fd1-b9ef-4b33-af6d-431cc2d90d60', '4e058252-4ee8-420e-93b3-754292c22f6c', 'לחץ דם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b9d38787-095d-4817-b6d5-7020441ef0ad', '4e058252-4ee8-420e-93b3-754292c22f6c', 'קצב נשימה', false, 4, NOW());


-- Question 317: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '8cc89fd3-7d06-4d44-b97c-aa77540561ae',
    'מהו הגרון (Pharynx)?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'הגרון (Pharynx) הוא חלל משותף למערכת הנשימה והעיכול הנמצא מאחורי האף והפה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5a63cb54-76c2-4367-bbd9-429e2298c058', '8cc89fd3-7d06-4d44-b97c-aa77540561ae', 'חלל משותף למערכת הנשימה והעיכול מאחורי האף והפה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f90afcb5-a0c7-4cd4-86d7-c127a4d1497b', '8cc89fd3-7d06-4d44-b97c-aa77540561ae', 'תיבת הקול', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7fa26de7-d867-4113-b576-83d1c9f2d616', '8cc89fd3-7d06-4d44-b97c-aa77540561ae', 'הקנה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('49594131-b62e-4807-b9c2-39aedf3e58ec', '8cc89fd3-7d06-4d44-b97c-aa77540561ae', 'הריאות', false, 4, NOW());


-- Question 318: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '3d0b0c35-4387-45ce-9fd4-e894d83df58e',
    'מהו נתיב אוויר כירורגי?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'נתיב אוויר כירורגי הוא פתיחה כירורגית של נתיב אוויר כמוצא אחרון כאשר אינטובציה נכשלת.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a4960473-36a1-434f-9fe3-4a2d0d7f2a8d', '3d0b0c35-4387-45ce-9fd4-e894d83df58e', 'פתיחת נתיב אוויר דרך ניתוח כאשר אינטובציה נכשלת', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('595896ed-c283-4a5c-a434-1dcc77f1da0f', '3d0b0c35-4387-45ce-9fd4-e894d83df58e', 'אינטובציה רגילה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ea04b3c8-f109-46ea-bc68-1c7b5da6ecf9', '3d0b0c35-4387-45ce-9fd4-e894d83df58e', 'הנשמה באמבו', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8fa5e919-1f62-4d1d-9cdc-16691f5c47a4', '3d0b0c35-4387-45ce-9fd4-e894d83df58e', 'מתן חמצן במסכה', false, 4, NOW());


-- Question 319: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'f8e34631-8f46-4448-b174-d19df2435391',
    'כמה ניסיונות אינטובציה מותרים לפי הפרוטוקול?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'הפרוטוקול מגביל לעד 3 ניסיונות אינטובציה כאשר לפחות אחד מהם חייב להיות תוך שימוש ב-Bougie.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('85c34837-5073-411a-95ca-e8bddb9b8961', 'f8e34631-8f46-4448-b174-d19df2435391', 'עד 3 ניסיונות, לפחות אחד מהם עם Bougie', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('419dd959-afba-4ef3-a543-5b3ca1f4fa80', 'f8e34631-8f46-4448-b174-d19df2435391', 'ניסיון אחד בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2bfe7ca7-2c1f-4081-b214-66532d166b23', 'f8e34631-8f46-4448-b174-d19df2435391', 'ניסיונות בלתי מוגבלים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a4ff8ce8-b0e3-49bf-85bc-5d7639bca294', 'f8e34631-8f46-4448-b174-d19df2435391', 'עד 5 ניסיונות', false, 4, NOW());


-- Question 320: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '384d67ae-404f-4967-a698-56617b6c7112',
    'מהו LMA (Laryngeal Mask Airway)?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'LMA הוא מנתב אוויר סופראגלוטי המוכנס דרך החך העליון ללא צורך בלרינגוסקופ, טוב לכישלון אינטובציה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('34b08e43-3564-469b-ada2-ba1af1ce78d8', '384d67ae-404f-4967-a698-56617b6c7112', 'מנתב אוויר סופראגלוטי המוכנס ללא לרינגוסקופ', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d33e2143-0101-4f60-8339-2784c361a0f7', '384d67ae-404f-4967-a698-56617b6c7112', 'צינור אינטובציה רגיל', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d36463fe-20ca-4138-80e9-f6564e195789', '384d67ae-404f-4967-a698-56617b6c7112', 'מסכת חמצן פשוטה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f12cebe3-92af-4f47-915a-1617e8edb394', '384d67ae-404f-4967-a698-56617b6c7112', 'מכשיר סקשן', false, 4, NOW());


-- Question 321: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '890ae4f3-6e99-4758-9cb0-52f1df74d648',
    'מהו Bougie?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'Bougie הוא קטטר דק (5-5.5 מ"מ) המשמש באינטובציה קשה, קל יותר להחדרה ועליו משחילים את הטובוס.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('86b52516-553e-434e-8007-d724de0197d4', '890ae4f3-6e99-4758-9cb0-52f1df74d648', 'קטטר בקוטר 5-5.5 מ"מ המקל על אינטובציה קשה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('98ad52d1-681a-4e5e-a925-acf933b77cf8', '890ae4f3-6e99-4758-9cb0-52f1df74d648', 'סוג של טובוס', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d0d9e560-b591-49ef-b122-8bfe59aeff1a', '890ae4f3-6e99-4758-9cb0-52f1df74d648', 'מכשיר למדידת לחץ אוויר', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9669eb8d-59a0-47a6-bbd2-75278d9afe5d', '890ae4f3-6e99-4758-9cb0-52f1df74d648', 'תרופה להרדמה', false, 4, NOW());


-- Question 322: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '3771d07d-bd84-40fe-b996-f826cd0cd8c3',
    'מהי One Lung Intubation?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'One Lung Intubation היא סיבוך של אינטובציה עמוקה מדי, שבה הטובוס חדר מעבר לנקודת הקרינה לריאה הימנית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('80dfc54c-d1dd-4458-ae92-4d2b249ca623', '3771d07d-bd84-40fe-b996-f826cd0cd8c3', 'הטובוס חדר מעבר לנקודת הקרינה וב-90% חודר לריאה ימין', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('537cdce8-11aa-49f5-b587-9f830d35b673', '3771d07d-bd84-40fe-b996-f826cd0cd8c3', 'אינטובציה מכוונת לריאה אחת', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a964272f-bc94-46a2-830e-d25176745df2', '3771d07d-bd84-40fe-b996-f826cd0cd8c3', 'אינטובציה של חולה עם ריאה אחת', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4cfa5723-f48b-4af0-9889-98d86b43729c', '3771d07d-bd84-40fe-b996-f826cd0cd8c3', 'שיטת אינטובציה מיוחדת', false, 4, NOW());


-- Question 323: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '9c7388e0-c9a4-4af0-987b-fc99817308d8',
    'מהו מבחן LEMONS לאינטובציה קשה?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'LEMONS הוא אקרונים לבדיקת גורמים המנבאים אינטובציה קשה: Look, Evaluate, Mallampati, Obstruction, Neck mobility.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('dc7e857a-607f-447d-89bd-e840c5a7971d', '9c7388e0-c9a4-4af0-987b-fc99817308d8', 'כלי הערכה לזיהוי קושי צפוי באינטובציה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f2483f90-d58d-416b-a0d3-6d8811214355', '9c7388e0-c9a4-4af0-987b-fc99817308d8', 'סוג של טובוס', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('45d143ee-5819-452d-aeaa-3072f1a76a30', '9c7388e0-c9a4-4af0-987b-fc99817308d8', 'תרופה להרדמה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('44321fc1-cfd0-4169-90bc-41f8fb9ebefc', '9c7388e0-c9a4-4af0-987b-fc99817308d8', 'פרוטוקול החייאה', false, 4, NOW());


-- Question 324: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '786aafd1-971f-401f-85a1-2e11a5590ba9',
    'מהי הבדיקה של Mallampati?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'Mallampati היא סיווג 1-4 של ראות החך והגרון כשהחולה פותח את הפה, מנבא קושי באינטובציה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ba6515e5-c9e6-4f39-902f-45a9668af290', '786aafd1-971f-401f-85a1-2e11a5590ba9', 'סיווג של פתיחת פה וראות החך לחיזוי קושי באינטובציה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b1258d76-8d58-4f48-9321-80ba08550fdd', '786aafd1-971f-401f-85a1-2e11a5590ba9', 'בדיקת דם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0b12d8f9-0640-4327-890a-f5345ff1f0bb', '786aafd1-971f-401f-85a1-2e11a5590ba9', 'צילום רנטגן של הצוואר', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('571cf745-ce67-4d2a-a593-5436a235408b', '786aafd1-971f-401f-85a1-2e11a5590ba9', 'מדידת לחץ דם', false, 4, NOW());


-- Question 325: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '85a82043-f99b-4c73-81a1-7534fff94c6d',
    'מהו Jet Ventilation?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'Jet Ventilation היא שיטת הנשמה בלחץ גבוה דרך מחט או קטטר, משמשת במצבי Difficult Airway.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d41cb231-2719-4b88-b345-c6d868c41a5e', '85a82043-f99b-4c73-81a1-7534fff94c6d', 'שיטת הנשמה חלופית בלחץ גבוה דרך מחט או קטטר', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('17b6b040-a435-4bb0-bec2-4a2ae741033b', '85a82043-f99b-4c73-81a1-7534fff94c6d', 'הנשמה רגילה באמבו', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f4011aad-93db-45df-9d2d-6d09c83c7192', '85a82043-f99b-4c73-81a1-7534fff94c6d', 'מתן חמצן במסכה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ab71a58c-b15e-4155-b91f-0e9968850eee', '85a82043-f99b-4c73-81a1-7534fff94c6d', 'הנשמה מכנית במנשם', false, 4, NOW());


-- Question 326: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '56a4004f-b8f6-4b3e-b014-189c9a1730de',
    'מה כוללת בדיקת DOPE לאחר אינטובציה?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'DOPE היא שיטת בדיקה שיטתית לאיתור בעיות לאחר אינטובציה: העתקה, חסימה, פנאומוטורקס, ציוד.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e8913e30-a66e-4aec-96e9-fc5940255ef5', '56a4004f-b8f6-4b3e-b014-189c9a1730de', 'Displaced, Obstruction, Pneumothorax, Equipment - בדיקת תקינות האינטובציה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8ad398b0-3424-486d-ab2a-497a6f6ed0cc', '56a4004f-b8f6-4b3e-b014-189c9a1730de', 'בדיקת רמת תרופות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b8f27833-d798-4b3b-817c-d581effa3892', '56a4004f-b8f6-4b3e-b014-189c9a1730de', 'בדיקת לחץ דם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fb7fe847-491f-428d-9b5f-695fe37b52f9', '56a4004f-b8f6-4b3e-b014-189c9a1730de', 'בדיקת ECG', false, 4, NOW());


-- Question 327: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ec18241e-eb71-4ec7-9b11-35179a9e83f7',
    'מהם יתרונות האינטובציה?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'יתרונות האינטובציה כוללים הגנה מפני אספירציה, שליטה מלאה על האיוורור ואפשרות למתן תרופות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c3af6e9a-4652-46fe-a528-87099a11109a', 'ec18241e-eb71-4ec7-9b11-35179a9e83f7', 'הגנה מפני אספירציה, איוורור יעיל ומתן תרופות דרך הטובוס', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('581bb9df-6fb3-47f4-adf4-deb501678a98', 'ec18241e-eb71-4ec7-9b11-35179a9e83f7', 'רק הגנה מפני אספירציה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2867f7bb-53b8-4195-be83-4caca713c9e8', 'ec18241e-eb71-4ec7-9b11-35179a9e83f7', 'רק מתן חמצן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('01e52e2f-120c-470b-b504-1862b45d2a5b', 'ec18241e-eb71-4ec7-9b11-35179a9e83f7', 'אין יתרונות ברורים', false, 4, NOW());


-- Question 328: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '7b3645a8-086f-4c8b-b2a9-7a7eff0abc84',
    'מהם חסרונות האינטובציה?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'חסרונות האינטובציה כוללים סיכון לטראומה, היפוקסיה בזמן הניסיון, סיבוכים המודינמיים ואספירציה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8bade050-7172-482b-bea0-2e40b4484a2a', '7b3645a8-086f-4c8b-b2a9-7a7eff0abc84', 'סיכון לטראומה, היפוקסיה בזמן הניסיון וסיבוכים המודינמיים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3f3aeb8f-1386-4905-9b09-0560e1e480e4', '7b3645a8-086f-4c8b-b2a9-7a7eff0abc84', 'אין חסרונות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('355933c5-9e6d-42fa-a5d4-06a4097ad006', '7b3645a8-086f-4c8b-b2a9-7a7eff0abc84', 'רק כאב למטופל', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('44cae53f-7e53-4632-82d7-795283002e7e', '7b3645a8-086f-4c8b-b2a9-7a7eff0abc84', 'רק עלות כלכלית', false, 4, NOW());


-- Question 329: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '3c422111-aee6-432e-a3e2-615bccdc8d86',
    'מהו מנשם אוטומטי?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'מנשם אוטומטי הוא מכשיר המבצע הנשמה מכנית בפרמטרים מוגדרים, מאפשר שחרור ידיים בהחייאה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e8206a39-fc3c-460b-8cf4-f689f29a535f', '3c422111-aee6-432e-a3e2-615bccdc8d86', 'מכשיר המבצע הנשמה מכנית אוטומטית לחולה מאונטב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b97ba8b8-8750-442b-b9e7-b0c6d2a68057', '3c422111-aee6-432e-a3e2-615bccdc8d86', 'אמבו רגיל', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7def8a37-32c5-4fe0-a813-22e7f16014ae', '3c422111-aee6-432e-a3e2-615bccdc8d86', 'מסכת חמצן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('12876f15-0e37-4451-bf4c-8d96fb5e6b37', '3c422111-aee6-432e-a3e2-615bccdc8d86', 'מכשיר למדידת נשימה', false, 4, NOW());


-- Question 330: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'aa734aee-aeb9-4422-9b20-b6bf47cacce7',
    'מהי אספירציה בהקשר של נתיב אוויר?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'אספירציה היא כניסת תכולת קיבה, דם או הפרשות לריאות, סיבוך מסוכן שאינטובציה מונעת.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('553fc9d6-c8fd-4d63-9054-1d805a892ad0', 'aa734aee-aeb9-4422-9b20-b6bf47cacce7', 'כניסת תכולת קיבה, דם או הפרשות לריאות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3c49c035-ae9d-4502-8de9-655091c1b8b1', 'aa734aee-aeb9-4422-9b20-b6bf47cacce7', 'יניקת אוויר לריאות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4c8a3f83-fe6d-457d-8578-6eb65e0ebf78', 'aa734aee-aeb9-4422-9b20-b6bf47cacce7', 'הוצאת אוויר מהריאות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6c6436b5-72f1-4ca2-b870-62d4ad6a2619', 'aa734aee-aeb9-4422-9b20-b6bf47cacce7', 'בדיקת נוזלים', false, 4, NOW());


-- Question 331: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'cbb0acc2-934e-4d46-98fc-b2539073f3d9',
    'מהם 6 השלבים באינטובציה?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    '6 שלבי האינטובציה: החלטה על הצורך, הכנה, פראוקסיגינציה, סדציה, ביצוע ואימות המיקום.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1b1ccb0c-41d6-4245-b5bc-28aa23de1fe0', 'cbb0acc2-934e-4d46-98fc-b2539073f3d9', 'החלטה, הכנה, פראוקסיגינציה, סדציה, ביצוע ואימות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ac4fa9d4-f65a-4c2e-9f61-009a407d88b7', 'cbb0acc2-934e-4d46-98fc-b2539073f3d9', 'רק הכנה וביצוע', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e997eb4e-62b3-4042-b598-eff4e7592dd8', 'cbb0acc2-934e-4d46-98fc-b2539073f3d9', 'רק סדציה וביצוע', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f9481938-15b1-4728-9453-ec084ede6632', 'cbb0acc2-934e-4d46-98fc-b2539073f3d9', 'רק פראוקסיגינציה וביצוע', false, 4, NOW());


-- Question 332: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ea623985-faee-48a2-a1f1-004c0c315fd6',
    'מהו Sellick''s Maneuver (Cricoid Pressure)?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'Sellick''s Maneuver היא לחיצה על הסחוס הקריקואיד לסגירת הוושט ומניעת אספירציה במהלך אינטובציה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('794becde-8d6c-44fc-b229-0de8630b7194', 'ea623985-faee-48a2-a1f1-004c0c315fd6', 'לחיצה על הסחוס הקריקואיד למניעת אספירציה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7b46c8d9-fe6a-4b74-837a-bd6efb79c9b8', 'ea623985-faee-48a2-a1f1-004c0c315fd6', 'פתיחת נתיב אוויר כירורגי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1b0e52d9-30e8-4438-b4c4-d4d446ebacda', 'ea623985-faee-48a2-a1f1-004c0c315fd6', 'טכניקת הנשמה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c57e05f1-5879-436a-9f7c-a455338cfe0c', 'ea623985-faee-48a2-a1f1-004c0c315fd6', 'בדיקת הצוואר', false, 4, NOW());


-- Question 333: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a7118b24-c546-4b59-811f-32a9209250a0',
    'מהי סטורציה (SpO2)?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'סטורציה (SpO2) היא אחוז רוויון החמצן בהמוגלובין הנמדד בפולס-אוקסימטר, אינדיקטור חשוב לאוקסיגנציה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f9377273-6ea4-4fa6-a3e9-3f92f415a617', 'a7118b24-c546-4b59-811f-32a9209250a0', 'אחוז רוויון החמצן בדם הנמדד בפולס-אוקסימטר', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d9849291-1895-4e3b-83a3-7b89d2e42a42', 'a7118b24-c546-4b59-811f-32a9209250a0', 'לחץ דם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fc2589fb-f1fc-40b3-8853-b36287f89d1e', 'a7118b24-c546-4b59-811f-32a9209250a0', 'קצב לב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ac8bbf8b-971e-46ba-969b-9fda51d89aeb', 'a7118b24-c546-4b59-811f-32a9209250a0', 'טמפרטורת גוף', false, 4, NOW());


-- Question 334: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '8ac765a9-bb90-4c93-bf89-a3a32118bafa',
    'מהי התוויה נגד יחסית לאינטובציה?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'התוויות נגד יחסיות כוללות טראומה קשה לפנים/צוואר, לשון נפוחה מאוד ואפיגלוטיטיס, שם יש סיכון מוגבר.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('42610616-ff0c-412d-bdbc-b6f11433fbd3', '8ac765a9-bb90-4c93-bf89-a3a32118bafa', 'טראומה לפנים/צוואר, לשון נפוחה מאוד, אפיגלוטיטיס', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('414ca0b3-b5a3-4e29-94d0-d82b62bd78be', '8ac765a9-bb90-4c93-bf89-a3a32118bafa', 'כל מצב של הפסקת נשימה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('31d6a2e8-f104-47bb-b654-e48a7a70207f', '8ac765a9-bb90-4c93-bf89-a3a32118bafa', 'אובדן הכרה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('21c64a52-7304-4f9a-9136-c39e1a6a3088', '8ac765a9-bb90-4c93-bf89-a3a32118bafa', 'אין התוויות נגד', false, 4, NOW());


-- Question 335: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'cecc494e-051c-41d5-8fb2-f009bfb866fa',
    'מהו Face to Face Intubation?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'Face to Face Intubation היא טכניקת אינטובציה מול פני החולה, משמשת במצבים כמו חולה כלוא ברכב.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b277bcb1-306a-4c96-8f90-559948171b8e', 'cecc494e-051c-41d5-8fb2-f009bfb866fa', 'טכניקת אינטובציה כשהמטפל מול פני החולה, לדוגמה בתאונה בכלוא', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f75c0d0f-2a38-470a-97a7-34cbf0ce14d3', 'cecc494e-051c-41d5-8fb2-f009bfb866fa', 'אינטובציה רגילה מאחורי ראש החולה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a44db64e-21a4-44e2-b587-1395f3ef67d9', 'cecc494e-051c-41d5-8fb2-f009bfb866fa', 'אינטובציה דרך האף', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1109c4f3-0081-4c46-a926-7a0e294a7f83', 'cecc494e-051c-41d5-8fb2-f009bfb866fa', 'הנשמה באמבו', false, 4, NOW());


-- Question 336: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ae2001b8-d0c5-4894-a334-8ead9ea84a6c',
    'מדוע חשוב לעלות את לחץ הדם לפני אינטובציה?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'בזמן אינטובציה הלחץ החלקי יורד ב-30 בממוצע עקב תרופות, לכן חשוב להעלות אותו מראש ל-120-130.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('563a7da0-ac14-48e5-a7f6-92c8c2c6f7cf', 'ae2001b8-d0c5-4894-a334-8ead9ea84a6c', 'הלחץ יורד ב-30 בזמן האינטובציה עקב תרופות ההרדמה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ed4a9f48-2959-4591-b708-572a90f4f960', 'ae2001b8-d0c5-4894-a334-8ead9ea84a6c', 'כדי למנוע דימום', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5b5511e1-36ad-4953-a9b2-e44c37683c36', 'ae2001b8-d0c5-4894-a334-8ead9ea84a6c', 'כדי לשפר את הראייה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5a37e2fb-a71a-4e71-b2ce-9b4c18c98ca6', 'ae2001b8-d0c5-4894-a334-8ead9ea84a6c', 'אין צורך להעלות את הלחץ', false, 4, NOW());


-- Question 337: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '71109d42-5d58-44fd-92bc-00f6afbcf83b',
    'מהו Blind Intubation?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'Blind Intubation היא אינטובציה ללא ראייה ישירה של מיתרי הקול, כמו אינטובציה נאזאלית או דיגיטלית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a31328ee-fc5f-44eb-b94e-32f32472258c', '71109d42-5d58-44fd-92bc-00f6afbcf83b', 'אינטובציה ללא ראיית מיתרי הקול, לדוגמה נאזאלית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('311d1f69-82aa-4aad-82e3-aee103bb660c', '71109d42-5d58-44fd-92bc-00f6afbcf83b', 'אינטובציה בעיניים עצומות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('330e8077-770c-4a09-8554-bd54a0e1366d', '71109d42-5d58-44fd-92bc-00f6afbcf83b', 'אינטובציה בחושך', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b0b6a576-2cd9-47ec-a74b-7b4dce7fc7f9', '71109d42-5d58-44fd-92bc-00f6afbcf83b', 'הנשמה באמבו', false, 4, NOW());


-- Question 338: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '8cc9a6e0-48b9-4edb-b8d6-3e8f4f0b1e7a',
    'מהו ETT Cuff (בלונית)?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'ה-Cuff היא בלונית מתנפחת בקצה הטובוס האוטמת את הקנה, מונעת אספירציה ומאפשרת הנשמה יעילה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8a0292b9-abac-42fe-8dfd-18db5e8e040d', '8cc9a6e0-48b9-4edb-b8d6-3e8f4f0b1e7a', 'בלון מתנפח בקצה הטובוס האוטם את הקנה ומונע אספירציה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('96f432ab-d8bf-4600-956a-68228c5f7d44', '8cc9a6e0-48b9-4edb-b8d6-3e8f4f0b1e7a', 'חלק מהלרינגוסקופ', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4ee583fd-2300-419b-b9a4-8921a14b7e4b', '8cc9a6e0-48b9-4edb-b8d6-3e8f4f0b1e7a', 'מכשיר למדידת לחץ', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('33c3dcfe-bd43-4390-a69c-9aac3e79de74', '8cc9a6e0-48b9-4edb-b8d6-3e8f4f0b1e7a', 'סוג של מסכה', false, 4, NOW());


-- Question 339: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '10c1f1c0-1b09-441f-a88e-0cfef792ec78',
    'איך מאמתים מיקום טובוס נכון לאחר אינטובציה?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'אימות מיקום טובוס נעשה ב-5 שיטות: ראייה ישירה, התרוממות חזה, קפנוגרפיה, האזנה דו-צדדית וניטור.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b0df3de5-72c0-4857-b720-396a3d0850dc', '10c1f1c0-1b09-441f-a88e-0cfef792ec78', 'התרוממות סימטרית של בית החזה, קפנוגרפיה, האזנה דו-צדדית, ראייה ישירה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('dcf3f9e7-af4d-4fac-b3b8-f9e69ce9340a', '10c1f1c0-1b09-441f-a88e-0cfef792ec78', 'רק האזנה לריאות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ee47b89a-416f-46b4-a28c-212e5e3370a4', '10c1f1c0-1b09-441f-a88e-0cfef792ec78', 'רק מדידת סטורציה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ac6d5470-cf6d-4c31-92ac-3147746a5a20', '10c1f1c0-1b09-441f-a88e-0cfef792ec78', 'רק ראייה של הטובוס בפה', false, 4, NOW());


-- Question 340: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '7283e5aa-f9f7-4305-9dd5-ffa775148e45',
    'מהו נתיב אוויר דפיניטיבי?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'נתיב אוויר דפיניטיבי הוא נתיב אוויר מאובטח במלואו עם בלונית נפוחה, מגן מפני אספירציה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ed2828a3-7b53-4378-a4c0-50b6e0507157', '7283e5aa-f9f7-4305-9dd5-ffa775148e45', 'נתיב אוויר המאובטח בצורה מלאה עם בלונית נפוחה (כמו ETT)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('22e9b3fb-a929-416e-bb23-87a6f5f7646b', '7283e5aa-f9f7-4305-9dd5-ffa775148e45', 'כל סוג של הנשמה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8414200d-1b3d-4e61-a4e0-2cb35069f6bc', '7283e5aa-f9f7-4305-9dd5-ffa775148e45', 'מתן חמצן במסכה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b3c93706-7d2b-48f0-8e4c-e14df2e6cb91', '7283e5aa-f9f7-4305-9dd5-ffa775148e45', 'מנתב אוויר פשוט', false, 4, NOW());


-- Question 341: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c476c389-6efe-4b38-b676-254e3dc13fd4',
    'למה אינטובציה באפיגלוטיטיס נחשבת מסוכנת?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'באפיגלוטיטיס האפיגלוטיס נפוח, וגירוי יכול לגרום לספאזם והחמרת הנפיחות עד חסימה מוחלטת.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5761969a-029b-4106-bb0e-1de63c24dffd', 'c476c389-6efe-4b38-b676-254e3dc13fd4', 'גירוי יכול לגרום לספאזם והחמרה של הנפיחות עד חסימה מלאה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f113b54a-56ee-4950-a6ba-5cf32e21eb67', 'c476c389-6efe-4b38-b676-254e3dc13fd4', 'זה כואב מאוד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('52613e4c-2b7c-4065-bb14-ec393a5cdd9b', 'c476c389-6efe-4b38-b676-254e3dc13fd4', 'זה לוקח הרבה זמן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ff32b8d6-c56d-41fa-b13b-beef4c752301', 'c476c389-6efe-4b38-b676-254e3dc13fd4', 'אין סיכון מיוחד', false, 4, NOW());


-- Question 342: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'bd9334d2-0f5c-497e-aff4-2df1aa6eb947',
    'מהי מסיכת אינטובציה?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'מסיכת אינטובציה היא ציוד מגן המגן על פה ועיניים של המטפל מהפרשות החולה בזמן האינטובציה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8d903609-8bfd-4eb5-97c7-b3398546ca10', 'bd9334d2-0f5c-497e-aff4-2df1aa6eb947', 'מגן אישי המגן על פני המטפל מהפרשות בזמן אינטובציה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2506987c-06bb-44d0-ba5f-0370eab3be5c', 'bd9334d2-0f5c-497e-aff4-2df1aa6eb947', 'מסכת חמצן לחולה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f8d2a36a-b966-4de8-825a-749d574702a5', 'bd9334d2-0f5c-497e-aff4-2df1aa6eb947', 'חלק מהלרינגוסקופ', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('08741c32-996c-4324-9322-9d9e4f72ffbe', 'bd9334d2-0f5c-497e-aff4-2df1aa6eb947', 'סוג של טובוס', false, 4, NOW());


-- Question 343: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '2050d828-1d5a-4859-a507-9d701b8a4041',
    'מהו QuickTrach?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'QuickTrach הוא מכשיר לביצוע נתיב אוויר כירורגי חירום דרך הממברנה הקריקו-תירואידית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b6b25e35-35f2-4a79-bbee-21fef602523a', '2050d828-1d5a-4859-a507-9d701b8a4041', 'מכשיר לפתיחת נתיב אוויר כירורגי חירום דרך הממברנה הקריקו-תירואידית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a02ce577-53a5-4e40-a304-b519f569c7b1', '2050d828-1d5a-4859-a507-9d701b8a4041', 'סוג של טובוס', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('21d39942-d34c-4956-9ee9-02c3668c4d6c', '2050d828-1d5a-4859-a507-9d701b8a4041', 'מכשיר למדידת נשימה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6efea4f9-17df-4c7b-8fbf-cbdf46276a2d', '2050d828-1d5a-4859-a507-9d701b8a4041', 'תרופה להרדמה', false, 4, NOW());


-- Question 344: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '35743729-43e7-4b24-a5d0-7049da551e04',
    'איך בודקים קושי צפוי בהנשמת BVM?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'MOANS הוא כלי הערכה לקושי צפוי בהנשמת BVM: אטימת מסכה, השמנה, גיל, חוסר שיניים, נוקשות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c62d0b77-4691-4462-844b-16e0c58ebc65', '35743729-43e7-4b24-a5d0-7049da551e04', 'שימוש באקרונים MOANS: Mask seal, Obesity, Age, No teeth, Stiffness', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2a790e8d-8523-422a-809e-6804fd7455e4', '35743729-43e7-4b24-a5d0-7049da551e04', 'רק מסתכלים על המטופל', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f7742703-ad79-49a4-a3bd-52c63cf85493', '35743729-43e7-4b24-a5d0-7049da551e04', 'רק בודקים משקל', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bda26bef-07fa-45e6-b5ad-ec7de08edf08', '35743729-43e7-4b24-a5d0-7049da551e04', 'אין דרך לבדוק מראש', false, 4, NOW());


-- Question 345: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'cf8ff954-dbb3-4ae2-8595-8961647af7cd',
    'מהו גודל טובוס סטנדרטי למבוגר?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'גודל טובוס סטנדרטי למבוגרים: 7.5-8.0 מ"מ לנשים, 8.0-8.5 מ"מ לגברים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bdd43444-738a-45ed-8b1a-0c57211242c5', 'cf8ff954-dbb3-4ae2-8595-8961647af7cd', '7.5-8.0 מ"מ לנשים, 8.0-8.5 מ"מ לגברים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e7c884e7-56a1-47d8-96bb-ea2237698109', 'cf8ff954-dbb3-4ae2-8595-8961647af7cd', '5.0-6.0 מ"מ לכולם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c1be1d4c-5c8e-49b0-a161-8306bc3549ae', 'cf8ff954-dbb3-4ae2-8595-8961647af7cd', '10.0 מ"מ לכולם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('78519f83-6e26-4e80-806c-286dee4d3158', 'cf8ff954-dbb3-4ae2-8595-8961647af7cd', '3.0-4.0 מ"מ לכולם', false, 4, NOW());


-- Question 346: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '7b0edcba-7404-41d7-86df-a985359f6b8a',
    'מהי קריקותירואידוטומיה (Cricothyroidotomy)?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'קריקותירואידוטומיה היא פתיחה כירורגית של נתיב אוויר דרך הממברנה בין הסחוס הקריקואיד לתירואיד.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4cd915c3-54d6-4910-b634-c50f781f8127', '7b0edcba-7404-41d7-86df-a985359f6b8a', 'פתיחה כירורגית של נתיב אוויר דרך הממברנה הקריקו-תירואידית במצבי חירום', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('85537be2-064d-440c-99f3-a9f703925674', '7b0edcba-7404-41d7-86df-a985359f6b8a', 'אינטובציה רגילה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('19e94e55-6ab4-4447-b380-384f20a901e7', '7b0edcba-7404-41d7-86df-a985359f6b8a', 'החדרת צינור דרך האף', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b089024d-f063-4064-ac42-2584039cc6d0', '7b0edcba-7404-41d7-86df-a985359f6b8a', 'הנשמה באמבו', false, 4, NOW());


-- Question 347: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c8b69472-f06e-42b1-97aa-449167d7218f',
    'מתי מבצעים קריקותירואידוטומיה?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'קריקותירואידוטומיה מבוצעת כמוצא אחרון: כשלון אינטובציה + חוסר יכולת BVM, או חסימה עליונה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('73caa274-8b87-48c6-b3c3-99d832e23bcd', 'c8b69472-f06e-42b1-97aa-449167d7218f', 'כשלון אינטובציה וחוסר יכולת להנשים BVM, או חסימה ב-Upper AW שלא ניתנת לפתרון', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1db64231-c630-4ca9-8742-a55d1be34fbc', 'c8b69472-f06e-42b1-97aa-449167d7218f', 'בכל מקרה של קוצר נשימה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('42d7590e-540f-4de1-8b8a-6f4303f1ade4', 'c8b69472-f06e-42b1-97aa-449167d7218f', 'כשיטה ראשונה לאבטחת נתיב אוויר', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('965c8ca3-219a-4b78-ab68-a40bcf3af7a6', 'c8b69472-f06e-42b1-97aa-449167d7218f', 'רק בבית חולים', false, 4, NOW());


-- Question 348: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'f3982b90-59c9-47e3-809a-ad9e7d461d12',
    'מהם הסיבוכים העיקריים של אינטובציה?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'סיבוכים עיקריים: אינטובציה וושטית, One Lung, היפוקסיה, טראומה, אספירציה, פנאומוטורקס.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('712c8314-75e5-4533-bcfb-0072481a6f02', 'f3982b90-59c9-47e3-809a-ad9e7d461d12', 'One Lung Intubation, אינטובציה וושטית, היפוקסיה, טראומה לשיניים/רקמות, אספירציה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1a7c4fdf-03d4-4c09-9367-e5c55ef4f6d5', 'f3982b90-59c9-47e3-809a-ad9e7d461d12', 'רק כאב למטופל', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ef522a49-a4d3-4ae4-be22-94bdb0b92b74', 'f3982b90-59c9-47e3-809a-ad9e7d461d12', 'רק שבר שיניים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('814ab262-6d4c-4827-aa25-833aebe4b197', 'f3982b90-59c9-47e3-809a-ad9e7d461d12', 'אין סיבוכים משמעותיים', false, 4, NOW());


-- Question 349: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '80204a68-1f88-49f2-83c7-4023f8d7064a',
    'מהו ההבדל בין נתיב אוויר עליון לתחתון?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'נתיב עליון: חלל אף, פה, גרון ותיבת קול עד מיתרי הקול. תחתון: קנה, סימפונות ונאדיות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5a242fea-a917-46d5-b49c-de04758291e9', '80204a68-1f88-49f2-83c7-4023f8d7064a', 'עליון: אף-פה-גרון-תיבת קול עד מיתרי הקול. תחתון: קנה-סימפונות-נאדיות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1b0c4d5e-59c0-40de-a007-a5987b73f42f', '80204a68-1f88-49f2-83c7-4023f8d7064a', 'עליון: רק האף. תחתון: כל השאר', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d6ca739d-6a58-4039-97b5-b2d15ef28eed', '80204a68-1f88-49f2-83c7-4023f8d7064a', 'אין הבדל אמיתי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1f33b783-bf3e-4765-a3d4-8071fb41ec94', '80204a68-1f88-49f2-83c7-4023f8d7064a', 'עליון: עד הגרון. תחתון: הגרון והלאה', false, 4, NOW());


-- Question 350: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'bb66537f-2f49-4705-bafa-7834b47d1e02',
    'מהן ההתוויות הנגד לקריקותירואידוטומיה?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'התוויות נגד לקריקותירואידוטומיה: גיל מתחת ל-8, טראומה חריפה לאזור, הפרעת קרישה חמורה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1602b8e9-b5cf-4e1a-b251-f5b6b7766475', 'bb66537f-2f49-4705-bafa-7834b47d1e02', 'גיל מתחת ל-8, טראומה ישירה לצוואר באזור, קואגולופתיה חמורה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('410d3c19-4dcd-4d88-ab29-dd07e2473ce4', 'bb66537f-2f49-4705-bafa-7834b47d1e02', 'אין התוויות נגד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a1b6a2a0-eac1-451d-a0c3-5b083fec4de3', 'bb66537f-2f49-4705-bafa-7834b47d1e02', 'כל מצב של הפסקת נשימה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c7221130-a2c8-4ead-827f-a0a8f822abd0', 'bb66537f-2f49-4705-bafa-7834b47d1e02', 'רק השמנת יתר', false, 4, NOW());


-- Question 351: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '4110d941-0bb9-4683-8716-ac4810aee3a1',
    'איך משפיעה הנשמה בלחץ חיובי על המערכת הקרדיווסקולרית?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'הנשמה בלחץ חיובי מקטינה את ה-Preload (מפחיתה החזר ורידי) ו-Afterload, עלולה להוריד לחץ דם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('164b5b0b-ab66-45b2-a717-e9f5db914c16', '4110d941-0bb9-4683-8716-ac4810aee3a1', 'מקטינה Preload (החזר ורידי) ו-Afterload, עלולה להוריד לחץ דם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0757dfa8-af93-430a-a268-ea1c24748f7e', '4110d941-0bb9-4683-8716-ac4810aee3a1', 'מגדילה את לחץ הדם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7208ad7f-94b2-44b0-9b19-4affa0c087a4', '4110d941-0bb9-4683-8716-ac4810aee3a1', 'לא משפיעה על המערכת הקרדיווסקולרית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4f5cdee4-9fbc-453b-acf5-0c1e93e60197', '4110d941-0bb9-4683-8716-ac4810aee3a1', 'מגבירה את ה-Cardiac Output', false, 4, NOW());


-- Question 352: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd12b8c3f-6861-444d-9a26-fa4784980677',
    'מהם הפרמטרים הרצויים ב-CPAP?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'CPAP נותן לחץ חיובי רציף של בדרך כלל 5-10 cm H2O עם FiO2 גבוה למניעת קריסת אלוואולי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1770886f-a0aa-4c97-8a82-055ea69011a7', 'd12b8c3f-6861-444d-9a26-fa4784980677', 'לחץ חיובי של 5-10 cm H2O עם FiO2 גבוה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a52279a3-a02b-4278-9bf1-8036e329114f', 'd12b8c3f-6861-444d-9a26-fa4784980677', 'לחץ של 30-40 cm H2O', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('97a4f74f-dff7-4576-bfad-22f761de9792', 'd12b8c3f-6861-444d-9a26-fa4784980677', 'לחץ שלילי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d5ebe791-0656-4e43-a84a-a16a4f024c3f', 'd12b8c3f-6861-444d-9a26-fa4784980677', 'אין פרמטרים קבועים', false, 4, NOW());


-- Question 353: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd206cb93-c4cc-42b3-ad55-ecaa46575e65',
    'מהו Video Laryngoscope?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'Video Laryngoscope הוא לרינגוסקופ עם מצלמה ומסך, מאפשר ראייה עקיפה ומקל על אינטובציה קשה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('75be8478-6f82-413e-b110-33d94fd4d056', 'd206cb93-c4cc-42b3-ad55-ecaa46575e65', 'לרינגוסקופ עם מצלמה המאפשר ראייה עקיפה של מיתרי הקול על מסך', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('107ed33a-d9bf-492f-8f13-d701768b52d7', 'd206cb93-c4cc-42b3-ad55-ecaa46575e65', 'לרינגוסקופ רגיל', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4fcf8ca7-91a5-49bd-a1fa-4057157a058d', 'd206cb93-c4cc-42b3-ad55-ecaa46575e65', 'מכשיר למדידת נשימה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('63aeaa0e-2e03-49cf-a751-716073435c34', 'd206cb93-c4cc-42b3-ad55-ecaa46575e65', 'מצלמה לתיעוד בלבד', false, 4, NOW());


-- Question 354: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'fb0897bc-440e-4519-8d30-5ecb082d0ba7',
    'מהם ההבדלים העיקריים בנתיב אוויר של ילדים?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'נתיב אוויר בילדים: אפיגלוטיס גדול וגמיש, גרון גבוה, לשון גדולה יחסית, קנה קצרה - מקשה על אינטובציה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5af2f3b4-e842-4f7c-9169-bd5e8bb66ade', 'fb0897bc-440e-4519-8d30-5ecb082d0ba7', 'אפיגלוטיס גדול וגמיש יותר, גרון גבוה יותר, לשון גדולה יחסית, קנה קצרה יותר', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('31db9247-8a1a-4752-b20b-2a0db4bc7485', 'fb0897bc-440e-4519-8d30-5ecb082d0ba7', 'אין הבדלים משמעותיים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('24dee443-0bac-445a-935f-9041414d0f9c', 'fb0897bc-440e-4519-8d30-5ecb082d0ba7', 'רק גודל קטן יותר', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ce6de4c8-45cc-4a4d-a48c-99779f577e9f', 'fb0897bc-440e-4519-8d30-5ecb082d0ba7', 'רק מיתרי קול שונים', false, 4, NOW());


-- Question 355: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '3e273c14-7b3e-49d0-a983-e6b66fd91bea',
    'מהי אנטומיה בעייתית לאינטובציה?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'אנטומיה בעייתית כוללת: צוואר קצר, מיקרוגנתיה, הגבלת פתיחת פה, חוסר ניידות צוואר - מקשים על אינטובציה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3c637ce6-9db1-4ac6-b710-c06c37980a8b', '3e273c14-7b3e-49d0-a983-e6b66fd91bea', 'צוואר קצר, לסת קטנה/נסוגה, פתיחת פה מוגבלת, צוואר לא ניתן לכיפוף', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c4648876-607e-4682-8f7f-6fa0143d9485', '3e273c14-7b3e-49d0-a983-e6b66fd91bea', 'רק גוף זר בדרכי הנשימה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4cd7047d-5b65-4fed-8a84-80e427b98b95', '3e273c14-7b3e-49d0-a983-e6b66fd91bea', 'רק זיהום בגרון', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ad47256e-016c-438e-b094-45036997b3fe', '3e273c14-7b3e-49d0-a983-e6b66fd91bea', 'רק שבר בצוואר', false, 4, NOW());


-- Question 356: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '6d77f224-a901-4861-9e88-c4d0597cd319',
    'מהו Stylet באינטובציה?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'Stylet הוא מוט מתכת גמיש המוכנס לטובוס כדי לשמור על צורה מעוקלת ולהקל על ההחדרה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('81b337aa-3501-4309-bea1-1f1cfa195870', '6d77f224-a901-4861-9e88-c4d0597cd319', 'מוט מתכת גמיש המוכנס לטובוס לשמירת צורתו המעוקלת', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9a962c6f-f31a-460e-bb10-c8ad7a63ff07', '6d77f224-a901-4861-9e88-c4d0597cd319', 'סוג של לרינגוסקופ', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1bc309f6-74ac-45d4-8fec-9f9b0f328bf5', '6d77f224-a901-4861-9e88-c4d0597cd319', 'תרופה להרדמה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('609a42c7-82d5-496e-9250-c673e14471b5', '6d77f224-a901-4861-9e88-c4d0597cd319', 'מכשיר למדידה', false, 4, NOW());


-- Question 357: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1c06a209-046d-4d2f-9830-87c814e1247b',
    'מהי אינטובציה כחול-לבן?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'אינטובציה כחול-לבן הוא ביטוי למצב מלחיץ בו המטופל ציאנוטי והפרמדיק במתח - סיבוך מסוכן.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('21814bcc-d716-4184-b9e2-608e12173d48', '1c06a209-046d-4d2f-9830-87c814e1247b', 'ביטוי למצב בו המטופל הפך כחול (ציאנוטי) והפרמדיק לבן (מלחיץ)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('693a9b1e-cee4-4b5c-a3fa-acb991e3d89e', '1c06a209-046d-4d2f-9830-87c814e1247b', 'סוג של טובוס בצבעים כחול ולבן', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7d292f1b-b07a-4d24-9729-77f16791d1f5', '1c06a209-046d-4d2f-9830-87c814e1247b', 'פרוטוקול רפואי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b7fa6ba9-9ff6-4291-ba48-f30aa0b83bab', '1c06a209-046d-4d2f-9830-87c814e1247b', 'טכניקת אינטובציה מיוחדת', false, 4, NOW());


-- Question 358: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c4ea5ae2-8bb6-4814-8d77-9d236903a93d',
    'מדוע חשוב להימנע מאינטובציה ב-HVS (Hyperventilation Syndrome)?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'ב-HVS החולה עלול להראות כמחוסר הכרה ולקבל אינטובציה שלא לצורך - חשוב לזהות נכון.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('41c748a2-cfc4-4796-be39-5d531b8bff9f', 'c4ea5ae2-8bb6-4814-8d77-9d236903a93d', 'יכול להיראות כמחוסר הכרה ולהוביל לאינטובציה שלא לצורך', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('09e3538c-c9a9-4520-9bf4-3b608ca132da', 'c4ea5ae2-8bb6-4814-8d77-9d236903a93d', 'אינטובציה תמיד מחמירה את המצב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('906d547c-3cfa-4311-9522-fca0b54a97c0', 'c4ea5ae2-8bb6-4814-8d77-9d236903a93d', 'זה מצב שאינו דורש טיפול', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('23b5b698-6246-4ab5-8e05-e176b4d9ed86', 'c4ea5ae2-8bb6-4814-8d77-9d236903a93d', 'אין בעיה לבצע אינטובציה ב-HVS', false, 4, NOW());


-- Question 359: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '08d004c1-4e05-4401-9562-20c6816bd022',
    'מהו יחס עיסויים-הנשמות בהחייאה לפני אינטובציה?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'יחס עיסויים-הנשמות בהחייאה לפני אינטובציה הוא 30:2, לאחר אינטובציה הנשמות רציפות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d1aa2d08-25ad-4db3-98ba-93af0c67114f', '08d004c1-4e05-4401-9562-20c6816bd022', '30:2 - שלושים עיסויים לשתי הנשמות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0410bd35-1f80-414b-b702-ce3c35745975', '08d004c1-4e05-4401-9562-20c6816bd022', '15:2 - חמישה עשר עיסויים לשתי הנשמות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f30a01b7-498e-47e1-abaf-687d5a109e13', '08d004c1-4e05-4401-9562-20c6816bd022', '100:2 - מאה עיסויים לשתי הנשמות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8945fec0-03ab-408b-93f3-55fc12464ad1', '08d004c1-4e05-4401-9562-20c6816bd022', 'אין צורך בהנשמות', false, 4, NOW());


-- Question 360: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '82fbbb8e-e213-44a8-806a-0f1a2af83fb6',
    'מהו Cormack-Lehane Score?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'Cormack-Lehane הוא סיווג 1-4 של ראות מיתרי הקול בלרינגוסקופיה, Grade 3-4 מעיד על אינטובציה קשה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('809f38ea-542a-436b-98e1-2a57c45dbc1a', '82fbbb8e-e213-44a8-806a-0f1a2af83fb6', 'סיווג 1-4 של ראות מיתרי הקול בלרינגוסקופיה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('29d877cb-a3b2-4bb4-90e7-65a9d136cb14', '82fbbb8e-e213-44a8-806a-0f1a2af83fb6', 'ציון למצב ההכרה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('aa92d5d8-dbb6-462b-888a-ffd8eaa9cc32', '82fbbb8e-e213-44a8-806a-0f1a2af83fb6', 'מדד ללחץ דם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ad893274-d479-4681-882f-a87f6cb5c40b', '82fbbb8e-e213-44a8-806a-0f1a2af83fb6', 'סוג של טובוס', false, 4, NOW());


-- Question 361: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1a36a7ce-9e18-4d95-be87-4052e1fae4f7',
    'מה קורה כאשר QuickTrach לא מאוורר טוב?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'QuickTrach לא מאוורר בצורה מושלמת אבל מספיק לפינוי קצר, במידת הצורך טרכאוסטומיה בבית חולים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('26c9342c-8ed5-46c6-9fcd-d519ef6bbed5', '1a36a7ce-9e18-4d95-be87-4052e1fae4f7', 'האיוורור לא טוב אבל זה יספיק לפינוי קצר, יש לשקול טרכאוסטומיה דפיניטיבית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('20582adb-8b30-4bb6-a364-70ad9c6c83a9', '1a36a7ce-9e18-4d95-be87-4052e1fae4f7', 'חייבים להסיר מיד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1646f289-505d-44b8-a60d-362122b2b966', '1a36a7ce-9e18-4d95-be87-4052e1fae4f7', 'זה אומר שההליך נכשל לחלוטין', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('afc5e4f6-d945-44f0-8601-67a784a01117', '1a36a7ce-9e18-4d95-be87-4052e1fae4f7', 'אין בעיה, האיוורור תמיד מושלם', false, 4, NOW());


-- Question 362: נתיב אוויר
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '010b08ad-8a86-491d-8e84-a75e3da36b28',
    'מדוע חשוב להשתמש ב-Bougie לפחות בניסיון אחד מתוך 3?',
    (SELECT id FROM public.categories WHERE name = 'נתיב אוויר' LIMIT 1),
    'pending',
    'הפרוטוקול מחייב שימוש בבוז''י לפחות פעם אחת מתוך 3 ניסיונות כי הוא דק יותר (5-5.5 מ"מ) וקל יותר להחדרה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('34d6aa81-f27c-43d1-9313-fa2da726a796', '010b08ad-8a86-491d-8e84-a75e3da36b28', 'הבוז''י דק יותר וקל יותר להחדרה, מגביר סיכויי הצלחה באינטובציה קשה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fb356c53-e532-4a4b-8c7b-03f8d0fad50b', '010b08ad-8a86-491d-8e84-a75e3da36b28', 'זה רק המלצה ולא חובה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3e27cd9a-59be-4d74-94d3-9a2c3c01756f', '010b08ad-8a86-491d-8e84-a75e3da36b28', 'הבוז''י משמש רק לתרגול', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3a17c114-a9e1-4084-8f88-5d3f4c84ffb4', '010b08ad-8a86-491d-8e84-a75e3da36b28', 'אין יתרון אמיתי לבוז''י', false, 4, NOW());


-- Question 363: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '99bdd0f4-37c8-4411-a382-57347a2ba359',
    'מהו המטרה העיקרית של פרוטוקול ACS?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'פרוטוקול ACS מיועד לטיפול מהיר בתסמונת כלילית חריפה הכוללת STEMI, NSTEMI ואנגינה לא יציבה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ed5e8c0b-556b-4e44-bc14-6e9d31bd0d5b', '99bdd0f4-37c8-4411-a382-57347a2ba359', 'לטפל בתסמונת כלילית חריפה ולמנוע נזק נוסף לשריר הלב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8228fda6-ffcd-472a-9e81-930707bc0447', '99bdd0f4-37c8-4411-a382-57347a2ba359', 'לטפל בהפרעות קצב עלייתיות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0fe715a3-fdcf-4a55-b0e2-58d8f167dc21', '99bdd0f4-37c8-4411-a382-57347a2ba359', 'לטפל בברדיקרדיה סימפטומטית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8509b3ae-7fa5-472f-835d-94c19e8f3f9f', '99bdd0f4-37c8-4411-a382-57347a2ba359', 'לטפל באי ספיקת נשימה', false, 4, NOW());


-- Question 364: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a2c50dd2-9214-4283-970b-9d46ad7b42a4',
    'מהו הפרוטוקול הראשון שיש ליישם בדום לב עם קצב VF?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'VF הוא קצב הניתן לדפיברילציה ודורש טיפול מיידי עם שוק חשמלי לפי פרוטוקול VF/VT.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1bc781a3-b421-4327-bb8d-b499a09efd5c', 'a2c50dd2-9214-4283-970b-9d46ad7b42a4', 'פרוטוקול דום לב VF/VT עם דפיברילציה מיידית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('92233029-0b53-4496-9ff0-9c4df662d79b', 'a2c50dd2-9214-4283-970b-9d46ad7b42a4', 'פרוטוקול Asystole & PEA', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a697b130-77d9-456d-97d7-60f85edbdcdc', 'a2c50dd2-9214-4283-970b-9d46ad7b42a4', 'פרוטוקול ברדיקרדיה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('84b35b75-a1ad-4e01-aacd-0877b11b1262', 'a2c50dd2-9214-4283-970b-9d46ad7b42a4', 'פרוטוקול ROSC', false, 4, NOW());


-- Question 365: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '904b375e-3093-4299-88fc-ac9ab2d2b898',
    'מהי ההנחיה המרכזית בפרוטוקול החייאה לגבי איכות העיסויים?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'לפי הנחיות 2015, אחוז העיסויים צריך להיות לפחות 80% מסך זמן ההחייאה לשיפור הישרדות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('471a9572-f5b6-4b7b-bfbf-907ffef20118', '904b375e-3093-4299-88fc-ac9ab2d2b898', 'לפחות 80% מסך זמן ההחייאה צריך להיות עיסויים רצופים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1f2e0213-5e9b-49bb-8b5b-50e80859c31b', '904b375e-3093-4299-88fc-ac9ab2d2b898', 'לפחות 50% מסך זמן ההחייאה צריך להיות עיסויים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3e622822-488d-4235-bf73-d321971a5c5d', '904b375e-3093-4299-88fc-ac9ab2d2b898', 'לפחות 90% מסך זמן ההחייאה צריך להיות עיסויים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('dd278028-4e99-4544-bf95-fcdac61eadbc', '904b375e-3093-4299-88fc-ac9ab2d2b898', 'אין דרישה מוגדרת לאחוז העיסויים', false, 4, NOW());


-- Question 366: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '0239d700-e3f9-4199-9ffa-fbb014f0364d',
    'מהו פרוטוקול אנאפילקסיס?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'פרוטוקול אנאפילקסיס מיועד לטיפול מיידי בתגובה אלרגית מסכנת חיים באמצעות אדרנלין.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3aa18b08-f5d8-431a-a105-8df0a239a234', '0239d700-e3f9-4199-9ffa-fbb014f0364d', 'פרוטוקול לטיפול בתגובה אלרגית חמורה עם אדרנלין', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('504a2636-8c37-4eb2-b84f-cca072cf5bce', '0239d700-e3f9-4199-9ffa-fbb014f0364d', 'פרוטוקול לטיפול בהלם ספטי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1de6d6b2-9892-4925-b72a-fd36d4872652', '0239d700-e3f9-4199-9ffa-fbb014f0364d', 'פרוטוקול לטיפול בהלם קרדיוגני', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8e9bd90a-a604-4f50-b55f-8c7ec577de64', '0239d700-e3f9-4199-9ffa-fbb014f0364d', 'פרוטוקול לטיפול באסטמה', false, 4, NOW());


-- Question 367: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1bcd88cc-ccd5-4c67-ac4e-3efec8a8a27d',
    'כמה ניסיונות אינטובציה מותרים לפי פרוטוקול הפסקת נשימה?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'פרוטוקול הפסקת נשימה מגביל ל-3 ניסיונות אינטובציה, כאשר לפחות אחד חייב להיות תוך שימוש ב-Bougie.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e0d630dc-c107-4c52-8ee9-b18299fe3689', '1bcd88cc-ccd5-4c67-ac4e-3efec8a8a27d', 'עד 3 ניסיונות, כאשר לפחות אחד מהם עם Bougie', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('01a2d490-7699-4ae5-a279-feddeb356d57', '1bcd88cc-ccd5-4c67-ac4e-3efec8a8a27d', 'עד 2 ניסיונות בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ad449b80-6e60-45f7-8679-66e76efb3a46', '1bcd88cc-ccd5-4c67-ac4e-3efec8a8a27d', 'ניסיונות בלתי מוגבלים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f4397faa-ffdd-4532-b10d-0c4bd53f855d', '1bcd88cc-ccd5-4c67-ac4e-3efec8a8a27d', 'עד 5 ניסיונות', false, 4, NOW());


-- Question 368: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '4384aef6-9e4e-46b8-a8ac-ba2ccf127f3f',
    'מהו פרוטוקול ROSC?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'ROSC (Return Of Spontaneous Circulation) הוא פרוטוקול לטיפול מיד לאחר החזרת דופק.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ab4426d9-1538-4f2a-a070-a623fe543a7a', '4384aef6-9e4e-46b8-a8ac-ba2ccf127f3f', 'פרוטוקול לטיפול לאחר החזרת דופק ספונטני', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1be8a726-5dac-4a42-a53c-68d8b2d0e15f', '4384aef6-9e4e-46b8-a8ac-ba2ccf127f3f', 'פרוטוקול לתחילת החייאה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('96279fbb-82b7-40d8-a30c-304a46fdf559', '4384aef6-9e4e-46b8-a8ac-ba2ccf127f3f', 'פרוטוקול להפסקת החייאה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fd96323e-e0cf-4a45-96cb-383f7295841d', '4384aef6-9e4e-46b8-a8ac-ba2ccf127f3f', 'פרוטוקול לדום לב VF', false, 4, NOW());


-- Question 369: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ea2bdc94-1fce-4478-bd2c-fa25fe6dcd95',
    'מהי ההנחיה לגבי החלפת מעסים בפרוטוקול דום לב?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'החלפת מעסים כל 2 דקות היא הנחיה חשובה לשיפור איכות ההחייאה ומניעת עייפות המעסה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('28500bc1-6e37-48ae-85ef-184032773756', 'ea2bdc94-1fce-4478-bd2c-fa25fe6dcd95', 'החלפת מעסים כל 2 דקות לשיפור איכות ההחייאה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('59528808-07ce-4d94-8ff5-5a46128a3193', 'ea2bdc94-1fce-4478-bd2c-fa25fe6dcd95', 'החלפת מעסים כל 5 דקות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('951ae993-c0db-4166-8a8e-47f11d7b600c', 'ea2bdc94-1fce-4478-bd2c-fa25fe6dcd95', 'החלפת מעסים כל דקה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('40fed99b-6df3-4a50-bbd9-fc3353cb14f0', 'ea2bdc94-1fce-4478-bd2c-fa25fe6dcd95', 'אין צורך בהחלפת מעסים', false, 4, NOW());


-- Question 370: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '79a1c23c-7626-40ab-b554-a47adea78b28',
    'מהו פרוטוקול Asystole & PEA?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'פרוטוקול Asystole & PEA מיועד לקצבים שאינם ניתנים לדפיברילציה - אסיסטולה ופעילות חשמלית ללא דופק.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fe474e12-3c21-47fc-b0ae-78f116248633', '79a1c23c-7626-40ab-b554-a47adea78b28', 'פרוטוקול לטיפול בדום לב עם קצבים שאינם ניתנים לדפיברילציה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('135673ea-cbf7-4a50-abff-64a21832f361', '79a1c23c-7626-40ab-b554-a47adea78b28', 'פרוטוקול לטיפול ב-VF/VT', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8959b772-b7e0-4778-948f-5f9df5e8b2e9', '79a1c23c-7626-40ab-b554-a47adea78b28', 'פרוטוקול לטיפול בטכיקרדיה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('41936dc8-2fa0-474b-9ade-6364b62da671', '79a1c23c-7626-40ab-b554-a47adea78b28', 'פרוטוקול לטיפול בברדיקרדיה', false, 4, NOW());


-- Question 371: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '4040bb66-d966-4bac-b51e-5a5ead6b52a3',
    'מהי המטרה העיקרית של פרוטוקול בצקת ריאות?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'פרוטוקול בצקת ריאות כולל CPAP, ניטרטים ודיאורטיקה להורדת העומס על הלב ושיפור החמצון.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d59c4856-da25-4c7e-96ea-bec6aa50d6c6', '4040bb66-d966-4bac-b51e-5a5ead6b52a3', 'הורדת Preload ו-Afterload ושיפור החמצון', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('068c5c97-9315-4b22-ba47-14d5ca305f0f', '4040bb66-d966-4bac-b51e-5a5ead6b52a3', 'הגברת נפח הנוזלים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ae53074f-c9e1-4009-9732-9a02fa331a9b', '4040bb66-d966-4bac-b51e-5a5ead6b52a3', 'הגברת Cardiac Output בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('54e2581f-dffa-4891-97b7-bb0f9be0f612', '4040bb66-d966-4bac-b51e-5a5ead6b52a3', 'מתן אנטיביוטיקה', false, 4, NOW());


-- Question 372: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '4e3e8acc-a5c2-4837-ab9c-32bbc2a6d1f8',
    'מהו הטיפול הראשוני בפרוטוקול אסטמה?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'הטיפול הראשוני באסטמה הוא אינהלציה של מרחיבי סימפונות - ונטולין (בטא-אגוניסט) ואטרוונט (אנטי-כולינרגי).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b9fb42e7-4fe3-4040-a1d3-d928afd0432c', '4e3e8acc-a5c2-4837-ab9c-32bbc2a6d1f8', 'מתן אינהלציה של מרחיבי סימפונות - ונטולין ואטרוונט', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c3bda057-ee15-4d66-9772-a083bdf267c5', '4e3e8acc-a5c2-4837-ab9c-32bbc2a6d1f8', 'אינטובציה מיידית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b5be55a0-2093-40a1-a44b-b47aeb564aee', '4e3e8acc-a5c2-4837-ab9c-32bbc2a6d1f8', 'מתן אנטיביוטיקה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('83c37361-8afc-4520-aa7d-6df77417ddb2', '4e3e8acc-a5c2-4837-ab9c-32bbc2a6d1f8', 'מתן ניטרטים', false, 4, NOW());


-- Question 373: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '090753e4-f7bf-42e0-9fb6-ed3eb23bbd34',
    'מהי ההנחיה לגבי בדיקת דופק קרוטידי לפי פרוטוקול דום לב?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'יש לבדוק דופק קרוטידי תוך 10 שניות, ואם יש ספק - להתחיל החייאה מיידית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0add8f9a-b0ff-4cdc-9c6e-0470cd14f305', '090753e4-f7bf-42e0-9fb6-ed3eb23bbd34', 'בודקים תוך 10 שניות, ואם יש ספק - מתחילים החייאה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4230ee65-bc3a-4cd6-8e54-941a6c11e54a', '090753e4-f7bf-42e0-9fb6-ed3eb23bbd34', 'בודקים תוך 30 שניות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('374921f1-9b8b-4192-9aa3-6638eeba5741', '090753e4-f7bf-42e0-9fb6-ed3eb23bbd34', 'אין צורך בבדיקת דופק קרוטידי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9a0cadad-5b97-4c40-bc78-7ed27cca0991', '090753e4-f7bf-42e0-9fb6-ed3eb23bbd34', 'בודקים רק דופק רדיאלי', false, 4, NOW());


-- Question 374: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '5fa6ac88-5f7f-48fd-ac29-9de26f91237e',
    'מהי המשמעות של Gasping בהקשר של פרוטוקול דום לב?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'Gasping הן נשימות אגונליות שלא מעידות על פעילות מוחית תקינה, והחולה נחשב בדום לב לכל דבר.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6f2bea8b-f6c5-4525-8efc-a8ad23af55ff', '5fa6ac88-5f7f-48fd-ac29-9de26f91237e', 'נשימות אגונליות שמצביעות על דום לב ודורשות החייאה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('afd8220b-0c63-4ec7-9b53-89e1c5bc7683', '5fa6ac88-5f7f-48fd-ac29-9de26f91237e', 'נשימה תקינה שמצביעה על דופק תקין', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5f3e7b9c-c702-4645-a210-eb4b8d70ac6b', '5fa6ac88-5f7f-48fd-ac29-9de26f91237e', 'סימן להיפרוונטילציה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('06f0b44d-2d61-4b3c-988d-6b2838f99f4c', '5fa6ac88-5f7f-48fd-ac29-9de26f91237e', 'סימן לחסימת דרכי אוויר', false, 4, NOW());


-- Question 375: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '056a4da8-3740-46be-ba1e-06414a4df25a',
    'מהו פרוטוקול ברדיקרדיה?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'פרוטוקול ברדיקרדיה מיועד לטיפול בקצב לב איטי מדי (לרוב מתחת ל-50) הגורם לסימפטומים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fe47e587-cfb0-446b-aa51-24bd40f1a8f4', '056a4da8-3740-46be-ba1e-06414a4df25a', 'פרוטוקול לטיפול בקצב לב איטי עם סימפטומים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e6e35004-e843-4e05-8c17-10d6d457f01b', '056a4da8-3740-46be-ba1e-06414a4df25a', 'פרוטוקול לטיפול בקצב לב מהיר', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('947f02fe-7041-4780-92b5-6cc56e436b77', '056a4da8-3740-46be-ba1e-06414a4df25a', 'פרוטוקול לטיפול בפרפור עליות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('07972804-111c-4de3-8c29-2cfd4087888e', '056a4da8-3740-46be-ba1e-06414a4df25a', 'פרוטוקול לטיפול בדום לב', false, 4, NOW());


-- Question 376: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '7bd2c2ee-0f77-4ca5-aa5e-12bee341e109',
    'מהי המטרה של פרוטוקול פרכוסים?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'פרוטוקול פרכוסים כולל בדיקת גלוקוז, מתן בנזודיאזפינים ובקרת נתיב אוויר לעצירת הפרכוסים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('090aa93e-8f1e-4275-914e-dd5eac6947de', '7bd2c2ee-0f77-4ca5-aa5e-12bee341e109', 'עצירת הפעילות הפרכוסית ומניעת נזק נוירולוגי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3661342f-ff78-47ee-aa00-ce7330b7f1f9', '7bd2c2ee-0f77-4ca5-aa5e-12bee341e109', 'טיפול באפילפסיה כרונית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('64724ba6-a0e5-4d8f-97e0-52810950e171', '7bd2c2ee-0f77-4ca5-aa5e-12bee341e109', 'טיפול בכאב ראש', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e87f81bd-c475-49e7-b27b-684b05ea1470', '7bd2c2ee-0f77-4ca5-aa5e-12bee341e109', 'טיפול בהתעלפות', false, 4, NOW());


-- Question 377: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '17aa9c80-4397-4c43-9cbd-1a6ad190aa1b',
    'מתי ניתן להשתמש בפרוטוקול CPAP?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'CPAP משמש במספר פרוטוקולים - בצקת ריאות, אסטמה חמורה, COPD והחמרה נשימתית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('82c52413-ed34-4dda-b565-dce186945593', '17aa9c80-4397-4c43-9cbd-1a6ad190aa1b', 'בבצקת ריאות, אסטמה חמורה, COPD והחמרה נשימתית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b19b557f-bc83-432e-9f1e-1041ad2301a4', '17aa9c80-4397-4c43-9cbd-1a6ad190aa1b', 'רק בבצקת ריאות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d25e17d1-4ba5-4902-8196-3c8c0312a8f0', '17aa9c80-4397-4c43-9cbd-1a6ad190aa1b', 'רק באסטמה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e1033138-9bb0-402d-950d-20870a56a8f4', '17aa9c80-4397-4c43-9cbd-1a6ad190aa1b', 'במצבי דום לב', false, 4, NOW());


-- Question 378: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '3d4568cf-84cd-47fa-b4f7-5cd937438e21',
    'מהי ההנחיה לגבי מתן אמיודרון בפרוטוקול דום לב VF/VT?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'לפי הפרוטוקול, אמיודרון ניתן 300mg במנה ראשונה ו-150mg במנה שניה, מהול עד 20cc עם D5W.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5e31e963-f985-4371-8048-77be836b587e', '3d4568cf-84cd-47fa-b4f7-5cd937438e21', '300mg מנה ראשונה, 150mg מנה שניה, מהול עם 20cc D5W', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1fc5e4a8-b8af-491c-8fef-0f12d417371c', '3d4568cf-84cd-47fa-b4f7-5cd937438e21', '150mg מנה ראשונה, 300mg מנה שניה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1ac47481-e1b7-4cf5-b97a-6f40ad04670e', '3d4568cf-84cd-47fa-b4f7-5cd937438e21', '300mg מנה אחת בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3c224077-84bb-41ba-9297-6f5b5f3df5d9', '3d4568cf-84cd-47fa-b4f7-5cd937438e21', '500mg מנה ראשונה', false, 4, NOW());


-- Question 379: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '07810a3a-8c5e-4ef5-88b1-d673d8b4da32',
    'מהו פרוטוקול נשימה מאיימת?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'פרוטוקול הפסקת נשימה (נשימה מאיימת) מכתיב איך ומתי לבצע אינטובציה, איך מרדימים ואיך מתמודדים עם כישלון.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5dfbdf2d-6e8f-484c-b7d5-b8b534ffa939', '07810a3a-8c5e-4ef5-88b1-d673d8b4da32', 'פרוטוקול המכתיב מתי ואיך לבצע אינטובציה והרדמה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0edafeb9-50fb-473a-bd58-8636d1f21b02', '07810a3a-8c5e-4ef5-88b1-d673d8b4da32', 'פרוטוקול למתן חמצן בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3709806a-78a6-4f1e-b823-4c498aa2c2bd', '07810a3a-8c5e-4ef5-88b1-d673d8b4da32', 'פרוטוקול להפסקת החייאה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4ce6adde-a689-4942-8284-f37e42449f0a', '07810a3a-8c5e-4ef5-88b1-d673d8b4da32', 'פרוטוקול לטיפול באסטמה', false, 4, NOW());


-- Question 380: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'b90e9f7b-1695-4787-a806-f404370b082e',
    'מהי תרופת הבחירה בפרוטוקול ברדיקרדיה סימפטומטית?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'אטרופין הוא תרופת הבחירה בברדיקרדיה סימפטומטית, חוסם את המערכת הפרא-סימפתטית ומגביר קצב הלב.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8507d289-10b5-4030-8c64-ab9f8062a9aa', 'b90e9f7b-1695-4787-a806-f404370b082e', 'אטרופין', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('82e2b872-60cf-48fb-86ee-450df5b9325d', 'b90e9f7b-1695-4787-a806-f404370b082e', 'אדרנלין', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1e53898b-175f-41be-ab23-ffaf854593f1', 'b90e9f7b-1695-4787-a806-f404370b082e', 'אמיודרון', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a1719ad2-f72e-44d1-a4da-4ed2be8cca58', 'b90e9f7b-1695-4787-a806-f404370b082e', 'מידאזולם', false, 4, NOW());


-- Question 381: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'bfeea6d4-c75d-47c6-8349-b92bcbe5fa01',
    'מתי מבוצע ECG ימני-אחורי לפי פרוטוקול ACS?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'ECG ימני-אחורי מבוצע כשיש חשד לאוטם בקירות שלא נראים ב-ECG רגיל - הקיר הימני והאחורי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6649340d-3537-4831-b307-409ea5b83509', 'bfeea6d4-c75d-47c6-8349-b92bcbe5fa01', 'כשיש חשד לאוטם בקיר הימני או האחורי של הלב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('478a4865-58f8-4ec7-abf3-0ab1ddecbb83', 'bfeea6d4-c75d-47c6-8349-b92bcbe5fa01', 'בכל מקרה של ACS', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f63b96b5-e449-4c6e-9e91-0b4137ce3108', 'bfeea6d4-c75d-47c6-8349-b92bcbe5fa01', 'רק בהפרעות קצב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('004e64aa-9f14-40b1-b7c4-24b30bb72e77', 'bfeea6d4-c75d-47c6-8349-b92bcbe5fa01', 'לא מבוצע בשטח', false, 4, NOW());


-- Question 382: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '2a56d22e-fd15-44f5-a747-b9b37b16a683',
    'מהי ההנחיה לגבי שימוש בלוקאס (מכשיר עיסויים אוטומטי)?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'את הלוקאס יש לחבר רק לאחר זמן מסוים מתחילת ההחייאה, כי חיבורו דורש הפסקת עיסויים לזמן ארוך יחסית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b46053f1-347e-4406-89a4-374ea555e57d', '2a56d22e-fd15-44f5-a747-b9b37b16a683', 'לחבר רק לאחר זמן מסוים מתחילת ההחייאה, לא מיד', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1d78ab8c-d1d4-43a9-998b-f9acaa31ac55', '2a56d22e-fd15-44f5-a747-b9b37b16a683', 'לחבר מיידית עם התחלת ההחייאה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ff16ece0-e286-4e39-9561-33d5d84e13be', '2a56d22e-fd15-44f5-a747-b9b37b16a683', 'לא להשתמש בלוקאס כלל', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('60ea726c-b976-40b5-b1d4-227e09844c68', '2a56d22e-fd15-44f5-a747-b9b37b16a683', 'להשתמש רק בחולים מעל גיל 65', false, 4, NOW());


-- Question 383: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '6366c309-31bb-49c9-8443-5c19ea79afcb',
    'מהי המטרה של ההחייאה לפי פרוטוקולים עדכניים?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'המטרה של ההחייאה היא שחרור מבית החולים ללא נזק נוירולוגי משמעותי, לא רק החזרת דופק.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9a38ca93-afcd-4099-9418-dfa31708aa15', '6366c309-31bb-49c9-8443-5c19ea79afcb', 'שחרור מבית חולים ללא נזק נוירולוגי משמעותי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3e25d047-2624-4704-aa7c-cd057561037a', '6366c309-31bb-49c9-8443-5c19ea79afcb', 'החזרת דופק בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f3ff214e-a7e4-44fe-ba40-ceb658e9f820', '6366c309-31bb-49c9-8443-5c19ea79afcb', 'שחרור מבית חולים בכל מצב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b2d4d310-7a6a-42f1-af8c-d933ee579656', '6366c309-31bb-49c9-8443-5c19ea79afcb', 'מניעת דום לב בעתיד', false, 4, NOW());


-- Question 384: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '9f275a0c-4c0c-4e0c-94ce-309157b6af2e',
    'מהו פרוטוקול NCT?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'NCT (Narrow Complex Tachycardia) הוא פרוטוקול לטיפול בטכיקרדיה עם קומפלקס צר, לרוב ממוצא על-חדרי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c5b60bdc-d044-4dad-a47c-013f3fd8ee9a', '9f275a0c-4c0c-4e0c-94ce-309157b6af2e', 'פרוטוקול לטיפול בטכיקרדיה עם קומפלקס צר', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a63d876e-fa6a-44b3-af2e-273796d681af', '9f275a0c-4c0c-4e0c-94ce-309157b6af2e', 'פרוטוקול לטיפול בטכיקרדיה עם קומפלקס רחב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5fb48a38-9095-4236-9a35-df39d2589ae5', '9f275a0c-4c0c-4e0c-94ce-309157b6af2e', 'פרוטוקול לטיפול בברדיקרדיה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2b541776-1b8e-4ebe-9072-60735f5f3e04', '9f275a0c-4c0c-4e0c-94ce-309157b6af2e', 'פרוטוקול לטיפול בדום לב', false, 4, NOW());


-- Question 385: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd7a0e402-66ca-4f76-9a4e-3fae95cb76cd',
    'מהו פרוטוקול WCT?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'WCT (Wide Complex Tachycardia) הוא פרוטוקול לטיפול בטכיקרדיה עם קומפלקס רחב, חשד לקצב חדרי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7a6bd1a3-1c34-473a-b1e2-caf7bf8554d5', 'd7a0e402-66ca-4f76-9a4e-3fae95cb76cd', 'פרוטוקול לטיפול בטכיקרדיה עם קומפלקס רחב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cfd14641-9575-4c87-8a25-77640da0c42d', 'd7a0e402-66ca-4f76-9a4e-3fae95cb76cd', 'פרוטוקול לטיפול בטכיקרדיה עם קומפלקס צר', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('438f9e87-df7c-462c-92af-16cb368bea44', 'd7a0e402-66ca-4f76-9a4e-3fae95cb76cd', 'פרוטוקול לטיפול באסיסטולה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c34c5cc6-5be8-454c-88ab-b2ccbd3cd966', 'd7a0e402-66ca-4f76-9a4e-3fae95cb76cd', 'פרוטוקול לטיפול בפרפור עליות', false, 4, NOW());


-- Question 386: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '77686918-e5c4-4117-993c-82f011ecb831',
    'מהי ההנחיה בפרוטוקול ACS לגבי LBBB חדש?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'LBBB (חסם צרור שמאלי) חדש יכול להחקות STEMI ולכן מטופל באותה רמת דחיפות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('039cd48d-0367-463d-867b-3d3c7f81c3b7', '77686918-e5c4-4117-993c-82f011ecb831', 'LBBB חדש מטופל כמו STEMI', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('21786f37-a579-4c57-a1c8-e419691606e1', '77686918-e5c4-4117-993c-82f011ecb831', 'LBBB חדש אינו מצריך טיפול דחוף', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('534ceb5f-c2f4-416a-8cea-0624ea806391', '77686918-e5c4-4117-993c-82f011ecb831', 'LBBB חדש מטופל כמו NSTEMI', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('14065807-b18d-4744-939f-cbf07185284f', '77686918-e5c4-4117-993c-82f011ecb831', 'LBBB חדש דורש רק מעקב', false, 4, NOW());


-- Question 387: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '6ee66790-537f-42da-855e-346f1bd47b66',
    'מהי ההנחיה לזיהוי דום לב בטלפון לפי פרוטוקולים עדכניים?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'מ-2015 נכללו הנחיות Class 1 לזיהוי דום לב בטלפון וביצוע החייאה טלפונית, המשפרים משמעותית הישרדות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3674cbd0-5784-4b7a-be8b-c2f0c2ae28f3', '6ee66790-537f-42da-855e-346f1bd47b66', 'זיהוי מהיר וביצוע החייאה טלפונית משפרים את ההישרדות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7c94de69-7e7e-454e-a41d-44c295702c08', '6ee66790-537f-42da-855e-346f1bd47b66', 'אין צורך בזיהוי טלפוני', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b8da1bc4-60c0-44ed-a7bb-4fda537c6b03', '6ee66790-537f-42da-855e-346f1bd47b66', 'זיהוי טלפוני רק במקרים ברורים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('95f61e2b-df33-4042-9c85-acb7f5742e91', '6ee66790-537f-42da-855e-346f1bd47b66', 'החייאה טלפונית מסוכנת', false, 4, NOW());


-- Question 388: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'b1296a01-1ad1-4c21-b98f-d3b7324efa49',
    'מהי ההנחיה בפרוטוקול החייאה לגבי מתן תרופות?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'במתן תרופות בדום לב יש לתת עם 20cc סליין ולהרים את הגפה למשך 10-20 שניות להבטחת הגעה לזרם הדם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('377270b1-8fd8-43f9-97a5-7d6bdb6918e5', 'b1296a01-1ad1-4c21-b98f-d3b7324efa49', 'מתן תרופות עם 20cc סליין והרמת הגפה למשך 10-20 שניות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b6e3b660-e4af-4945-acb4-39588949e28b', 'b1296a01-1ad1-4c21-b98f-d3b7324efa49', 'מתן תרופות ללא סליין נוסף', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('080d3590-37ac-488d-8916-558e965797fe', 'b1296a01-1ad1-4c21-b98f-d3b7324efa49', 'מתן תרופות רק דרך טובוס', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('110db7ec-52ef-42b3-b5bf-90e77432fd70', 'b1296a01-1ad1-4c21-b98f-d3b7324efa49', 'אין צורך בהרמת גפה', false, 4, NOW());


-- Question 389: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '2f295f1a-8f95-48f6-8e27-78ec408a0f15',
    'מהי משמעות ציון CPC 3-5 לאחר החייאה?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'CPC הוא בדיקה נוירולוגית לאחר החייאה, כאשר 1 תקין, 2 בעיה קטנה, ו-3-5 מצב לא טוב שנחשב כהחייאה לא מוצלחת.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5ab7a74a-c542-4add-9b5e-ae864dfd8cde', '2f295f1a-8f95-48f6-8e27-78ec408a0f15', 'מצב נוירולוגי לא טוב, החייאה לא מוצלחת', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4426cb49-eebe-41ed-80f6-71b11115c367', '2f295f1a-8f95-48f6-8e27-78ec408a0f15', 'מצב נוירולוגי תקין', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('96eeb9d6-1477-47a9-82bd-756f01dc9fc5', '2f295f1a-8f95-48f6-8e27-78ec408a0f15', 'בעיה נוירולוגית קטנה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c09d4b64-4d32-496d-b913-fb6337dc2fa4', '2f295f1a-8f95-48f6-8e27-78ec408a0f15', 'החייאה מוצלחת', false, 4, NOW());


-- Question 390: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '22bb2b87-c25d-4e93-81fb-a2f88533cccc',
    'מהי ההנחיה בפרוטוקול אסטמה לגבי מתן אינהלציה חוזרת?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'לפי הפרוטוקול, רק אינהלציה (ונטולין ואטרוונט) ניתנת יותר מפעם אחת באסטמה, תרופות אחרות רק פעם אחת.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('503267b2-023c-4ef3-b93d-f7a63f97ab8a', '22bb2b87-c25d-4e93-81fb-a2f88533cccc', 'רק אינהלציה ניתנת יותר מפעם אחת בפרוטוקול אסטמה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ce3f38c6-9a4a-4330-ad3d-833468b34470', '22bb2b87-c25d-4e93-81fb-a2f88533cccc', 'אין להשתמש באינהלציה יותר מפעם אחת', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ae391d1e-08f1-4987-abeb-04a54935a21b', '22bb2b87-c25d-4e93-81fb-a2f88533cccc', 'כל תרופה ניתנת יותר מפעם אחת', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c07f5df1-d1cc-42cb-bd42-18a950cc581a', '22bb2b87-c25d-4e93-81fb-a2f88533cccc', 'רק סטרואידים ניתנים יותר מפעם אחת', false, 4, NOW());


-- Question 391: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c8659f91-53fd-4ae9-9a38-1b1482289176',
    'מהו פרוטוקול החמרה ב-COPD?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'פרוטוקול זה מיועד לטיפול בהחמרה ב-COPD עם אינהלציות, CPAP והימנעות מאינטובציה ככל הניתן.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('525b5916-1c97-4557-b91e-982cb283da14', 'c8659f91-53fd-4ae9-9a38-1b1482289176', 'פרוטוקול לטיפול בהחמרה במחלת ריאה חסימתית כרונית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('be213e34-963f-4944-b0d4-fd40e1d231df', 'c8659f91-53fd-4ae9-9a38-1b1482289176', 'פרוטוקול לטיפול באסטמה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ada7c037-0432-4aef-8345-7bed57c6b87a', 'c8659f91-53fd-4ae9-9a38-1b1482289176', 'פרוטוקול לטיפול בבצקת ריאות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('64dcb36c-66bf-4266-8850-7b63f2dfdb2a', 'c8659f91-53fd-4ae9-9a38-1b1482289176', 'פרוטוקול לטיפול בדלקת ריאות', false, 4, NOW());


-- Question 392: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'b81e6c9b-c382-4b45-bcba-ee824a11524f',
    'מהי ההנחיה בפרוטוקול בצקת ריאות לגבי שימוש ב-CPAP?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'CPAP הוא טיפול מרכזי בפרוטוקול בצקת ריאות, יחד עם ניטרטים ודיאורטיקה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('71323cdf-c2f2-4519-904e-0539bf0dd9ee', 'b81e6c9b-c382-4b45-bcba-ee824a11524f', 'CPAP הוא טיפול קו ראשון בבצקת ריאות קרדיוגנית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f63946fb-5a9a-4f71-a325-2dd25f9727dc', 'b81e6c9b-c382-4b45-bcba-ee824a11524f', 'CPAP ניתן רק אחרי כישלון טיפול תרופתי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('12697a70-08b7-4204-b33c-ea13a1143b9a', 'b81e6c9b-c382-4b45-bcba-ee824a11524f', 'CPAP אסור בבצקת ריאות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d7321ace-57eb-46d2-8801-dbb30e4dbe85', 'b81e6c9b-c382-4b45-bcba-ee824a11524f', 'CPAP ניתן רק במצבי דום לב', false, 4, NOW());


-- Question 393: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ba2f689a-f6b9-4a6f-b2bd-b002272219e5',
    'מהי ההנחיה בפרוטוקול דום לב באסטמה?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'בפרוטוקול דום לב יש הנחיות ברורות ומיוחדות להחייאה באסטמה בגלל הפיזיולוגיה המיוחדת.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2a7cb95c-d2ed-4e0a-b339-fbc79b740bde', 'ba2f689a-f6b9-4a6f-b2bd-b002272219e5', 'יש הנחיות ברורות להחייאה באסטמה בפרוטוקול דום לב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a2dcaf10-8f22-45fc-b50c-cf073a4d7bc6', 'ba2f689a-f6b9-4a6f-b2bd-b002272219e5', 'אסור לבצע החייאה באסטמה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('18074353-4819-4aae-94b6-d81d5eb53e82', 'ba2f689a-f6b9-4a6f-b2bd-b002272219e5', 'החייאה באסטמה זהה לכל דום לב אחר', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0e122186-45ca-4d3e-a43d-7ec2f795347a', 'ba2f689a-f6b9-4a6f-b2bd-b002272219e5', 'אין הנחיות ספציפיות', false, 4, NOW());


-- Question 394: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '03efb776-a2ca-462c-8d35-d87f3042b44e',
    'מהי ההנחיה לגבי זמן התחלת עיסויים לאחר זיהוי דום לב?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'זיהוי מהיר של דום לב והתחלת עיסויים תוך מקסימום 10 שניות הוא קריטי להצלחת ההחייאה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('43167d04-626d-4778-91eb-8586a27e8aec', '03efb776-a2ca-462c-8d35-d87f3042b44e', 'התחלת עיסויים תוך מקסימום 10 שניות מזיהוי דום לב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8b1a6cad-675b-4d83-9cc1-7d9d835de72c', '03efb776-a2ca-462c-8d35-d87f3042b44e', 'התחלת עיסויים תוך 30 שניות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d229e219-e8e4-4590-ad99-9d86e486158d', '03efb776-a2ca-462c-8d35-d87f3042b44e', 'אין מגבלת זמן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e9e09fc7-93c8-47c5-a6f6-bbe7cf00a335', '03efb776-a2ca-462c-8d35-d87f3042b44e', 'התחלת עיסויים תוך דקה', false, 4, NOW());


-- Question 395: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'fee4942f-d153-46fc-a409-96ac54124214',
    'מהי ההנחיה בפרוטוקול פרכוסים לגבי בדיקת גלוקוז?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'בדיקת גלוקוז היא חלק חובה מפרוטוקול פרכוסים כי היפוגליקמיה יכולה לגרום לפרכוסים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2623117c-1334-44bc-99df-57a35289971b', 'fee4942f-d153-46fc-a409-96ac54124214', 'בדיקת גלוקוז היא חובה בכל פרכוס', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('321232de-65da-48b5-94b5-68f76dd26b78', 'fee4942f-d153-46fc-a409-96ac54124214', 'בדיקת גלוקוז רק אם החולה סוכרתי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('263270e5-8bb6-45fc-b4e0-369401656851', 'fee4942f-d153-46fc-a409-96ac54124214', 'אין צורך בבדיקת גלוקוז', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('496a8bab-0556-41b2-8a0b-acd61f642e5d', 'fee4942f-d153-46fc-a409-96ac54124214', 'בדיקת גלוקוז רק אחרי מתן תרופות', false, 4, NOW());


-- Question 396: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '41433a47-f7ae-4ab1-a2f2-84b94a02e089',
    'מהי ההנחיה לגבי מתן ביקרבונט בהחייאה?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'בעבר נהגו לתת ביקרבונט בכל החייאה, אך כיום ההנחיה היא לא לתת אלא במקרים ספציפיים עם התוויות ברורות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('463285b3-8a4a-4094-b326-2223fafc6fd9', '41433a47-f7ae-4ab1-a2f2-84b94a02e089', 'לא לתת ביקרבונט בכל החייאה אלא אם יש התוויות ספציפיות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b5dbb154-c6b3-4c61-918d-81133ce6d4d6', '41433a47-f7ae-4ab1-a2f2-84b94a02e089', 'לתת ביקרבונט בכל החייאה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d2d3d8a3-2497-408a-88d1-e0e1b23283f9', '41433a47-f7ae-4ab1-a2f2-84b94a02e089', 'לתת ביקרבונט רק בדקות הראשונות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9b174734-2a80-4aaf-8eb4-0ef7a6bec742', '41433a47-f7ae-4ab1-a2f2-84b94a02e089', 'לתת ביקרבונט רק ב-VF', false, 4, NOW());


-- Question 397: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'f80d44b7-a2ae-4fa1-88dd-83f44a269443',
    'מהו פרוטוקול טכיאריתמיה?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'פרוטוקול טכיאריתמיה הוא פרוטוקול כללי המכוון לטיפול בהפרעות קצב מהירות, כולל NCT ו-WCT.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('36f0739d-6127-44b1-b212-469b4d167191', 'f80d44b7-a2ae-4fa1-88dd-83f44a269443', 'פרוטוקול כללי לטיפול בהפרעות קצב מהירות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('16abde8c-76e8-4d1b-9817-f4780041f117', 'f80d44b7-a2ae-4fa1-88dd-83f44a269443', 'פרוטוקול לטיפול בברדיקרדיה בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b37f6157-8d3b-43b9-a546-d4009593edd1', 'f80d44b7-a2ae-4fa1-88dd-83f44a269443', 'פרוטוקול לטיפול בדום לב בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d3fa05b2-33cf-4abe-a856-c8eadaea5920', 'f80d44b7-a2ae-4fa1-88dd-83f44a269443', 'פרוטוקול לטיפול בפרכוסים', false, 4, NOW());


-- Question 398: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '95076abf-9ab2-4bdb-99f8-4669a51d5e9e',
    'מהו פרוטוקול טיפול בכאב?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'פרוטוקול טיפול בכאב כולל מתן משככי כאבים אופיאטיים (פנטניל, מורפיום) וקטמין לשיכוך כאב.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1a0dd912-28ac-44eb-9fbf-11b189e666dc', '95076abf-9ab2-4bdb-99f8-4669a51d5e9e', 'פרוטוקול למתן משככי כאבים אופיאטיים וקטמין', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e68f0123-63ca-476f-a552-a7b45395f505', '95076abf-9ab2-4bdb-99f8-4669a51d5e9e', 'פרוטוקול לטיפול בכאב ראש בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a2db7e79-c92d-4f4d-a004-4d058fe5e329', '95076abf-9ab2-4bdb-99f8-4669a51d5e9e', 'פרוטוקול לטיפול בטראומה בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f969a435-c3e1-475b-b9f9-06d86f7b1c02', '95076abf-9ab2-4bdb-99f8-4669a51d5e9e', 'פרוטוקול שאינו כולל אופיאטים', false, 4, NOW());


-- Question 399: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'bc43dd59-6520-4cd7-b113-1e8f29de0cb2',
    'מהי ההנחיה בפרוטוקול COPD לגבי אינטובציה?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'בפרוטוקול COPD יש הנחיה להימנע ככל הניתן מאינטובציה והנשמה מלאכותית, להעדיף CPAP ואינהלציות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cafa92f5-1ee2-4e34-a203-54c368378e26', 'bc43dd59-6520-4cd7-b113-1e8f29de0cb2', 'הימנעות ככל הניתן מאינטובציה והנשמה מלאכותית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a79b4028-6c31-45cb-b6f2-c25a71f17e80', 'bc43dd59-6520-4cd7-b113-1e8f29de0cb2', 'אינטובציה מיידית בכל החמרה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ec6c4b2d-2581-45cb-8e4f-d10ace823722', 'bc43dd59-6520-4cd7-b113-1e8f29de0cb2', 'אינטובציה רק עם CPAP', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9a86f2e0-efb3-4463-bbed-1ed91b75625d', 'bc43dd59-6520-4cd7-b113-1e8f29de0cb2', 'אינטובציה אסורה לחלוטין', false, 4, NOW());


-- Question 400: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'b024f7bb-d75b-41cb-9ed6-f804496f3774',
    'מהי הסיבה שקטמין מועדף בהרדמה לאינטובציה בחולי COPD ואסטמה?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'קטמין מרחיב סימפונות ולכן הוא תרופת בחירה בהרדמה לאינטובציה בחולי COPD ואסטמה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e9804377-c7b7-45c1-a8d2-93a3cbc0463b', 'b024f7bb-d75b-41cb-9ed6-f804496f3774', 'קטמין מרחיב סימפונות ולכן מצוין בחולי COPD/אסטמה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7d28e338-e4cb-460d-843b-7468c7c35f08', 'b024f7bb-d75b-41cb-9ed6-f804496f3774', 'קטמין מכווץ סימפונות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a519b4cc-4163-4353-8e94-fe836c34bb22', 'b024f7bb-d75b-41cb-9ed6-f804496f3774', 'קטמין זול יותר', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('db329c66-82db-4495-8435-d8a34e2789e4', 'b024f7bb-d75b-41cb-9ed6-f804496f3774', 'קטמין נספג מהר יותר', false, 4, NOW());


-- Question 401: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '253f218d-89aa-4262-bf41-ce154dd277bf',
    'מהו פרוטוקול נפגע טראומה?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'פרוטוקול נפגע טראומה מכתיב טיפול שיטתי בחבלה לפי סדר עדיפויות - נתיב אוויר, נשימה, מחזור דם ועוד.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bd385295-ce2e-460f-a47c-7b91c4736fa5', '253f218d-89aa-4262-bf41-ce154dd277bf', 'פרוטוקול לטיפול בחבלה לפי סדר עדיפויות ABCDE', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('903047f6-6998-40af-a24a-75a994abb8fd', '253f218d-89aa-4262-bf41-ce154dd277bf', 'פרוטוקול לטיפול בשבץ', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9b438d6b-0f45-466a-bdff-7f54405c75af', '253f218d-89aa-4262-bf41-ce154dd277bf', 'פרוטוקול לטיפול בכוויות בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('844da54f-dd8e-46db-88d9-b55cc10d13e7', '253f218d-89aa-4262-bf41-ce154dd277bf', 'פרוטוקול לטיפול בדימום פנימי בלבד', false, 4, NOW());


-- Question 402: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'bc701df8-000a-4998-8aa4-f196f4c0b7a3',
    'מהי ההנחיה בפרוטוקול ACS לגבי מתן אספירין?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'מתן אספירין (300-325mg) הוא חלק חיוני מטיפול מיידי בכל חשד ל-ACS למניעת הרחבת הקריש.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('397dad3f-33af-47d6-9885-337c6dce1b1c', 'bc701df8-000a-4998-8aa4-f196f4c0b7a3', 'מתן אספירין הוא חובה בכל מקרה של חשד ל-ACS', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('138c1218-2a23-42ec-bc49-6f44d32809b7', 'bc701df8-000a-4998-8aa4-f196f4c0b7a3', 'אספירין רק אחרי אישור ECG', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c4e11ad2-dd98-4e27-b67e-b2df8b1cbd69', 'bc701df8-000a-4998-8aa4-f196f4c0b7a3', 'אספירין רק ב-STEMI', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8c67a7e8-6ee4-47f2-98b9-9ead5bfaa6a8', 'bc701df8-000a-4998-8aa4-f196f4c0b7a3', 'אין למתן אספירין בשטח', false, 4, NOW());


-- Question 403: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c15705fc-20b5-410b-ae7d-412437cf1abc',
    'מהי ההנחיה לגבי שימוש ב-EtCO2 בהחייאה?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'EtCO2 מסייע בהחלטה על הפסקת החייאה (ערכים 10-12), וניטור איכות העיסויים (15-20 הוא טוב).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9a7afad9-a375-471a-9458-1bf6b81a3135', 'c15705fc-20b5-410b-ae7d-412437cf1abc', 'EtCO2 מסייע בהחלטה על הפסקת החייאה וניטור איכותה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4993d53b-ae2b-40c5-b62d-09f2941cdb91', 'c15705fc-20b5-410b-ae7d-412437cf1abc', 'EtCO2 לא שימושי בהחייאה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ba613969-81f8-459f-9e3c-6640fd1f5e37', 'c15705fc-20b5-410b-ae7d-412437cf1abc', 'EtCO2 רק לאישור מיקום טובוס', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('06b78615-e963-4b89-970d-2510d87c5ad3', 'c15705fc-20b5-410b-ae7d-412437cf1abc', 'EtCO2 אסור בהחייאה', false, 4, NOW());


-- Question 404: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '3d6a3c95-0421-459c-a9f0-b133efc8bce8',
    'מהי ההנחיה בפרוטוקול דום לב לגבי קצב והנפח של ההנשמות?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'קצב ונפח ההנשמות חשובים בפרוטוקול דום לב למניעת היפרוונטילציה שפוגעת ב-Venous Return.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('89e01284-c5f1-4809-9384-7ededaa13fbd', '3d6a3c95-0421-459c-a9f0-b133efc8bce8', 'קצב ונפח מבוקרים כדי למנוע היפרוונטילציה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('438cb5ca-5382-4b79-8d54-80b6553d09f0', '3d6a3c95-0421-459c-a9f0-b133efc8bce8', 'הנשמות רגילות ככל הניתן', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bd0cc011-45a8-4124-8cf3-18edb65d2328', '3d6a3c95-0421-459c-a9f0-b133efc8bce8', 'הנשמות בלחץ מקסימלי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9d2bae69-9e2f-4f57-836a-a7051f395b2b', '3d6a3c95-0421-459c-a9f0-b133efc8bce8', 'אין חשיבות לקצב ההנשמות', false, 4, NOW());


-- Question 405: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'adeeee44-99e2-4515-9220-1624fa8e27a0',
    'מהו פרוטוקול שאיפת עשן?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'פרוטוקול שאיפת עשן מיועד לטיפול בפגיעות שאיפה כתוצאה משריפות, כולל הרעלת CO ופגיעה בדרכי נשימה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('216a069f-78a0-457b-8a13-88d2b97c880b', 'adeeee44-99e2-4515-9220-1624fa8e27a0', 'פרוטוקול לטיפול בפגיעת שאיפה בשריפות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5a81f9e3-408c-4a11-b8f4-12ac6ec651a4', 'adeeee44-99e2-4515-9220-1624fa8e27a0', 'פרוטוקול לטיפול באסטמה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2641fc39-b8b4-47eb-ba2b-7ad055fbf95d', 'adeeee44-99e2-4515-9220-1624fa8e27a0', 'פרוטוקול לטיפול בכוויות עור', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7d66bdd0-39c3-4369-b075-89672ee0ff8e', 'adeeee44-99e2-4515-9220-1624fa8e27a0', 'פרוטוקול לטיפול בהרעלת פחמן חד חמצני בלבד', false, 4, NOW());


-- Question 406: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '7f0a4483-59b2-4af3-8e02-0c1ae1c952c1',
    'מהי ההנחיה בפרוטוקול בצקת ריאות לגבי מתן ניטרטים?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'מתן ניטרטים בבצקת ריאות הוא ''שקילה'' תלוי לחץ דם, ומטרתם הורדת Preload ו-Afterload.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c12b11e3-5e39-495b-b4fc-511ec5bd0898', '7f0a4483-59b2-4af3-8e02-0c1ae1c952c1', 'ניטרטים להורדת Preload ו-Afterload, שקילה לפי לחץ דם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5d9f9287-38c6-4050-a4fa-4399c0c25c8b', '7f0a4483-59b2-4af3-8e02-0c1ae1c952c1', 'ניטרטים חובה בכל בצקת', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2346fb4e-42a3-463b-a8db-3f3a3536a6b8', '7f0a4483-59b2-4af3-8e02-0c1ae1c952c1', 'ניטרטים אסורים בבצקת ריאות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('50c36987-87a1-40c8-b4b1-458f7ae6729e', '7f0a4483-59b2-4af3-8e02-0c1ae1c952c1', 'ניטרטים רק עם לחץ דם גבוה מ-180', false, 4, NOW());


-- Question 407: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'b0b13407-f41f-417f-a516-c529d1273f9b',
    'מהי ההנחיה בפרוטוקול ARDS?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'ל-ARDS אין פרוטוקול מסודר בספר, ולא משתמשים בפרוטוקול בצקת כי זו בצקת לא-קרדיאלית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('868c0ad9-8e3c-4d80-a85f-433d61da0c0e', 'b0b13407-f41f-417f-a516-c529d1273f9b', 'אין פרוטוקול מסודר ל-ARDS, מטפלים לפי ABC ולא פרוטוקול בצקת', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('05748026-50fd-4c85-bc50-a953b87c3c02', 'b0b13407-f41f-417f-a516-c529d1273f9b', 'משתמשים בפרוטוקול בצקת ריאות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('aa387f5e-819f-40ae-9a96-d16c87f27248', 'b0b13407-f41f-417f-a516-c529d1273f9b', 'משתמשים בפרוטוקול אסטמה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('00bfd1dd-3123-4bda-baf1-61060393f6b6', 'b0b13407-f41f-417f-a516-c529d1273f9b', 'אין צורך בטיפול ב-ARDS', false, 4, NOW());


-- Question 408: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c30cc827-854a-4587-bed4-cb6ee4dc321a',
    'מהי ההנחיה בפרוטוקולים לגבי תיעוד?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'תיעוד מדויק של כל פעולה, זמנים, ממצאים ותרופות חיוני לאיכות הטיפול ולמעקב.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c44c0103-36ac-4330-9a9d-0c42d8089e5f', 'c30cc827-854a-4587-bed4-cb6ee4dc321a', 'תיעוד מדויק של כל פעולה וזמנים חיוני לאיכות הטיפול', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b0cdd88e-467b-46cd-86db-548c1c8e4425', 'c30cc827-854a-4587-bed4-cb6ee4dc321a', 'תיעוד רק בסוף הטיפול', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8a41658e-4a44-4677-8b87-b07dc4353986', 'c30cc827-854a-4587-bed4-cb6ee4dc321a', 'אין חובת תיעוד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('220ceb68-c348-4da6-b807-a2e7101a86f8', 'c30cc827-854a-4587-bed4-cb6ee4dc321a', 'תיעוד רק של תרופות', false, 4, NOW());


-- Question 409: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '90f3c835-fea9-402b-b30b-03d96b081ae4',
    'מהו פרוטוקול TPCA?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'פרוטוקול TPCA מיועד לזיהוי מהיר של STEMI ופינוי ישיר למעבדת צנתור לטיפול דחוף.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('38b987b3-2936-4e19-b6f0-3614891cd9eb', '90f3c835-fea9-402b-b30b-03d96b081ae4', 'פרוטוקול לזיהוי וטיפול בחולי STEMI לקטטר דחוף', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8adf61ac-c423-40b1-aa16-8ef1806658b1', '90f3c835-fea9-402b-b30b-03d96b081ae4', 'פרוטוקול לטיפול בשבץ', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a8df881b-6724-485d-a559-45c0c41fb4a2', '90f3c835-fea9-402b-b30b-03d96b081ae4', 'פרוטוקול לטיפול בטראומה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1c1ae342-3898-45ed-b94e-23f49f1d4298', '90f3c835-fea9-402b-b30b-03d96b081ae4', 'פרוטוקול לטיפול בסוכרת', false, 4, NOW());


-- Question 410: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ddf06b29-29fb-4fa8-96a3-66af5ebe8f28',
    'מהי הסיבה שאין תרופות שהוכחו כמשפרות תוצאות החייאה?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'מחקרים הראו שאין תרופות שהוכחו כמשפרות תוצאות החייאה, רק BLS איכותי משפר הישרדות באופן מובהק.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0a8bdabc-377e-4966-89bd-937d86a76f5c', 'ddf06b29-29fb-4fa8-96a3-66af5ebe8f28', 'לא נמצאו תרופות שמשפרות הישרדות, רק BLS משפר', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('815e59ba-1948-4076-97e7-10937c5a0611', 'ddf06b29-29fb-4fa8-96a3-66af5ebe8f28', 'התרופות לא נבדקו מספיק', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ab1dbc54-7827-43a8-84bb-4e75f8d6b9dd', 'ddf06b29-29fb-4fa8-96a3-66af5ebe8f28', 'כל התרופות משפרות הישרדות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b5ecb581-e245-4875-9528-f9f0209c6cf2', 'ddf06b29-29fb-4fa8-96a3-66af5ebe8f28', 'תרופות אסורות בהחייאה', false, 4, NOW());


-- Question 411: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '89fbd4ed-bdf6-417a-82be-a7e65203c6a3',
    'מהי ההנחיה בפרוטוקול דום לב לגבי FRV?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'FRV נותן לגוף מאגר של 10 דקות החייאה של עיסויים בלבד, ובלבד שהחולה לא היה בקוצר נשימה קודם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4df7dceb-1601-4aef-8267-d1ca19d20d75', '89fbd4ed-bdf6-417a-82be-a7e65203c6a3', 'FRV נותן 10 דקות החייאה של עיסויים בלבד בלי קוצר נשימה קודם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cc717e76-688b-4b76-affe-0e290e095f88', '89fbd4ed-bdf6-417a-82be-a7e65203c6a3', 'FRV לא רלוונטי להחייאה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6b115f76-a710-4a12-9ec1-56174fdb0c12', '89fbd4ed-bdf6-417a-82be-a7e65203c6a3', 'FRV רק לילדים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5fa59cba-ea78-4b3b-a3e8-b76861ea7ac9', '89fbd4ed-bdf6-417a-82be-a7e65203c6a3', 'FRV נותן 5 דקות עיסויים', false, 4, NOW());


-- Question 412: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '7f172bbe-6dc3-4f58-b64b-ed0bf6015487',
    'מהו פרוטוקול טיפול בנפגע מבעלי חיים?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'פרוטוקול זה מיועד לטיפול בפציעות כתוצאה מעקיצות ונשיכות של בעלי חיים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('aff244ac-7e19-42f0-8eca-eecbaad34554', '7f172bbe-6dc3-4f58-b64b-ed0bf6015487', 'פרוטוקול לטיפול בפציעות מעקיצות ונשיכות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3896b47d-b32a-410a-9d94-a309ab866f87', '7f172bbe-6dc3-4f58-b64b-ed0bf6015487', 'פרוטוקול לטיפול בבעלי חיים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('dc6cabea-e1a8-47ee-9c64-fb520f79702e', '7f172bbe-6dc3-4f58-b64b-ed0bf6015487', 'פרוטוקול לטיפול באלרגיות לבעלי חיים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('94836b15-d532-47c2-92a1-c96c6e4bd3e1', '7f172bbe-6dc3-4f58-b64b-ed0bf6015487', 'פרוטוקול לטיפול בזיהומים', false, 4, NOW());


-- Question 413: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1a23144f-8a37-4ffc-96d8-6c87a185e1a2',
    'מהי ההנחיה בפרוטוקולים לגבי שילוב פרוטוקולים?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'ישנו פרק ''שילוב פרוטוקולים'' המכיר בצורך לשלב מספר פרוטוקולים במצבים מורכבים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7d916167-d89b-4f00-8e8c-400bdf1a23c0', '1a23144f-8a37-4ffc-96d8-6c87a185e1a2', 'מותר ונדרש לשלב פרוטוקולים כשהמצב מורכב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3f327127-2b1d-4ae7-8c71-b75f12eabc3b', '1a23144f-8a37-4ffc-96d8-6c87a185e1a2', 'אסור לשלב פרוטוקולים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fa6f1663-92eb-467a-9998-5fb4d3584f3d', '1a23144f-8a37-4ffc-96d8-6c87a185e1a2', 'רק פרוטוקול אחד בכל פעם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e453f91c-c704-4b6f-a4f9-9af2e97b893b', '1a23144f-8a37-4ffc-96d8-6c87a185e1a2', 'שילוב פרוטוקולים רק באישור מוקד', false, 4, NOW());


-- Question 414: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1dfa610e-0b64-45e3-9a68-f69bc7b6046b',
    'מהי ההנחיה לגבי מתן אמיודרון לאחר ROSC?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'מנת אחזקה של אמיודרון (1mg/דקה) ניתנת אחרי ROSC רק אם ניתן אמיודרון במהלך ההחייאה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('75cbd12e-030a-4169-b2c6-fc2d87c415f2', '1dfa610e-0b64-45e3-9a68-f69bc7b6046b', 'מנת אחזקה של 1mg לדקה רק אם ניתן בהחייאה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0e6f6a80-c562-40e1-be8a-a138ae96be6c', '1dfa610e-0b64-45e3-9a68-f69bc7b6046b', 'מנת העמסה חדשה אחרי ROSC', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c3aba076-07d4-4148-8aba-033a77a730f3', '1dfa610e-0b64-45e3-9a68-f69bc7b6046b', 'אין למתן אמיודרון אחרי ROSC', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('13495f94-0ea6-40fd-abaa-af1d05958995', '1dfa610e-0b64-45e3-9a68-f69bc7b6046b', 'מנת אחזקה גם ללא מתן בהחייאה', false, 4, NOW());


-- Question 415: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c131a7ff-1893-481a-82ad-5ba3ba0c1260',
    'מהי ההנחיה בפרוטוקולים נשימתיים בילדים?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'ישנם פרוטוקולים נשימתיים ייעודיים לילדים המותאמים לגיל, משקל ופיזיולוגיה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5ab4daf6-6671-404f-b6a2-9176142557fe', 'c131a7ff-1893-481a-82ad-5ba3ba0c1260', 'ישנם פרוטוקולים נפרדים ומותאמים לילדים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('eea85f50-7810-4781-a140-e9681478a94d', 'c131a7ff-1893-481a-82ad-5ba3ba0c1260', 'משתמשים באותם פרוטוקולים כמו מבוגרים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e1f24a1e-e2e4-4239-9210-ee8dc0d41526', 'c131a7ff-1893-481a-82ad-5ba3ba0c1260', 'אין פרוטוקולים לילדים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4a587771-e0c2-4a48-91fb-ce1d3a02694b', 'c131a7ff-1893-481a-82ad-5ba3ba0c1260', 'פרוטוקולים לילדים רק במצבי חירום', false, 4, NOW());


-- Question 416: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a74b1bfd-5529-4a6c-aae0-5074064bc6c9',
    'מהי ההנחיה בפרוטוקולים לגבי פנייה למוקד הרפואי?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'במצבים לא שגרתיים, ללא פרוטוקול ברור או בספק, יש לפנות למוקד הרפואי לקבלת הנחיות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6206d094-d91b-4971-b7da-20ba51185f45', 'a74b1bfd-5529-4a6c-aae0-5074064bc6c9', 'יש לפנות למוקד במצבים לא שגרתיים או ללא פרוטוקול ברור', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('11f29694-d3e7-493a-95cf-c8e23d61a877', 'a74b1bfd-5529-4a6c-aae0-5074064bc6c9', 'לא צריך לפנות למוקד כלל', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e23a7b50-44c0-4156-8e51-7982ad0ac716', 'a74b1bfd-5529-4a6c-aae0-5074064bc6c9', 'לפנות למוקד בכל מקרה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('dd2bbcf4-c1b0-46ac-a435-25db3b136b41', 'a74b1bfd-5529-4a6c-aae0-5074064bc6c9', 'לפנות למוקד רק בדום לב', false, 4, NOW());


-- Question 417: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '55f15930-bf1e-4e8e-9387-e281656e2fc0',
    'מהי ההנחיה בפרוטוקול דום לב לגבי חמצת רספירטורית מול מטבולית?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'דום לב 10 דקות ללא החייאה גורם לחמצת רספירטורית (גם מטבולית אבל זו רק התחלה), צריך יותר זמן לחמצת מטבולית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7eaa2b11-fee7-4484-8e98-fbb439d2e362', '55f15930-bf1e-4e8e-9387-e281656e2fc0', 'דום לב 10 דקות ללא החייאה גורם לחמצת רספירטורית בעיקר', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6163b5a8-17c2-4148-bd4d-0be5c4b68d10', '55f15930-bf1e-4e8e-9387-e281656e2fc0', 'דום לב גורם מיד לחמצת מטבולית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3b95fbe7-8f1a-451a-8af7-e504ce30e871', '55f15930-bf1e-4e8e-9387-e281656e2fc0', 'אין הבדל בסוג החמצת', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4f7cbaee-cf74-48ed-9a85-4bf941d2a36a', '55f15930-bf1e-4e8e-9387-e281656e2fc0', 'חמצת מטבולית מופיעה לפני רספירטורית', false, 4, NOW());


-- Question 418: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1b5ec105-1ccd-4eea-8a64-dd40e5f67872',
    'מהי ההנחיה בפרוטוקול אסטמה לגבי מתן סולומדרול?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'לפי הפרוטוקול, מתן סולומדרול (סטרואיד) באסטמה הוא שקילה ואין חובה, תלוי בחומרת המצב.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5bc6e131-c3f2-4739-8d87-a58d562d3743', '1b5ec105-1ccd-4eea-8a64-dd40e5f67872', 'סולומדרול הוא שקילה ואין חובה למתן', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0cbaa515-8d43-48fc-b617-651aebdb49ce', '1b5ec105-1ccd-4eea-8a64-dd40e5f67872', 'סולומדרול חובה בכל אסטמה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e4564fb2-c866-4aa4-ae52-509b32fe51e5', '1b5ec105-1ccd-4eea-8a64-dd40e5f67872', 'סולומדרול אסור באסטמה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('dffd7166-8072-4cd1-bf38-5f55eb4115af', '1b5ec105-1ccd-4eea-8a64-dd40e5f67872', 'סולומדרול רק באסטמה חמורה', false, 4, NOW());


-- Question 419: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '228efdf6-ac12-4529-bf93-fbb8fafd6790',
    'מהי ההנחיה בפרוטוקולים לגבי הפרעות קצב בילדים?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'ישנם פרוטוקולים ייעודיים להפרעות קצב בילדים המותאמים לגיל, משקל ופיזיולוגיה הקרדיווסקולרית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0e69fd70-152d-4b3b-9cad-13ed06c511d6', '228efdf6-ac12-4529-bf93-fbb8fafd6790', 'ישנם פרוטוקולים ייעודיים להפרעות קצב בילדים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fef6e9e7-b137-493f-933c-78e61fdf76ca', '228efdf6-ac12-4529-bf93-fbb8fafd6790', 'משתמשים באותם פרוטוקולים כמו מבוגרים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('32e777d1-e230-408d-b304-f2448cf6575e', '228efdf6-ac12-4529-bf93-fbb8fafd6790', 'אין טיפול בהפרעות קצב בילדים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a4396997-ce84-4156-80d5-238511a6e09c', '228efdf6-ac12-4529-bf93-fbb8fafd6790', 'הפרעות קצב בילדים נדירות ואין להן פרוטוקול', false, 4, NOW());


-- Question 420: פרוטוקולים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1c423f02-5183-4d04-a31c-4ce185cfaab7',
    'מהי ההנחיה בפרוטוקול אי ביצוע/הפסקת החייאה?',
    (SELECT id FROM public.categories WHERE name = 'פרוטוקולים' LIMIT 1),
    'pending',
    'פרוטוקול אי ביצוע/הפסקת החייאה קובע קריטריונים ברורים מתי לא להתחיל או להפסיק החייאה בשטח.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bf1751fa-a7fa-4cb8-9232-13832e2c9af8', '1c423f02-5183-4d04-a31c-4ce185cfaab7', 'קיימים קריטריונים ברורים מתי לא להתחיל או להפסיק החייאה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('12d096f6-5154-4379-aba2-00ad76b9be88', '1c423f02-5183-4d04-a31c-4ce185cfaab7', 'תמיד צריך להתחיל החייאה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ea1be0c6-590b-4edd-87e7-d54812d72947', '1c423f02-5183-4d04-a31c-4ce185cfaab7', 'אסור להפסיק החייאה בשטח', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2b5183af-6179-4644-99f6-50bb83457894', '1c423f02-5183-4d04-a31c-4ce185cfaab7', 'ההחלטה תלויה רק בצוות', false, 4, NOW());


-- Question 421: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'e4679e5e-02dd-4e5d-831d-45062b062e56',
    'מהו תפקיד האלקטרוליטים בגוף?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'אלקטרוליטים (Electrolytes) הם מרכיבים אנ-אורגניים האחראיים על הפעילות הכימית והחשמלית בתאים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4e8fd7da-eb80-41b3-903b-5f9081fd1316', 'e4679e5e-02dd-4e5d-831d-45062b062e56', 'אחראיים על הפעילות הכימית והחשמלית בתאים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cf14ca5b-7816-4d4e-8b6f-0c9854a32293', 'e4679e5e-02dd-4e5d-831d-45062b062e56', 'אחראיים רק על איזון נוזלים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('97d0f06c-decf-4405-8a2a-76d87963146a', 'e4679e5e-02dd-4e5d-831d-45062b062e56', 'אחראיים רק על הולכה עצבית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('219d01f0-1ef3-4358-af1c-25922fcd838a', 'e4679e5e-02dd-4e5d-831d-45062b062e56', 'אחראיים רק על התכווצות שרירים', false, 4, NOW());


-- Question 422: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '057b4032-1135-4506-930d-b81fb4fc5bf0',
    'מהם האלקטרוליטים העיקריים בגוף?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'האלקטרוליטים העיקריים הם: K+, Mg2+, PO43-, Na+, Ca2+, Cl-.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('440d0d91-24f5-4a47-9859-44284b9282ca', '057b4032-1135-4506-930d-b81fb4fc5bf0', 'Potassium, Magnesium, Phosphate, Sodium, Calcium, Chloride', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('34af0afb-8b09-4ecc-92a4-0cb2e15e340f', '057b4032-1135-4506-930d-b81fb4fc5bf0', 'רק נתרן ואשלגן', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('42384be5-db58-4a89-806f-14fdf03d396b', '057b4032-1135-4506-930d-b81fb4fc5bf0', 'רק סידן ומגנזיום', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('777c329e-8844-4b62-bfd9-50c46288a64d', '057b4032-1135-4506-930d-b81fb4fc5bf0', 'רק כלוריד ופוספט', false, 4, NOW());


-- Question 423: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '6dda64bb-046c-42b5-8cad-9e9a15bf9252',
    'איזה אלקטרוליט הוא העיקרי במרווח הבין-תאי?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'נתרן (Na+) הוא יון חיובי עיקרי במרווח הבין-תאי ואחראי על איזון נוזלים ופעילות חשמלית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4796e4cd-0069-46fc-9d4f-7192649b798b', '6dda64bb-046c-42b5-8cad-9e9a15bf9252', 'נתרן (Sodium)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9d09a8d8-b5b4-451d-a07a-6aaab9f4e9bd', '6dda64bb-046c-42b5-8cad-9e9a15bf9252', 'אשלגן (Potassium)', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('671d88fd-1460-49c1-9eb0-4ad51bd181d1', '6dda64bb-046c-42b5-8cad-9e9a15bf9252', 'סידן (Calcium)', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('15f13568-06fd-477a-a994-ab47622beb9a', '6dda64bb-046c-42b5-8cad-9e9a15bf9252', 'מגנזיום (Magnesium)', false, 4, NOW());


-- Question 424: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'f0e5902f-c241-4a41-82a6-caa91f4ab5d3',
    'איפה נמצא ריכוז גבוה של אשלגן?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'אשלגן (K+) נמצא בריכוז גבוה בתוך התא, ובריכוז נמוך במרווח הבין-תאי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8e470aa3-194b-4988-a7d7-b51b3addd8c6', 'f0e5902f-c241-4a41-82a6-caa91f4ab5d3', 'בתוך התא', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e4c7997c-073f-4033-ba22-bb6f9a27b8b2', 'f0e5902f-c241-4a41-82a6-caa91f4ab5d3', 'מחוץ לתא', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('40cedda1-2e04-4aa1-865c-e2ed6ad07059', 'f0e5902f-c241-4a41-82a6-caa91f4ab5d3', 'בדם בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9f0ddb2a-6326-4d0c-83e2-92c84df19783', 'f0e5902f-c241-4a41-82a6-caa91f4ab5d3', 'בשתן', false, 4, NOW());


-- Question 425: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '3c9f8a86-b352-407d-9d21-99560f5929db',
    'מהו Ionized Calcium?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'Ionized Calcium (Ca++) הוא הצורה הפעילה של הסידן בגוף, חשוב להתכווצות שרירים והולכה עצבית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('67ca744f-3db9-4d0f-b59e-6426a5afd4d4', '3c9f8a86-b352-407d-9d21-99560f5929db', 'סידן מיונן (Ca++) הפעיל בגוף', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d19d111a-ec1b-4d7e-8328-5d6bc50cd351', '3c9f8a86-b352-407d-9d21-99560f5929db', 'סידן הקשור לחלבון', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ee5f978d-039b-475d-ab30-4f8c2d8c6e82', '3c9f8a86-b352-407d-9d21-99560f5929db', 'סידן באגירה בעצמות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('78b147f3-57a1-48e1-819a-6b43deca52fd', '3c9f8a86-b352-407d-9d21-99560f5929db', 'תוסף סידן', false, 4, NOW());


-- Question 426: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '9a97bf67-826e-439f-8b9a-e7d79057a965',
    'מהו תפקיד משאבת נתרן-אשלגן?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'משאבת Na+K+ATPase מוציאה 3 נתרן החוצה ומכניסה 2 אשלגן פנימה תוך שימוש באנרגיה מ-ATP.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3c63bb3c-f275-408b-8549-12bbfd02b912', '9a97bf67-826e-439f-8b9a-e7d79057a965', 'להוציא 3 נתרן החוצה ולהכניס 2 אשלגן פנימה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('38ce8cd4-430b-4040-89f3-5e3796c8ad96', '9a97bf67-826e-439f-8b9a-e7d79057a965', 'להכניס 3 נתרן פנימה ולהוציא 2 אשלגן החוצה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('eea2d17d-6449-4ee6-bc88-92a170b2eba5', '9a97bf67-826e-439f-8b9a-e7d79057a965', 'להעביר רק נתרן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ffa5015a-276a-4ef5-90a9-adbbb95317fe', '9a97bf67-826e-439f-8b9a-e7d79057a965', 'להעביר רק אשלגן', false, 4, NOW());


-- Question 427: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '96b128fe-6b39-4936-bc20-7ae6fe8067bd',
    'מהו תפקיד הסידן בתא שריר הלב?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'סידן נכנס לתא בשלב הפלאטו ב-Action Potential וגורם להתכווצות מכנית של שריר הלב.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('06e6bc8a-8e9f-4955-8846-d859e971612f', '96b128fe-6b39-4936-bc20-7ae6fe8067bd', 'גורם להתכווצות מכנית של השריר', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3438aa32-19ab-4a0f-8cc3-3175d086c4c6', '96b128fe-6b39-4936-bc20-7ae6fe8067bd', 'גורם להרפיית השריר', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f29b662b-bba7-4ce4-8ae2-acb6adf8a72c', '96b128fe-6b39-4936-bc20-7ae6fe8067bd', 'מעכב הולכה חשמלית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('01dd4f20-5206-4cf7-a8e1-386f3287e783', '96b128fe-6b39-4936-bc20-7ae6fe8067bd', 'מעלה את פוטנציאל המנוחה', false, 4, NOW());


-- Question 428: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'dec33a74-b8ce-4378-bca0-d8ff06aaca74',
    'איזה אלקטרוליט מעורב בפוטנציאל הפעולה של תאי קוצב?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'בתאי קוצב, תעלות סידן איטיות ומהירות נפתחות וסידן נכנס לתא, גורם לדפולריזציה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e4f36954-73fe-4b0b-ac9a-140e3fec23eb', 'dec33a74-b8ce-4378-bca0-d8ff06aaca74', 'סידן', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2a541127-bba0-4f65-93bd-977e565ffaac', 'dec33a74-b8ce-4378-bca0-d8ff06aaca74', 'כלור', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('393b92bc-6683-4140-a2bc-66173209b08a', 'dec33a74-b8ce-4378-bca0-d8ff06aaca74', 'פוספט', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('63e02c48-8cde-4c29-8a39-f881d39739f4', 'dec33a74-b8ce-4378-bca0-d8ff06aaca74', 'מגנזיום', false, 4, NOW());


-- Question 429: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '939020fb-985a-4c43-a8a2-06797c026880',
    'מה קורה כאשר Sodium עובר מהתסנין לדם בכליה?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'ספיגה חוזרת של נתרן (יון חיובי) גורמת למעבר פסיבי של אשלגן (גם יון חיובי) אל הנפרון.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0e20911b-89bb-463a-89cd-18d19fba329c', '939020fb-985a-4c43-a8a2-06797c026880', 'גורם למעבר פסיבי של Potassium אל הנפרון', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e70802ba-8a87-4bcc-9836-d9d805134982', '939020fb-985a-4c43-a8a2-06797c026880', 'גורם לעלייה ב-Potassium בדם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('75f1d7b6-c21f-4985-8a77-7821d9c15914', '939020fb-985a-4c43-a8a2-06797c026880', 'גורם לירידה ב-Calcium', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b6633dda-77ee-4b67-8143-30c9e278f4ef', '939020fb-985a-4c43-a8a2-06797c026880', 'לא משפיע על אלקטרוליטים אחרים', false, 4, NOW());


-- Question 430: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'df683af4-0c45-4679-8c84-136c45673374',
    'מהו תפקיד Potassium-Sparing Diuretics?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'Potassium-Sparing Diuretics הם משתנים מיוחדים ששומרים על אשלגן ומונעים אובדן יתר שלו בשתן.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('677c9186-46f3-44ad-becc-bfe6d175dd9f', 'df683af4-0c45-4679-8c84-136c45673374', 'משתנים ששומרים על אשלגן ומונעים אובדן שלו', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('755132c7-6423-41a0-8714-94350d09a301', 'df683af4-0c45-4679-8c84-136c45673374', 'משתנים המגבירים הפרשת אשלגן', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('83c7a725-3bd4-40b6-9d3c-2f7827c2a0c2', 'df683af4-0c45-4679-8c84-136c45673374', 'תרופות להעלאת אשלגן בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e1a19398-a891-4055-b645-3a10dbd64c72', 'df683af4-0c45-4679-8c84-136c45673374', 'תרופות להורדת אשלגן', false, 4, NOW());


-- Question 431: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '93f27844-7fbf-4103-8d4a-489a22ed45e1',
    'מה השפעת אלדוסטרון על אלקטרוליטים?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'אלדוסטרון מגביר ספיגה אקטיבית של נתרן בצינור הדיסטלי חזרה לדם, וכתוצאה מכך יש הפרשה של אשלגן.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('efacd701-9305-4a30-9c19-458d64862df2', '93f27844-7fbf-4103-8d4a-489a22ed45e1', 'מגביר ספיגת נתרן ומפריש אשלגן', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('59d6a66c-e108-49bb-9ac5-14744df92d5a', '93f27844-7fbf-4103-8d4a-489a22ed45e1', 'מגביר ספיגת אשלגן ומפריש נתרן', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9a3b1736-830e-4b8f-972a-7766408dffd2', '93f27844-7fbf-4103-8d4a-489a22ed45e1', 'משפיע רק על סידן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f8526001-2a8c-4155-afb0-92471f0d4507', '93f27844-7fbf-4103-8d4a-489a22ed45e1', 'אינו משפיע על אלקטרוליטים', false, 4, NOW());


-- Question 432: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1d97767f-ffb6-4e0f-a672-a9b3f6132b13',
    'מה קורה לאשלגן בדם כאשר כדורית דם אדומה מתפוצצת?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'כדורית דם אדומה מכילה כמות גדולה של אשלגן בתוכה, ואם היא מתפוצצת בדם זה יוצר שינוי מסוכן במאזן האשלגן.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d83baf35-dddf-49a4-8e9d-043623943191', '1d97767f-ffb6-4e0f-a672-a9b3f6132b13', 'רמת האשלגן עולה בצורה מסוכנת', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1822675e-2e09-4275-befa-fefe3acad243', '1d97767f-ffb6-4e0f-a672-a9b3f6132b13', 'רמת האשלגן יורדת', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('750b31dd-34eb-4a48-9a56-bd46c68271ad', '1d97767f-ffb6-4e0f-a672-a9b3f6132b13', 'האשלגן לא משתנה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8b955119-d99d-43fc-8429-9f123aaa4d7e', '1d97767f-ffb6-4e0f-a672-a9b3f6132b13', 'האשלגן עובר לשתן', false, 4, NOW());


-- Question 433: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd266bf70-a152-4489-a568-8e6c68b625d5',
    'מהו הקשר בין נתרן למים בגוף?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'נתרן הוא השחקן האוסמוטי הכי חזק - לאן שנתרן הולך, המים הולכים אחריו (לחץ אוסמוטי).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c11afc7b-659f-469a-8eaa-50b445d0f2c1', 'd266bf70-a152-4489-a568-8e6c68b625d5', 'לאן שנתרן הולך, המים הולכים אחריו', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3caa5f36-a381-4c31-9667-ca10cc9ae722', 'd266bf70-a152-4489-a568-8e6c68b625d5', 'נתרן ומים נעים בכיוונים הפוכים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('28500ff4-d19f-4b0e-ae07-95cbbdec9ada', 'd266bf70-a152-4489-a568-8e6c68b625d5', 'אין קשר בין נתרן למים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('185b036e-2ba7-4679-b7f0-96c9ad58cdc4', 'd266bf70-a152-4489-a568-8e6c68b625d5', 'מים מונעים תנועה של נתרן', false, 4, NOW());


-- Question 434: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '10c6a041-9ad0-4890-9a4e-b6904917ad9a',
    'איך אלבומין משפיע על אלקטרוליטים?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'אלבומין הוא חלבון עצום שמחבר אליו הרבה אלקטרוליטים באופן קבוע, כמו נתרן וסידן - רובם קשורים לאלבומין.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('61638a50-d8f4-4b89-a29a-953dd2ea7634', '10c6a041-9ad0-4890-9a4e-b6904917ad9a', 'אלבומין קושר נתרן וסידן ומשפיע על הפצתם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b6ca9cf2-8d08-4d3c-92df-82250579be2d', '10c6a041-9ad0-4890-9a4e-b6904917ad9a', 'אלבומין הורס אלקטרוליטים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e9282978-f92b-452f-993e-e0810f85494d', '10c6a041-9ad0-4890-9a4e-b6904917ad9a', 'אלבומין מונע ספיגה של אלקטרוליטים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('dacd469d-e1bc-4612-af11-00a724eb37fc', '10c6a041-9ad0-4890-9a4e-b6904917ad9a', 'אין קשר בין אלבומין לאלקטרוליטים', false, 4, NOW());


-- Question 435: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '73664078-19b4-4012-879f-e79f0c881d4f',
    'מה קורה לאשלגן בזמן פוטנציאל פעולה בתא הלב?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'בשלב הרפולריזציה, תעלות אשלגן נפתחות ואשלגן יוצא מהתא, מוריד את המטען החשמלי חזרה למצב המנוחה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('63cc4a7c-83a2-4b57-8ee2-4b32211f041a', '73664078-19b4-4012-879f-e79f0c881d4f', 'אשלגן יוצא מהתא ברפולריזציה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('da422d25-141f-4e07-b5ec-37fe0b97f13a', '73664078-19b4-4012-879f-e79f0c881d4f', 'אשלגן נכנס לתא בדפולריזציה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a9e6041c-dc61-4d42-a899-c0991466ae9d', '73664078-19b4-4012-879f-e79f0c881d4f', 'אשלגן נשאר ללא שינוי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6a10ce04-6615-4763-b2a1-fe47838785ef', '73664078-19b4-4012-879f-e79f0c881d4f', 'אשלגן יוצא בשלב הפלאטו', false, 4, NOW());


-- Question 436: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '7819255e-235d-495e-afdf-324c851d2c19',
    'מהו תפקיד הנתרן בדפולריזציה?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'בשלב הדפולריזציה, תעלות נתרן מהירות נפתחות ונתרן נכנס במהירות לתא, מעלה את המטען החשמלי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4a597ff0-5a5a-4e6b-a5d9-6d4a37e5a702', '7819255e-235d-495e-afdf-324c851d2c19', 'נתרן נכנס לתא במהירות ומעלה את המטען החשמלי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('99b71cd3-c8b7-4f8a-b41a-ef71b8c1cc5c', '7819255e-235d-495e-afdf-324c851d2c19', 'נתרן יוצא מהתא ומוריד את המטען', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0c2f1085-2f59-4788-b504-c695a993b421', '7819255e-235d-495e-afdf-324c851d2c19', 'נתרן אינו מעורב בדפולריזציה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c137bea1-d0f4-455b-b505-23b648f0ce82', '7819255e-235d-495e-afdf-324c851d2c19', 'נתרן נכנס רק בשלב הפלאטו', false, 4, NOW());


-- Question 437: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '219a5b31-e61b-4a56-903b-bae70ccec269',
    'איזה אלקטרוליט יוצר את הפלאטו ב-Action Potential של תא מיוקרד?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'בשלב הפלאטו, סידן נכנס לאט ואשלגן יוצא יותר מהר, אבל המטענים מאזנים (אשלגן +1, סידן +2) ויוצרים פלאטו.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('400a1b1a-8d66-4e6c-b862-9561facdcfbc', '219a5b31-e61b-4a56-903b-bae70ccec269', 'סידן - כניסתו מאזנת את יציאת האשלגן', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2718590b-6b4b-4559-bdeb-1a1c54e5a5b5', '219a5b31-e61b-4a56-903b-bae70ccec269', 'נתרן - כניסתו מאזנת את יציאת הכלור', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7fbe1f5b-e7d3-40db-a7c3-76ed72f04909', '219a5b31-e61b-4a56-903b-bae70ccec269', 'מגנזיום - כניסתו מעכבת את הנתרן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f1f51a56-623c-4a01-adf4-3f3dc9d5f25f', '219a5b31-e61b-4a56-903b-bae70ccec269', 'כלור - כניסתו מאזנת את הסידן', false, 4, NOW());


-- Question 438: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '427588ff-6bff-4565-8bf1-aa534f93875c',
    'מה קורה ברקמה כאשר יש אצירת נתרן?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'אצירת נתרן גורמת לעליה בלחץ האונקוטי במדור הבין-תאי והצטברות נוזלים, מה שיוצר בצקת.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d881b2aa-07c6-469f-90fe-b95f4309eeb8', '427588ff-6bff-4565-8bf1-aa534f93875c', 'נוצרת בצקת עקב הצטברות נוזלים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1b8b0e17-9d51-4292-aafd-e20aa70bf8df', '427588ff-6bff-4565-8bf1-aa534f93875c', 'נוצרת התייבשות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ce21212c-892d-4c5c-bc4e-1bd5676263b7', '427588ff-6bff-4565-8bf1-aa534f93875c', 'אין השפעה על נוזלים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a2b7781b-7cd6-4c61-8d9c-14d44dc575c6', '427588ff-6bff-4565-8bf1-aa534f93875c', 'נוצרת אובדן משקל', false, 4, NOW());


-- Question 439: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'db9bc9c3-8da2-4532-b4ee-a33f07bff9e2',
    'איפה נמצא המאגר העיקרי של סידן בגוף?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'בעצמות יש הרבה סידן. כשלגוף דרוש סידן, הוא מפרק עצמות ומשחרר סידן דרך תאים אוסטיוקלסטים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ab66bec4-2583-4928-b4af-f8d72b64d64e', 'db9bc9c3-8da2-4532-b4ee-a33f07bff9e2', 'בעצמות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ddacbd12-d79e-43c3-99cb-964bfc1049d1', 'db9bc9c3-8da2-4532-b4ee-a33f07bff9e2', 'בדם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('de9413b6-ef4f-4f30-832e-72cd94bf37d3', 'db9bc9c3-8da2-4532-b4ee-a33f07bff9e2', 'בשרירים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8e8a1187-e65a-474f-bdf6-56131858ef60', 'db9bc9c3-8da2-4532-b4ee-a33f07bff9e2', 'בכליות', false, 4, NOW());


-- Question 440: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1acda45c-7308-4c5e-8a7d-64769cba7761',
    'מהו תפקיד הכלור (Cl-) בתא עצב?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'בתא עצב אפשר לפתוח תעלות כלור כדי שבכל פעם שנכנס נתרן (חיובי), נכנס גם כלור (שלילי) ומאזן מטענים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('86f5e74d-2241-4965-b5fb-e08cbb045872', '1acda45c-7308-4c5e-8a7d-64769cba7761', 'נכנס לתא כשנכנס נתרן כדי לאזן מטענים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0b030c43-7b5c-4ff1-8625-e750d89ddf10', '1acda45c-7308-4c5e-8a7d-64769cba7761', 'יוצא מהתא בדפולריזציה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0660bbca-3062-42a2-a9e9-051b3a9a674d', '1acda45c-7308-4c5e-8a7d-64769cba7761', 'אינו משתתף בפעילות החשמלית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bd09dc3a-901b-4746-a3fd-1c4bba43815a', '1acda45c-7308-4c5e-8a7d-64769cba7761', 'חוסם תעלות נתרן', false, 4, NOW());


-- Question 441: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '237dd5c7-6e42-4257-abab-79291c43a0b2',
    'מהו פוטנציאל המנוחה של תא לב והאלקטרוליטים שיוצרים אותו?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'פוטנציאל המנוחה של תא לב הוא -70mV, תוצאה של שילוב פוטנציאל נתרן (+40), אשלגן (-75) וכלור (-70).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d4a28037-0412-44ce-9573-bbf6d6464168', '237dd5c7-6e42-4257-abab-79291c43a0b2', '-70mV, תוצאה של מטענים של נתרן, אשלגן וכלור', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('495c41e6-073c-4828-9b77-e7bedb76869d', '237dd5c7-6e42-4257-abab-79291c43a0b2', '-90mV, תוצאה של סידן בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c04ab822-2cff-400f-8009-19ccd138bf9c', '237dd5c7-6e42-4257-abab-79291c43a0b2', '0mV, תוצאה של איזון מוחלט', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('62c5c4ac-b8e4-4956-b7bc-90399e897506', '237dd5c7-6e42-4257-abab-79291c43a0b2', '+40mV, תוצאה של נתרן בלבד', false, 4, NOW());


-- Question 442: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'acb9f613-7447-48d5-8d53-70a1990afb6d',
    'מה קורה כאשר יש חוסר באלבומין?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'חוסר באלבומין פוגע בלחץ האונקוטי, הפער משתנה ונשאר יותר נוזל בין-תאי שלא נכנס פנימה, מה שיוצר בצקת.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('33d0e193-f27c-4a9f-b620-4d2ac232d0b5', 'acb9f613-7447-48d5-8d53-70a1990afb6d', 'נוצרת בצקת עקב פגיעה בלחץ האונקוטי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7a7eff1f-8f57-4bd5-9c2e-efcd8dde74fc', 'acb9f613-7447-48d5-8d53-70a1990afb6d', 'נוצרת התייבשות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('15e74e0e-e473-44a6-ae22-aa1e331aa393', 'acb9f613-7447-48d5-8d53-70a1990afb6d', 'עליה בלחץ הדם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('11a8fd76-75eb-4609-88ab-be017ebb387f', 'acb9f613-7447-48d5-8d53-70a1990afb6d', 'אין השפעה על נוזלים', false, 4, NOW());


-- Question 443: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '008bf061-d1b4-4fee-8787-249d14a3e3d3',
    'איך מגנזיום משתתף בפעילות אנזימטית?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'מגנזיום, כמו מתכות אחרות (ברזל, נחושת), משמש כקו-פקטור שהאנזים משתמש בו וגורם לשינוי כימי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('81280eef-1eeb-4d06-95a2-9882ebf31f21', '008bf061-d1b4-4fee-8787-249d14a3e3d3', 'משמש כקו-פקטור לאנזימים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b005a9b5-6bc0-45ff-942e-1086beb11952', '008bf061-d1b4-4fee-8787-249d14a3e3d3', 'מעכב פעילות אנזימים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('82ddf8c2-a0ea-487e-9465-fd4a6e434411', '008bf061-d1b4-4fee-8787-249d14a3e3d3', 'הורס אנזימים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('983fa477-2cb5-451c-af13-a0a7c7faa70f', '008bf061-d1b4-4fee-8787-249d14a3e3d3', 'אינו מעורב בפעילות אנזימטית', false, 4, NOW());


-- Question 444: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '732bd7a0-117b-4b37-bd9c-31de56f2addd',
    'מה ההשפעה של שינויים באשלגן על הלב?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'אשלגן משפיע על פוטנציאל הפעולה, וכתוצאה מזה גם על קצב הלב ועומק ההתכווצות של הלב.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('871a3070-9a2a-430e-8886-e355ca3a526f', '732bd7a0-117b-4b37-bd9c-31de56f2addd', 'משפיעים על קצב הלב ועומק ההתכווצות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5495467e-8c11-4b24-b5ea-877b7a6f7702', '732bd7a0-117b-4b37-bd9c-31de56f2addd', 'משפיעים רק על לחץ הדם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2152ab79-7273-464d-a3a1-63ddda092684', '732bd7a0-117b-4b37-bd9c-31de56f2addd', 'אין השפעה על הלב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('84fbde50-f5dc-4f20-afe2-4f92bdc94ea3', '732bd7a0-117b-4b37-bd9c-31de56f2addd', 'משפיעים רק על גודל הלב', false, 4, NOW());


-- Question 445: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'fb1ead4e-41b1-4712-a4e6-d806a0649f93',
    'מהו תפקיד הפוספט (PO43-) בגוף?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'פוספט (PO43-) הוא מרכיב חשוב ב-ATP (Adenosine Tri-Phosphate), בעצמות ובתהליכי אנרגיה בגוף.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a15bacc5-0579-483d-8d04-b037f5da0acd', 'fb1ead4e-41b1-4712-a4e6-d806a0649f93', 'מרכיב ב-ATP ובעצמות, חשוב לאנרגיה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('749c5f2f-5b86-435f-b57e-55b372103180', 'fb1ead4e-41b1-4712-a4e6-d806a0649f93', 'רק הולכה עצבית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5ab48f58-aecc-43f6-96ff-d5a389ac6553', 'fb1ead4e-41b1-4712-a4e6-d806a0649f93', 'רק התכווצות שרירים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f033c6a4-64a2-4fed-94f0-10b5a30ecf38', 'fb1ead4e-41b1-4712-a4e6-d806a0649f93', 'אינו משמעותי בגוף', false, 4, NOW());


-- Question 446: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '4da77f96-63c8-45a7-bb85-c10de9d46975',
    'מה קורה בתהליך של התייבשות לאלקטרוליטים?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'בהתייבשות יש אובדן נוזלים, מה שגורם לריכוז יחסי גבוה יותר של אלקטרוליטים בדם (פוליציטמיה יחסית).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('baab16cf-1253-401c-a2f2-1405136d335a', '4da77f96-63c8-45a7-bb85-c10de9d46975', 'ריכוז האלקטרוליטים בדם עולה (פוליציטמיה יחסית)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('eddb69d8-cb9f-4d47-88b3-ea7781200615', '4da77f96-63c8-45a7-bb85-c10de9d46975', 'ריכוז האלקטרוליטים יורד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6f30de68-f566-45ff-97e1-b95edeeeb3f0', '4da77f96-63c8-45a7-bb85-c10de9d46975', 'אין שינוי בריכוז', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('108b4f6d-e38c-4357-b646-59ac6edf46fe', '4da77f96-63c8-45a7-bb85-c10de9d46975', 'רק הנתרן משתנה', false, 4, NOW());


-- Question 447: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '419b84a8-03df-48cb-a481-56ad19c77c1d',
    'מה קורה למאזן האלקטרוליטים בספיגה בכליה?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'בצינור הפרוקסימלי מתרחשת מרבית הספיגה החוזרת, כולל כשני שלישים מהנתרן מהתסנין בחזרה לדם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9d7bf02f-b781-4fd3-9b95-34e1c5d32486', '419b84a8-03df-48cb-a481-56ad19c77c1d', 'בצינור הפרוקסימלי נספגים שני שלישים מהנתרן', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6213bb4a-9b34-46f1-8a22-910b9b5355a0', '419b84a8-03df-48cb-a481-56ad19c77c1d', 'רק באסיפה נספגים אלקטרוליטים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e3b27175-0244-4425-becf-0ea83a9b4083', '419b84a8-03df-48cb-a481-56ad19c77c1d', 'אין ספיגה של אלקטרוליטים בכליה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7ab76763-bd9b-488a-adf0-37671e200b68', '419b84a8-03df-48cb-a481-56ad19c77c1d', 'בלולאת הנלה נספגים כל האלקטרוליטים', false, 4, NOW());


-- Question 448: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '3ff285d8-03cf-4734-9275-b18d34f86ab0',
    'מה הקשר בין ביקרבונט לאלקטרוליטים בכליה?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'ספיגת נתרן גורמת גם לספיגה של יונים שליליים כמו כלוריד, ביקרבונט ופוספאט מהתסנין אל הדם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bd4ffe29-4e9f-4ed7-bd72-e461e5b6d903', '3ff285d8-03cf-4734-9275-b18d34f86ab0', 'ביקרבונט נספג פסיבית יחד עם יונים שליליים אחרים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('88158cc5-269b-438e-8d2a-3b8f931c45e9', '3ff285d8-03cf-4734-9275-b18d34f86ab0', 'ביקרבונט חוסם ספיגת אלקטרוליטים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('31fa0853-4556-4e8d-8605-e4031b2ed7c3', '3ff285d8-03cf-4734-9275-b18d34f86ab0', 'ביקרבונט רק נפלט, לא נספג', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('af434566-8c32-4e7d-bbdc-18e5ceaa60c2', '3ff285d8-03cf-4734-9275-b18d34f86ab0', 'אין קשר בין ביקרבונט לאלקטרוליטים', false, 4, NOW());


-- Question 449: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'ca85a5be-c1f9-4fa9-90cf-7b998682efe5',
    'מהו תפקיד האלקטרוליטים בסרקופלזמיק רטיקולום?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'ה-Sarcoplasmic Reticulum (SR) מאגר סידן ומשחרר אותו לתא השריר בזמן התכווצות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('63878ed3-9b43-4b86-ba43-d7d8ee23259a', 'ca85a5be-c1f9-4fa9-90cf-7b998682efe5', 'אגירת סידן לשחרור בזמן התכווצות שריר', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('41335fec-bc33-420a-a1ae-099aa264e6c4', 'ca85a5be-c1f9-4fa9-90cf-7b998682efe5', 'אגירת נתרן בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4a25d270-ebd5-43cd-af9d-bd31d8f5b75c', 'ca85a5be-c1f9-4fa9-90cf-7b998682efe5', 'ייצור אלקטרוליטים חדשים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ec3bd8d1-b984-4040-97f3-a15881ad7a51', 'ca85a5be-c1f9-4fa9-90cf-7b998682efe5', 'פירוק אלקטרוליטים', false, 4, NOW());


-- Question 450: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '445eb235-4580-4057-84dc-68fdf3694481',
    'מהו השפעת היפרקלמיה על הלב?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'היפרקלמיה (עודף אשלגן) משמעותה בעיות בפעילות קצב הלב וזוהי הבעיה מספר 1 ל-VF (פרפור חדרים).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c95da9c9-76b3-45c2-9bd9-fd87066c74bc', '445eb235-4580-4057-84dc-68fdf3694481', 'בעיות בפעילות קצב הלב וסיכון ל-VF', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('29237fb3-443c-40f5-85a8-4cf9456810d2', '445eb235-4580-4057-84dc-68fdf3694481', 'ברדיקרדיה בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('deca14ca-f461-47d7-93d6-9ce7c6483f14', '445eb235-4580-4057-84dc-68fdf3694481', 'טכיקרדיה בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('064067e6-f227-449e-b4de-4cbaf6ff8d96', '445eb235-4580-4057-84dc-68fdf3694481', 'אין השפעה על הלב', false, 4, NOW());


-- Question 451: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '40f5303f-f068-4308-a275-0f8ca28def71',
    'מה קורה בהיפרנתרמיה (Hypernatremia)?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'היפרנתרמיה היא ריכוז נתרן גבוה בדם. מכיוון שנתרן מושך מים, מים עוברים מהתאים למרווח הבין-תאי וגורמים להתייבשות תאית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b6961422-d997-4ab0-9a7a-65da8741f92a', '40f5303f-f068-4308-a275-0f8ca28def71', 'ריכוז נתרן גבוה בדם, מים עוברים מהתאים החוצה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('080e1526-053a-40bb-bf2e-9ba9ed9cc813', '40f5303f-f068-4308-a275-0f8ca28def71', 'ריכוז נתרן נמוך בדם, מים נכנסים לתאים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('261f25c3-08b0-4bc2-b664-ef0004837046', '40f5303f-f068-4308-a275-0f8ca28def71', 'רק תסמיני התייבשות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3784d31e-8e51-43d8-9256-6a369004f226', '40f5303f-f068-4308-a275-0f8ca28def71', 'אין שינוי באיזון הנוזלים', false, 4, NOW());


-- Question 452: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd917bb7a-60f2-44fa-97d8-3ce208bb77f2',
    'מה קורה בהיפונתרמיה (Hyponatremia)?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'היפונתרמיה היא ריכוז נתרן נמוך בדם. מים נכנסים לתאים (אוסמוזה) וגורמים לנפיחות תאית, במיוחד מסוכן במוח.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('616aea97-67de-49de-8b9b-69b017ecf3b0', 'd917bb7a-60f2-44fa-97d8-3ce208bb77f2', 'ריכוז נתרן נמוך בדם, מים נכנסים לתאים וגורמים לנפיחות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('381869ac-269a-41f1-b1b1-16bdeb9bbea5', 'd917bb7a-60f2-44fa-97d8-3ce208bb77f2', 'ריכוז נתרן גבוה בדם, התייבשות תאית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3a56b633-80ac-44bc-97eb-63395f9204a0', 'd917bb7a-60f2-44fa-97d8-3ce208bb77f2', 'רק תסמיני בצקת', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('31522202-fa2f-40b1-be35-a381de2b7c21', 'd917bb7a-60f2-44fa-97d8-3ce208bb77f2', 'אין שינוי בתאים', false, 4, NOW());


-- Question 453: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '6e414f84-379f-4d7c-9aac-3f1a89112350',
    'מהם תסמיני היפוקלמיה (Hypokalemia)?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'היפוקלמיה גורמת לחולשת שרירים, הפרעות קצב, ושינויים ב-ECG כולל ST depression, גלי T שטוחים וגלי U.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('368a1125-9179-4caa-9322-5cad629b0abd', '6e414f84-379f-4d7c-9aac-3f1a89112350', 'חולשת שרירים, הפרעות קצב, שינויים ב-ECG (ST depression, T wave flat)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1c231134-4918-4720-a34b-be9c66e58b16', '6e414f84-379f-4d7c-9aac-3f1a89112350', 'רק עליית לחץ דם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('96099eb0-79db-4188-9b16-b7f620bb83db', '6e414f84-379f-4d7c-9aac-3f1a89112350', 'רק ברדיקרדיה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c0597390-6c1d-4d1a-99b4-92a37434be5e', '6e414f84-379f-4d7c-9aac-3f1a89112350', 'אין תסמינים', false, 4, NOW());


-- Question 454: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '0c2eb79d-a2e1-4b78-a960-65d791ef4809',
    'מהם שינויי ה-ECG האופייניים להיפרקלמיה (Hyperkalemia)?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'היפרקלמיה גורמת לגלי T גבוהים ומחודדים (Peaked T), הרחבת QRS, ובמקרים חמורים יכול להוביל ל-VF.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7ccb41da-9688-4776-8a3d-ad5d6fefac62', '0c2eb79d-a2e1-4b78-a960-65d791ef4809', 'גלי T גבוהים ומחודדים (Peaked T waves), הרחבת QRS', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('35102c30-ff5a-492e-882f-21bca2bf8751', '0c2eb79d-a2e1-4b78-a960-65d791ef4809', 'ST elevation בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e7dd2e8e-3afa-4512-b7a1-43e4e3ea3083', '0c2eb79d-a2e1-4b78-a960-65d791ef4809', 'גלי T שטוחים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('861c9272-3975-4909-9df2-72400cf5cba9', '0c2eb79d-a2e1-4b78-a960-65d791ef4809', 'אין שינויים ב-ECG', false, 4, NOW());


-- Question 455: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'e7f10a8f-69dd-45ff-bed6-686ef1066f2b',
    'מהו תפקיד הסידן בהתכווצות שריר שלד?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'כאשר סידן נקשר לטרופונין, הטרופומיוזין משנה תצורה וחושף את אתרי הקשירה על האקטין, מאפשר התכווצות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2b0b1fbb-4fd4-4218-a3d0-939e94a3b17a', 'e7f10a8f-69dd-45ff-bed6-686ef1066f2b', 'סידן נקשר לטרופונין וחושף אתרי קשירה על האקטין', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8669c12d-7714-4e95-a202-40100710f834', 'e7f10a8f-69dd-45ff-bed6-686ef1066f2b', 'סידן חוסם את האקטין', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a7f08490-0589-4843-b138-2823ca95f1ea', 'e7f10a8f-69dd-45ff-bed6-686ef1066f2b', 'סידן מפרק את המיוזין', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('581d5614-5ec9-45c2-b80b-e53f64933c78', 'e7f10a8f-69dd-45ff-bed6-686ef1066f2b', 'אין תפקיד לסידן בהתכווצות', false, 4, NOW());


-- Question 456: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'cae469a3-d5e4-4c64-bd25-277d6f50a676',
    'מהי הסיבה העיקרית להיפוקלמיה בשימוש בלולאתיים (Loop Diuretics)?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'משתנים לולאתיים ואלדוסטרון מגבירים ספיגת נתרן, מה שמפעיל משאבות נתרן-אשלגן וגורם להפרשה של אשלגן (היפוקלמיה).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('800c6289-0456-40b5-9366-5d61cdba308a', 'cae469a3-d5e4-4c64-bd25-277d6f50a676', 'הפרשת אשלגן מוגברת עקב הפעלת משאבות נתרן-אשלגן', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('248d8ab0-27c0-4ece-bebb-1605400b5bce', 'cae469a3-d5e4-4c64-bd25-277d6f50a676', 'חסימת ספיגת אשלגן', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f0954e98-0c7d-4c56-924c-c9827271ae7e', 'cae469a3-d5e4-4c64-bd25-277d6f50a676', 'הרס אשלגן בכליה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0a61259c-8d4b-4332-94dd-8244887779c6', 'cae469a3-d5e4-4c64-bd25-277d6f50a676', 'אין קשר בין משתנים לאשלגן', false, 4, NOW());


-- Question 457: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'adf27ef9-caf2-46cb-bb10-2b638efb1a02',
    'מה קורה במצב של היפוקלצמיה (Hypocalcemia)?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'היפוקלצמיה גורמת לטטניה (עוויתות), הפרעות בהתכווצות שרירים, הפרעות קצב, והארכת מקטע QT ב-ECG.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a7380d8f-61b8-4279-b293-e70324515ce6', 'adf27ef9-caf2-46cb-bb10-2b638efb1a02', 'טטניה, עוויתות שרירים, הפרעות קצב, הארכת QT', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('67d84e38-13b1-40c3-a43c-24976b115cea', 'adf27ef9-caf2-46cb-bb10-2b638efb1a02', 'רק הפרעות קצב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a2183a04-b520-497b-93f2-14477ff758bd', 'adf27ef9-caf2-46cb-bb10-2b638efb1a02', 'רק חולשת שרירים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ab7ad4ac-1bda-415a-ad45-f64b54912a25', 'adf27ef9-caf2-46cb-bb10-2b638efb1a02', 'אין תסמינים', false, 4, NOW());


-- Question 458: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'bf5e072d-dd3b-46e3-8e6d-4a052b52197e',
    'מה קורה במצב של היפרקלצמיה (Hypercalcemia)?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'היפרקלצמיה גורמת לחולשה, בלבול, הפרעות קצב, קיצור מקטע QT, ובמקרים כרוניים אבנים בכליות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('36b2c5c8-fa48-4a02-9856-56c255a3ed4c', 'bf5e072d-dd3b-46e3-8e6d-4a052b52197e', 'חולשה, בלבול, הפרעות קצב, קיצור QT, אבנים בכליות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('846c31cc-cd23-4261-8b66-4e61a1e68511', 'bf5e072d-dd3b-46e3-8e6d-4a052b52197e', 'רק טטניה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f3c2b897-adf0-43c8-9181-c3d7e64def34', 'bf5e072d-dd3b-46e3-8e6d-4a052b52197e', 'רק הארכת QT', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('925fe548-58e6-48f5-88ac-84970dbce876', 'bf5e072d-dd3b-46e3-8e6d-4a052b52197e', 'אין תסמינים', false, 4, NOW());


-- Question 459: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c89cd375-f3dc-47b0-83af-912f4ddf1da1',
    'מהו תפקיד המגנזיום בפעילות החשמלית של הלב?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'מגנזיום מייצב ממברנות תאים ומווסת כניסה של סידן לתאי שריר, חשוב למניעת הפרעות קצב.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5d0e3435-e0a0-4db7-866d-690d0b64d717', 'c89cd375-f3dc-47b0-83af-912f4ddf1da1', 'מייצב ממברנות תאים ומווסת כניסת סידן', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('61351b1f-00a4-4dbe-a73e-52b8a4308715', 'c89cd375-f3dc-47b0-83af-912f4ddf1da1', 'פותח תעלות נתרן', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a565f038-cafa-4125-92fa-0984cffa1d8b', 'c89cd375-f3dc-47b0-83af-912f4ddf1da1', 'חוסם תעלות אשלגן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e2fd1d36-75e5-4da2-aa32-e674ef39137c', 'c89cd375-f3dc-47b0-83af-912f4ddf1da1', 'אין תפקיד למגנזיום בלב', false, 4, NOW());


-- Question 460: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '15549bb9-4658-497b-917a-f8810564f18a',
    'מה השפעת היפומגנזמיה (Hypomagnesemia) על הלב?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'היפומגנזמיה גורמת להפרעות קצב מסוכנות כולל Torsades de Pointes ופרפור חדרים (VF).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0428b773-1c20-452c-8ed2-075b0ebf03d1', '15549bb9-4658-497b-917a-f8810564f18a', 'הפרעות קצב, טורסד דה פואנט (Torsades de Pointes), VF', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b6f2659d-d400-45b4-9fae-c9a2e68e9871', '15549bb9-4658-497b-917a-f8810564f18a', 'רק ברדיקרדיה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('65ce1742-10d4-4582-bbb8-6b1302002132', '15549bb9-4658-497b-917a-f8810564f18a', 'רק חסם הולכה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('49afbe5e-ff40-488a-b602-5934d9765ed0', '15549bb9-4658-497b-917a-f8810564f18a', 'אין השפעה על הלב', false, 4, NOW());


-- Question 461: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd3829f39-11b7-424d-ac16-d84317f2fc31',
    'מהי בצקת (Edema)?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'בצקת (Edema) היא הצטברות של כמות נוזלים גדולה מהנורמה בחלל הבין-תאי או בחללים הסרוטיים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8e28878b-fbaf-49ec-9520-05965c22fe54', 'd3829f39-11b7-424d-ac16-d84317f2fc31', 'הצטברות של כמות נוזלים גדולה מהנורמה בחלל הבין-תאי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('52aa7933-b045-4037-bfd7-5473d737c3f0', 'd3829f39-11b7-424d-ac16-d84317f2fc31', 'התייבשות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3447cdfd-bc5b-49f1-8c57-e20e9d99a884', 'd3829f39-11b7-424d-ac16-d84317f2fc31', 'אובדן נוזלים מהדם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3a6bd48b-abfa-47e8-8619-7aeb85e7e6c9', 'd3829f39-11b7-424d-ac16-d84317f2fc31', 'עודף חלבונים בדם', false, 4, NOW());


-- Question 462: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1543aa5d-8d5f-4ef1-be94-40d9d1901c77',
    'מהי התייבשות (Dehydration)?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'התייבשות היא אובדן נוזלים מהגוף, מה שגורם לריכוז יחסי גבוה יותר של אלקטרוליטים (פוליציטמיה יחסית).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('34c56684-6e76-4e0d-8cca-5a436705e1d5', '1543aa5d-8d5f-4ef1-be94-40d9d1901c77', 'אובדן נוזלים מהגוף שגורם לריכוז אלקטרוליטים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7376ef01-6651-48c6-9f72-23a0d8011b41', '1543aa5d-8d5f-4ef1-be94-40d9d1901c77', 'עודף נוזלים בגוף', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7eb5f1f5-f735-4ae6-9cad-c592f5d2434a', '1543aa5d-8d5f-4ef1-be94-40d9d1901c77', 'אובדן אלקטרוליטים בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('abf28147-fa79-4b70-a3d8-f3c70569a932', '1543aa5d-8d5f-4ef1-be94-40d9d1901c77', 'בצקת', false, 4, NOW());


-- Question 463: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c4f858e7-66fd-4543-929a-a673b1b789e2',
    'מהו לחץ אוסמוטי?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'לחץ אוסמוטי הוא הלחץ שנוצר כאשר מים עוברים דרך ממברנה חצי-חדירה בגלל הפרשי ריכוזים (אוסמוזה).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('82c03e57-57aa-497a-b1af-2cb74f07ff6a', 'c4f858e7-66fd-4543-929a-a673b1b789e2', 'לחץ שנוצר ממעבר מים דרך ממברנה בגלל הפרשי ריכוזים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('29eea47d-4b3e-4562-9174-f8b1540af32e', 'c4f858e7-66fd-4543-929a-a673b1b789e2', 'לחץ הדם בעורקים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b48f9173-f16d-4248-889e-bcfa4d37e301', 'c4f858e7-66fd-4543-929a-a673b1b789e2', 'לחץ בריאות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fb9604a3-1e4f-4f2e-88ff-df6ded53941e', 'c4f858e7-66fd-4543-929a-a673b1b789e2', 'לחץ על דפנות התא', false, 4, NOW());


-- Question 464: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'cd532759-ca8c-43bf-94c5-b5c7fc5af0dd',
    'מהו לחץ אונקוטי?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'לחץ אונקוטי הוא לחץ אוסמוטי שמערב חלבוני דם, בעיקר אלבומין שעליו יש נתרן ומושך מים אליו.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8f0b9276-c780-4095-a747-a5a8212a8a34', 'cd532759-ca8c-43bf-94c5-b5c7fc5af0dd', 'לחץ אוסמוטי שנוצר מחלבוני דם, בעיקר אלבומין', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('97c7f8a9-eb65-435e-af3c-0fa21cb4cdc1', 'cd532759-ca8c-43bf-94c5-b5c7fc5af0dd', 'לחץ הדם בוורידים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e00462d1-b4fe-46b0-ae29-554447419458', 'cd532759-ca8c-43bf-94c5-b5c7fc5af0dd', 'לחץ בגלל נתרן בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('83456481-2297-43aa-b6f3-c36a789521d4', 'cd532759-ca8c-43bf-94c5-b5c7fc5af0dd', 'לחץ בריאות', false, 4, NOW());


-- Question 465: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'b6570370-450b-4ac2-9b71-69e4b3d8bf94',
    'מהם הגורמים לבצקת?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'בצקת נגרמת מעליה בלחץ ההידרוסטטי, ירידה בלחץ האונקוטי (חוסר אלבומין), אצירת נתרן או חסימה לימפטית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d1fa780f-c508-4952-b41c-1addb5235679', 'b6570370-450b-4ac2-9b71-69e4b3d8bf94', 'עליה בלחץ ההידרוסטטי, ירידה בלחץ האונקוטי, אצירת נתרן', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cbcd08ce-6317-4bf4-bff9-560ca0df2275', 'b6570370-450b-4ac2-9b71-69e4b3d8bf94', 'רק התייבשות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0addcf18-4201-4157-a768-cc53d6b242cb', 'b6570370-450b-4ac2-9b71-69e4b3d8bf94', 'רק עודף חלבונים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('61b598dd-9f4c-4fb5-9a2b-1b35d4f62a9b', 'b6570370-450b-4ac2-9b71-69e4b3d8bf94', 'רק פעילות גופנית', false, 4, NOW());


-- Question 466: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c3ed13fb-02fc-4b8e-b014-84b50097b979',
    'מה קורה למאזן הנוזלים באלכוהול?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'אלכוהול מדכא ADH (הורמון אנטי-דיורטי), מה שגורם לאדם לשתן יותר ולהתייבשות - זו הסיבה להנגאובר.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('94245bfe-58f5-4664-b8df-2f838aa3542a', 'c3ed13fb-02fc-4b8e-b014-84b50097b979', 'אלכוהול מדכא ADH וגורם להפרשת שתן מוגברת והתייבשות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('da7020b5-2692-4e99-abd6-f40a43c4b77f', 'c3ed13fb-02fc-4b8e-b014-84b50097b979', 'אלכוהול גורם לבצקת', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d770ca59-956f-40c0-8ea8-afe0e57bd2c8', 'c3ed13fb-02fc-4b8e-b014-84b50097b979', 'אלכוהול לא משפיע על נוזלים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cb83442d-155d-411f-b8b9-24f2e95516d2', 'c3ed13fb-02fc-4b8e-b014-84b50097b979', 'אלכוהול גורם לאצירת מים', false, 4, NOW());


-- Question 467: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '43382518-77ac-4f15-aa1e-5b59d566f9fc',
    'מהו מאזן נוזלים (Fluid Balance)?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'מאזן נוזלים הוא האיזון בין כמות הנוזלים הנכנסים (שתייה, אוכל, עירויים) ליוצאים (שתן, זיעה, נשימה, צואה).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9c34c6c9-e28f-4cc9-a707-fcfd6909532d', '43382518-77ac-4f15-aa1e-5b59d566f9fc', 'האיזון בין כמות הנוזלים הנכנסים ליוצאים מהגוף', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8ec926d7-297f-4a82-ae6e-37c46e27a8f9', '43382518-77ac-4f15-aa1e-5b59d566f9fc', 'רק כמות המים שנשתית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('31e473d6-729c-463b-9dd7-413077c77caa', '43382518-77ac-4f15-aa1e-5b59d566f9fc', 'רק כמות השתן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('656cf0d1-9547-4465-b7e0-cd35a0f9a47b', '43382518-77ac-4f15-aa1e-5b59d566f9fc', 'איזון אלקטרוליטים בלבד', false, 4, NOW());


-- Question 468: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '0ead3a51-8225-4bc6-87ac-1a5a10522dd2',
    'מה ההבדל בין בצקת ריאות קרדיוגנית ל-ARDS?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'בצקת ריאות קרדיוגנית היא על רקע לבבי (אי ספיקת לב), ואילו ARDS היא בצקת שלא על רקע לבבי (כימי, טביעה, אקונומיקה).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8a38667b-afcf-47fb-a378-064d759706f7', '0ead3a51-8225-4bc6-87ac-1a5a10522dd2', 'קרדיוגנית - על רקע לבבי, ARDS - לא על רקע לבבי (כימי/טביעה)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ac382fca-fcf9-413b-9089-72060df0f89e', '0ead3a51-8225-4bc6-87ac-1a5a10522dd2', 'אין הבדל', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('baea7b6c-a4e8-4766-9b36-147b57d15319', '0ead3a51-8225-4bc6-87ac-1a5a10522dd2', 'רק מיקום הנוזל שונה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('69369b78-397f-4e7b-9bab-6193049fb35a', '0ead3a51-8225-4bc6-87ac-1a5a10522dd2', 'רק הטיפול שונה', false, 4, NOW());


-- Question 469: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c999682c-86c0-45df-8dfc-e1dbf2399c68',
    'איך בודקים בצקת פיטינג (Pitting Edema)?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'Pitting Edema נבדקת על ידי לחיצה על האזור הנפוח - אם נשאר שקע (pit) זו בצקת פיטינג, מעידה על עודף נוזלים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c762452f-3d65-4588-845c-752c9a131f97', 'c999682c-86c0-45df-8dfc-e1dbf2399c68', 'לוחצים על האזור הנפוח ובודקים אם נשאר שקע', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0436ee14-fe7c-4692-852b-ff9ccd5e3ab3', 'c999682c-86c0-45df-8dfc-e1dbf2399c68', 'מודדים את היקף הגפה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('826d8e0b-522a-4f17-bbc7-89e5eff1f326', 'c999682c-86c0-45df-8dfc-e1dbf2399c68', 'בודקים טמפרטורה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4078dae5-1245-493c-ba4a-424701524bb4', 'c999682c-86c0-45df-8dfc-e1dbf2399c68', 'בודקים צבע העור', false, 4, NOW());


-- Question 470: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '2ce2f0ca-a6d8-43c3-834f-6397f2056cc0',
    'מהו Pedal Edema?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'Pedal Edema היא בצקת המוגבלת לרגליים, לרוב עקב אי ספיקת לב ימני או בעיות ורידיות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('011a830c-9a94-4e2c-b9e7-41d4ecaf0366', '2ce2f0ca-a6d8-43c3-834f-6397f2056cc0', 'בצקת רק ברגליים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8b3c61fb-3d61-4a47-a16f-83c81dd7725d', '2ce2f0ca-a6d8-43c3-834f-6397f2056cc0', 'בצקת בכל הגוף', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e9d1a6a0-ff80-4b10-a2ff-6ddd048e0445', '2ce2f0ca-a6d8-43c3-834f-6397f2056cc0', 'בצקת ביד ימין', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b6277a09-61f6-43f0-9077-1d1f335110b9', '2ce2f0ca-a6d8-43c3-834f-6397f2056cc0', 'בצקת בפנים', false, 4, NOW());


-- Question 471: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '9267688a-2054-4967-a261-282b597ed212',
    'מהי אוסמולריות (Osmolality)?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'אוסמולריות היא ריכוז החלקיקים המומסים (אלקטרוליטים, גלוקוז) בנוזל, קובעת את כיוון תנועת המים בין מרווחים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('504a7ef9-3816-473e-b7cc-86e6853e0a40', '9267688a-2054-4967-a261-282b597ed212', 'ריכוז החלקיקים המומסים בנוזל, משפיע על תנועת מים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fb4da975-d933-4f2c-ad02-426661fd6f69', '9267688a-2054-4967-a261-282b597ed212', 'ריכוז החמצן בדם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9f1fac07-fd99-49fd-88df-5c6314edb6b3', '9267688a-2054-4967-a261-282b597ed212', 'לחץ הדם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ad45b44d-949a-4155-8d8b-47d529cfa4a6', '9267688a-2054-4967-a261-282b597ed212', 'כמות הנוזלים בגוף', false, 4, NOW());


-- Question 472: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '309e0dea-9aa4-42dd-be16-e4d2ca98902a',
    'מה קורה כאשר יש היפר-אוסמולריות בדם?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'היפר-אוסמולריות בדם (ריכוז חלקיקים גבוה) גורמת למים לעבור מהתאים לדם (אוסמוזה), מה שיוצר התייבשות תאית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8483d117-c3c5-4d3c-a9cf-6b42f3939636', '309e0dea-9aa4-42dd-be16-e4d2ca98902a', 'מים עוברים מהתאים לדם וגורמים להתייבשות תאית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8fcf1ca2-97a1-4aa3-9e0c-53dde76fc67b', '309e0dea-9aa4-42dd-be16-e4d2ca98902a', 'מים עוברים מהדם לתאים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3c405938-7c39-4e89-adfa-636a9be6e76c', '309e0dea-9aa4-42dd-be16-e4d2ca98902a', 'אין תנועת מים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cefc5940-f319-4acf-ab66-158ade5a7bf0', '309e0dea-9aa4-42dd-be16-e4d2ca98902a', 'נוצרת בצקת תאית', false, 4, NOW());


-- Question 473: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '3db32dfa-82f0-493b-961c-f4d21d1e7956',
    'מה קורה בבצקת מוחית בגבהים?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'בגבהים, לחץ חלקי של חמצן יורד וגורם להיפוקסיה. הגוף משחרר מדיאטורים דלקתיים שמגבירים חדירות כלי דם ונוזל עובר לרקמות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e4246e10-17b6-4e12-bdd4-0778c69900b0', '3db32dfa-82f0-493b-961c-f4d21d1e7956', 'היפוקסיה גורמת לשחרור מדיאטורים שמגבירים חדירות כלי דם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d57ab71c-532d-4043-8f62-0c1564cee3a2', '3db32dfa-82f0-493b-961c-f4d21d1e7956', 'רק עליית לחץ דם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('04a9056d-e8c5-460e-983e-8e7fdd19e0f8', '3db32dfa-82f0-493b-961c-f4d21d1e7956', 'רק אי ספיקת לב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6c44d40e-0849-4f5b-b01b-925a55aa60ea', '3db32dfa-82f0-493b-961c-f4d21d1e7956', 'אין קשר לגובה', false, 4, NOW());


-- Question 474: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '4e5be79a-599e-46fd-87f7-5364f7452b24',
    'מהו ההבדל בין אי ספיקת לב שמאלית לימנית מבחינת בצקת?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'אי ספיקת לב שמאלית גורמת לבצקת ריאות (נוזל בנאדיות), ואי ספיקת לב ימנית גורמת לבצקת היקפית (רגליים, בטן, צוואר).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ede16288-f50a-47f2-bff8-d5eb57796147', '4e5be79a-599e-46fd-87f7-5364f7452b24', 'שמאלית - בצקת ריאות, ימנית - בצקת היקפית (רגליים, בטן)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b39a618e-02d8-4b99-935c-51e45546a0bc', '4e5be79a-599e-46fd-87f7-5364f7452b24', 'אין הבדל', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9a1a473d-8592-4126-999d-5c916eb0393b', '4e5be79a-599e-46fd-87f7-5364f7452b24', 'שמאלית - בצקת ברגליים, ימנית - בצקת ריאות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f192dfd3-fa71-4998-9480-764b822475d2', '4e5be79a-599e-46fd-87f7-5364f7452b24', 'שתיהן גורמות רק לבצקת ריאות', false, 4, NOW());


-- Question 475: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '7aae6ecc-7db9-4470-960f-44ea1936d1f5',
    'מהם הסימנים לבצקת ריאות חמורה?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'סימנים לבצקת ריאות חמורה כוללים הזעה קיצונית, רעב לחמצן, לחץ דם גבוה קיצוני, קוצר נשימה חריף וקצף ורוד בפה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d86d7663-cb5a-4764-9742-96470cf038d7', '7aae6ecc-7db9-4470-960f-44ea1936d1f5', 'הזעה קיצונית, רעב לחמצן, לחץ דם גבוה, קצף ורוד בפה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('29dcc977-69d8-4b74-946a-0086f0fb1c9b', '7aae6ecc-7db9-4470-960f-44ea1936d1f5', 'רק שיעול יבש', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b8baaf29-850d-4a21-b53b-79703306eab2', '7aae6ecc-7db9-4470-960f-44ea1936d1f5', 'רק לחץ דם נמוך', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('eba8091e-052b-439d-832d-518a68c13190', '7aae6ecc-7db9-4470-960f-44ea1936d1f5', 'רק כאב בחזה', false, 4, NOW());


-- Question 476: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '2ff6d231-fe2b-44e4-b308-9f70b26ab13c',
    'מהו הקשר בין אי ספיקת כליות לבצקת?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'אי ספיקת כליות מונעת הפרשת נוזלים ונתרן תקינה, מה שגורם לאצירת נוזלים עודפים ויצירת בצקת.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6e735195-9437-4c20-a476-a3690bd0e10d', '2ff6d231-fe2b-44e4-b308-9f70b26ab13c', 'אי ספיקת כליות גורמת לאצירת נוזלים ונתרן, מה שיוצר בצקת', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('792138a6-3dc3-460d-aadf-e7909b45ecdd', '2ff6d231-fe2b-44e4-b308-9f70b26ab13c', 'אי ספיקת כליות גורמת להתייבשות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4001ad22-c7de-43b2-89bc-dd200bd58d79', '2ff6d231-fe2b-44e4-b308-9f70b26ab13c', 'אין קשר בין כליות לבצקת', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b67702ed-0d4b-4059-9513-73cf22f1c61f', '2ff6d231-fe2b-44e4-b308-9f70b26ab13c', 'אי ספיקת כליות גורמת רק לאובדן חלבונים', false, 4, NOW());


-- Question 477: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '85cc5cc1-2273-475f-9794-697fa42e1f66',
    'מדוע חשוב לאזן אלקטרוליטים לפני מתן תרופות אנטי-אריתמיות?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'חוסר איזון אלקטרוליטים (במיוחד K+, Mg2+, Ca2+) יכול לגרום להפרעות קצב נוספות או להפחית את יעילות התרופות האנטי-אריתמיות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('83781acc-fa43-4bc6-91b6-362fe3704ef8', '85cc5cc1-2273-475f-9794-697fa42e1f66', 'חוסר איזון אלקטרוליטים יכול לגרום להפרעות קצב או להפחית יעילות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0e461227-475e-4766-a0dd-df946843853b', '85cc5cc1-2273-475f-9794-697fa42e1f66', 'אין צורך באיזון', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ca2edb73-0db9-4367-bcaf-5a5d6b8a7b7d', '85cc5cc1-2273-475f-9794-697fa42e1f66', 'רק בגלל תופעות לוואי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('08ae9bea-bfa6-4fe9-b819-f1df93644321', '85cc5cc1-2273-475f-9794-697fa42e1f66', 'רק כדי להפחית מינון', false, 4, NOW());


-- Question 478: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '68e110c4-5ef6-453d-80b9-bf0fb5e7ddbe',
    'איזה אלקטרוליט קשור למיוחד לפעילות של ה-SA Node?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'בתאי קוצב (SA Node), תעלות סידן איטיות ומהירות קובעות את קצב הדפולריזציה והקצב הבסיסי של הלב.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cca73298-125c-4c56-888a-885687df6314', '68e110c4-5ef6-453d-80b9-bf0fb5e7ddbe', 'סידן - תעלות סידן קובעות את קצב הקוצב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cf545287-317a-4d0a-a406-96bec4f07b1f', '68e110c4-5ef6-453d-80b9-bf0fb5e7ddbe', 'רק נתרן', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e33d3495-da90-4231-a236-0ad1ed2b141e', '68e110c4-5ef6-453d-80b9-bf0fb5e7ddbe', 'רק אשלגן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4556cd04-e671-4b64-8382-295af5083088', '68e110c4-5ef6-453d-80b9-bf0fb5e7ddbe', 'רק כלור', false, 4, NOW());


-- Question 479: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '28b2cd73-ff8d-4125-800a-4097a185d23c',
    'מה קורה כשיש חוסר ב-ATP למשאבת נתרן-אשלגן?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'משאבת נתרן-אשלגן דורשת ATP. ללא ATP, התא לא יכול להחזיר את מאזן האלקטרוליטים לאחר פוטנציאל פעולה והפעילות החשמלית נפגעת.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7953dcb7-527a-4bc0-a514-3b516dec7bd5', '28b2cd73-ff8d-4125-800a-4097a185d23c', 'התא לא יכול לשמור על מאזן האלקטרוליטים והפעילות החשמלית נפגעת', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0ac9c3ee-c941-4faf-b29d-7078cdefea87', '28b2cd73-ff8d-4125-800a-4097a185d23c', 'המשאבה עובדת מהר יותר', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('add43180-f68a-4d50-b1ae-da35858ef434', '28b2cd73-ff8d-4125-800a-4097a185d23c', 'אין השפעה על התא', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2e24180e-ebcd-4474-9bef-891508ab1928', '28b2cd73-ff8d-4125-800a-4097a185d23c', 'רק הנתרן מושפע', false, 4, NOW());


-- Question 480: אלקטרוליטים
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a9e35752-6a0e-4110-a32a-5f2beeafaf84',
    'מהי משמעות Threshold (-55mV) לגבי אלקטרוליטים?',
    (SELECT id FROM public.categories WHERE name = 'אלקטרוליטים' LIMIT 1),
    'pending',
    'Threshold (-55mV) היא נקודת הסף שבה מספיק תעלות נתרן נפתחו, ואז כל תעלות הנתרן נפתחות מסיבית ויוצרות דפולריזציה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('691e3eff-c597-4fdd-b57e-bcd48378e345', 'a9e35752-6a0e-4110-a32a-5f2beeafaf84', 'הנקודה שבה תעלות נתרן נפתחות מסיבית ויוצרות דפולריזציה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('82b98a09-a7e3-4fa9-8c8e-ac36797cb287', 'a9e35752-6a0e-4110-a32a-5f2beeafaf84', 'הנקודה שבה תעלות אשלגן נסגרות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('801cd67a-424a-4bf7-bf78-eb9add1aa817', 'a9e35752-6a0e-4110-a32a-5f2beeafaf84', 'הנקודה שבה הסידן יוצא מהתא', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('82b8f75b-09e0-42c3-84cb-0abc68864069', 'a9e35752-6a0e-4110-a32a-5f2beeafaf84', 'פוטנציאל המנוחה', false, 4, NOW());


-- Question 481: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '6b6fd8c5-1873-4aa1-9783-ccb629cf37cc',
    'מהם שלושת המרכיבים העיקריים של הדם?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'הדם מורכב משלושה סוגי תאים עיקריים: אריתרוציטים (תאי דם אדומים), לויקוציטים (תאי דם לבנים) וטרומבוציטים (טסיות דם).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('eec92e79-139a-4a43-9856-0f9a05033ffd', '6b6fd8c5-1873-4aa1-9783-ccb629cf37cc', 'אריתרוציטים, לויקוציטים וטרומבוציטים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f8781c4c-666d-4621-90c3-5c95a6d8c48f', '6b6fd8c5-1873-4aa1-9783-ccb629cf37cc', 'פלסמה, סרום ומים בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fcf91796-caea-43e5-9755-66f15272c318', '6b6fd8c5-1873-4aa1-9783-ccb629cf37cc', 'חלבונים, שומנים ופחמימות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c6ccc063-c937-4c1e-afd2-fd6e21fbad83', '6b6fd8c5-1873-4aa1-9783-ccb629cf37cc', 'חמצן, פחמן דו-חמצני ומים', false, 4, NOW());


-- Question 482: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '8dd4506e-1ad5-4034-866d-f23009da85f0',
    'מה תפקידם של אריתרוציטים?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'אריתרוציטים (תאי דם אדומים) מכילים המוגלובין ותפקידם להסיע חמצן לרקמות ופחמן דו-חמצני חזרה לריאות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c838ace6-e795-413a-86b8-ede166c30af9', '8dd4506e-1ad5-4034-866d-f23009da85f0', 'הסעת חמצן ופחמן דו-חמצני', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5e8d0a00-cfad-4907-9a65-a370232720ed', '8dd4506e-1ad5-4034-866d-f23009da85f0', 'הגנה מפני זיהומים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fffe7081-2e6d-4007-976c-a1c2a092baf6', '8dd4506e-1ad5-4034-866d-f23009da85f0', 'קרישת דם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('295ea074-0c55-4d2f-adda-6e326a26f90a', '8dd4506e-1ad5-4034-866d-f23009da85f0', 'ייצור הורמונים', false, 4, NOW());


-- Question 483: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '804f7f32-57bb-43a4-a53e-577154d96b75',
    'מה תפקידם של לויקוציטים?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'לויקוציטים (תאי דם לבנים) הם חלק ממערכת החיסון ותפקידם להילחם בזיהומים ובמחוללי מחלות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('20cadfce-1daa-4802-82a6-d1c13d67cede', '804f7f32-57bb-43a4-a53e-577154d96b75', 'הגנה מפני זיהומים וחיסון', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ab39da5d-a1a4-4ebc-8fc7-9a265e76d831', '804f7f32-57bb-43a4-a53e-577154d96b75', 'הסעת חמצן', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2f6f3dbf-bbc6-436e-a2a3-904d9f315c3b', '804f7f32-57bb-43a4-a53e-577154d96b75', 'קרישת דם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c40c8961-a1fc-437d-8ab2-1f7986e2d26c', '804f7f32-57bb-43a4-a53e-577154d96b75', 'ויסות לחץ הדם', false, 4, NOW());


-- Question 484: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'bb416fc3-4d1d-4b73-849f-c2af78cc2a8e',
    'מה תפקידן של טסיות הדם?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'טסיות הדם (טרומבוציטים) הן שברי תא שתפקידן קרישת דם ותיקון פגיעות בדופן כלי הדם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('36710212-2db9-4cfb-8c6b-61be553c9643', 'bb416fc3-4d1d-4b73-849f-c2af78cc2a8e', 'קרישת דם ותיקון פגיעות בכלי דם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('69dd4730-29d6-4608-b5d8-972dce0dee5f', 'bb416fc3-4d1d-4b73-849f-c2af78cc2a8e', 'הסעת חמצן', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('66bb1895-d960-4119-8c1a-3d89baba4061', 'bb416fc3-4d1d-4b73-849f-c2af78cc2a8e', 'הגנה מפני חיידקים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6bbdf69d-96b2-4822-b878-b2c56dc9a0d0', 'bb416fc3-4d1d-4b73-849f-c2af78cc2a8e', 'ייצור אנרגיה', false, 4, NOW());


-- Question 485: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '09c7361d-1bd5-41fe-ac3f-2717e5edb332',
    'כמה זמן חיות טסיות הדם?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'טסיות הדם נוצרות במח העצם, בריאות ובטחול וזמן החיים שלהן הוא עד 10 ימים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cde6edaa-2ca2-4c9a-a9d2-7f1afd04168d', '09c7361d-1bd5-41fe-ac3f-2717e5edb332', 'עד 10 ימים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e5529ab0-afab-4d98-a051-7f089873c928', '09c7361d-1bd5-41fe-ac3f-2717e5edb332', 'עד 120 ימים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7e3a4e05-79a5-439a-9fa6-07c9c4b153e6', '09c7361d-1bd5-41fe-ac3f-2717e5edb332', 'עד 24 שעות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1f1c59f1-251c-4060-afcb-f4f89373f937', '09c7361d-1bd5-41fe-ac3f-2717e5edb332', 'עד שנה אחת', false, 4, NOW());


-- Question 486: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1574ff1a-3450-4631-9a16-e286c3bc15c7',
    'מהו פיברינוגן?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'פיברינוגן הוא חלבון קרישה לא פעיל בפלסמה. ''נוגן'' משמעותו ''לא פעיל'' ולכן צריך להצטרף אליו חומר שיהפוך אותו לפעיל.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d16edcb7-d973-43fa-af88-8925c83b6803', '1574ff1a-3450-4631-9a16-e286c3bc15c7', 'חלבון קרישה לא פעיל בפלסמה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0e5b2068-ef50-4ad5-bca5-463f551475e5', '1574ff1a-3450-4631-9a16-e286c3bc15c7', 'טסיות דם פעילות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9c3ef06f-669b-4761-9c98-19dce7950a0e', '1574ff1a-3450-4631-9a16-e286c3bc15c7', 'תא דם לבן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f2e2e58e-50b2-4b14-81d7-10bec25fbda7', '1574ff1a-3450-4631-9a16-e286c3bc15c7', 'אנזים מפרק קרישים', false, 4, NOW());


-- Question 487: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '3f3494e3-2ca0-4dd8-a279-356068df8517',
    'כמה זמן לאחר פגיעה בכלי דם מגיעות הטסיות למקום?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    '1-5 שניות לאחר פגיעה בכלי דם, יגיעו הטסיות למקום האירוע וייצמדו אחת לשניה ולדופן כלי הדם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('780c17de-a5f2-44f2-babc-91d093c1d47e', '3f3494e3-2ca0-4dd8-a279-356068df8517', '1-5 שניות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4994bd3b-1ed8-4799-8066-f90ddf99dbcc', '3f3494e3-2ca0-4dd8-a279-356068df8517', '1-5 דקות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c3c4b8fe-8169-4ec9-9344-07f3659c1795', '3f3494e3-2ca0-4dd8-a279-356068df8517', '10-15 שניות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('12943c99-0db9-41ad-9d48-e9f4b7493574', '3f3494e3-2ca0-4dd8-a279-356068df8517', '30 שניות', false, 4, NOW());


-- Question 488: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '51aa02ca-4848-4006-b453-d2d3e3f0fca4',
    'איזה חלבון נושאים האריתרוציטים?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'על כל אריתרוציט יש מאות אלפי מולקולות חלבון מסוג המוגלובין שתפקידן לשאת חמצן.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('90372b01-0484-49a6-b843-ea48803ce34f', '51aa02ca-4848-4006-b453-d2d3e3f0fca4', 'המוגלובין', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('521b6e01-295b-4a50-b5a8-0129fd92f94c', '51aa02ca-4848-4006-b453-d2d3e3f0fca4', 'אלבומין', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d2eee6b2-7cb0-4ac7-81e8-d93486a67d5d', '51aa02ca-4848-4006-b453-d2d3e3f0fca4', 'פיברינוגן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2f037bc2-8887-4a33-b36c-d0d8f3f8270b', '51aa02ca-4848-4006-b453-d2d3e3f0fca4', 'אינסולין', false, 4, NOW());


-- Question 489: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '6818f504-28ac-440d-ba40-3107090248a6',
    'מהי אנמיה?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'אנמיה מוגדרת כפחות מ-10 מ"ג המוגלובין או ירידה/שינוי בנפח תאי דם אדומים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('be594093-b32b-46c6-8cd4-dc8376d54fbf', '6818f504-28ac-440d-ba40-3107090248a6', 'פחות מ-10 מ"ג המוגלובין או ירידה בנפח תאי דם אדומים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1893343e-e78e-4d1e-816a-47ed6a2dcf3e', '6818f504-28ac-440d-ba40-3107090248a6', 'עודף בתאי דם אדומים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c03a5103-51cc-4a04-b537-5c88c3846c2c', '6818f504-28ac-440d-ba40-3107090248a6', 'מחסור בתאי דם לבנים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('838aba27-8c46-466b-bd77-46aec21ec05d', '6818f504-28ac-440d-ba40-3107090248a6', 'עודף בטסיות דם', false, 4, NOW());


-- Question 490: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '189cc0b4-6432-4c5b-88a8-1530217745b0',
    'מהו Hemolysis?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'Hemolysis הוא הרס של תאי דם בדרך שאינה טבעית (כלומר בדם) כאילו כדוריות הדם ''מתאבדות''.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('16cbf84c-6d33-4db2-a476-ae0391361190', '189cc0b4-6432-4c5b-88a8-1530217745b0', 'הרס של תאי דם בדרך שאינה טבעית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('50117e8d-f905-4bf2-95c4-9b3d4c976b94', '189cc0b4-6432-4c5b-88a8-1530217745b0', 'ייצור יתר של תאי דם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('25264e2f-9440-4b4f-b98b-6786bcd7658a', '189cc0b4-6432-4c5b-88a8-1530217745b0', 'קרישת דם מוגברת', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1812b8a0-3eaf-462d-93af-128761e151d9', '189cc0b4-6432-4c5b-88a8-1530217745b0', 'ספיגת חמצן מוגברת', false, 4, NOW());


-- Question 491: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c4da9a1e-0e4e-45a9-a5ee-c4cc0ae597be',
    'איפה נוצרים תאי הדם?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'תאי הדם נוצרים בעיקר במח העצם - תאי דם אדומים במח עצם אדום, תאי דם לבנים במח עצם צהוב, וטסיות בשניהם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e214077e-28e6-458d-acf6-7f40835d8deb', 'c4da9a1e-0e4e-45a9-a5ee-c4cc0ae597be', 'במח העצם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7913c733-c947-445e-acad-5f0c04c64b53', 'c4da9a1e-0e4e-45a9-a5ee-c4cc0ae597be', 'בכבד בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c60df21a-3e09-4a4d-8830-d184d2f64088', 'c4da9a1e-0e4e-45a9-a5ee-c4cc0ae597be', 'בטחול בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a90660ca-4525-4a03-9721-3bedbf5f1213', 'c4da9a1e-0e4e-45a9-a5ee-c4cc0ae597be', 'בריאות', false, 4, NOW());


-- Question 492: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '77407eee-738c-452f-abcf-136431b9e0e0',
    'מהי קסקדת הקרישה?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'קסקדת הקרישה היא תהליך בן ארבעה שלבים שכולל הגעת טסיות, הידבקותן, יצירת קריש ותיקון הפגיעה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1767e615-0d9d-4e19-819a-f6872eff6c6a', '77407eee-738c-452f-abcf-136431b9e0e0', 'תהליך רב שלבי של קרישת דם ותיקון פגיעות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('92ae3a17-9a25-4705-8d02-b39cf9955092', '77407eee-738c-452f-abcf-136431b9e0e0', 'פירוק קרישי דם בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('040e43da-b4a1-4033-8ad2-bea7660bbbcd', '77407eee-738c-452f-abcf-136431b9e0e0', 'ייצור תאי דם חדשים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1564192d-4928-470a-aa43-e8c901336323', '77407eee-738c-452f-abcf-136431b9e0e0', 'הפרשת הורמונים מהטסיות', false, 4, NOW());


-- Question 493: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '64a3004c-c29b-4a4a-b83c-3bed0743fd1f',
    'מהו תפקיד הברורצפטורים בקרוטידים ובקשת האאורטה?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'בקרוטידים ובקשת האאורטה יש ברורצפטורים שברגע שהם מזהים לחץ דם גבוה או נמוך הם שולחים עצבוב למוח.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('36d89e81-5185-4008-831b-602ab507cd12', '64a3004c-c29b-4a4a-b83c-3bed0743fd1f', 'זיהוי שינויים בלחץ הדם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9a0ceb8f-30c6-4022-a6db-db3b75751c8d', '64a3004c-c29b-4a4a-b83c-3bed0743fd1f', 'זיהוי רמת חמצן בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('76728a7d-2fcf-46ec-9479-aaa51c69c049', '64a3004c-c29b-4a4a-b83c-3bed0743fd1f', 'זיהוי רמת סוכר בדם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6d1f1d8f-4ee8-4576-92e8-d88ffc05031d', '64a3004c-c29b-4a4a-b83c-3bed0743fd1f', 'זיהוי טמפרטורת הגוף', false, 4, NOW());


-- Question 494: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd00d579f-0175-4cf4-88b1-506b58821170',
    'מה קובע את קשת האאורטה?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'קשת האאורטה היא גמישה וקובעת את התנגודת הפריפרית היחסית בזמן יציאת הדם מהחדר השמאלי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6bee02a8-8d19-4635-9d9a-425bc9c04256', 'd00d579f-0175-4cf4-88b1-506b58821170', 'התנגודת הפריפרית היחסית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f1e384ea-d6dc-44b7-af9e-1a6aea04d0e2', 'd00d579f-0175-4cf4-88b1-506b58821170', 'קצב הלב בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ecde8e81-7849-4507-9f36-66d76b24cb1c', 'd00d579f-0175-4cf4-88b1-506b58821170', 'רמת החמצן בדם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1dd18f0d-a8be-4ec2-a7df-1ef1aa75650c', 'd00d579f-0175-4cf4-88b1-506b58821170', 'טמפרטורת הדם', false, 4, NOW());


-- Question 495: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'f60e33d7-978b-4c19-b433-dda195eec7a1',
    'מהו Hypovolemic Shock?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'Hypovolemic Shock הוא הלם היפו-וולמי, הנגרם מאובדן משמעותי של נפח הדם או נוזלים בגוף.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c13b84fb-ae0c-4338-a039-91f2ec02ed37', 'f60e33d7-978b-4c19-b433-dda195eec7a1', 'הלם על רקע אובדן נפח דם או נוזלים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('301975e1-46b3-4a25-8105-6d11d2dc71ae', 'f60e33d7-978b-4c19-b433-dda195eec7a1', 'הלם על רקע אי ספיקת לב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('be33c649-869f-4ac0-831a-6de5bdec4570', 'f60e33d7-978b-4c19-b433-dda195eec7a1', 'הלם על רקע זיהום', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('51b61e45-d05d-432b-9fa9-414684b0aa22', 'f60e33d7-978b-4c19-b433-dda195eec7a1', 'הלם על רקע אלרגי', false, 4, NOW());


-- Question 496: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '55c2e494-113e-409a-8da7-256ef16e6f4d',
    'מהו Cardiogenic Shock?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'Cardiogenic Shock הוא הלם לבבי בו לחץ הדם כבר כל כך נמוך שכל מנגנוני הפיצוי קרסו, יש בצקת ריאות ולחץ נמוך.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('31020907-76c4-457f-bd80-c88b00d35ca5', '55c2e494-113e-409a-8da7-256ef16e6f4d', 'הלם לבבי עם בצקת ריאות ולחץ דם נמוך', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8461fd60-35b3-428f-968b-6b4572d8a293', '55c2e494-113e-409a-8da7-256ef16e6f4d', 'הלם על רקע דימום חיצוני', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('92a45b71-f3c4-4fa3-8902-a4a1caf0b721', '55c2e494-113e-409a-8da7-256ef16e6f4d', 'הלם על רקע זיהום סיסטמי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('445368ca-6779-43cb-b416-228e19afb8bb', '55c2e494-113e-409a-8da7-256ef16e6f4d', 'הלם על רקע אלרגי חמור', false, 4, NOW());


-- Question 497: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c5584755-0519-4004-ad74-50b79828eb4d',
    'מה ההבדל בין Compensated Shock ל-Uncompensated Shock?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'Compensated Shock (Pre-Shock) הוא הלם מפוצה עם מנגנוני פיצוי פעילים, ואילו Uncompensated Shock הוא כשהמנגנונים קרסו.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1a02f0e1-2218-4ba4-9b29-af67e5435cc6', 'c5584755-0519-4004-ad74-50b79828eb4d', 'ב-Compensated מנגנוני פיצוי פעילים, ב-Uncompensated הם קרסו', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('184c2317-d67f-42ed-99c6-09ecd5f0f86d', 'c5584755-0519-4004-ad74-50b79828eb4d', 'ב-Compensated יש לחץ דם נמוך, ב-Uncompensated לחץ תקין', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('96cce03d-cbee-46c0-ad91-c9529b900f5a', 'c5584755-0519-4004-ad74-50b79828eb4d', 'ב-Compensated יש אובדן הכרה, ב-Uncompensated לא', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('03651a48-4b1d-4fb9-aa27-5ed3c1ab5bed', 'c5584755-0519-4004-ad74-50b79828eb4d', 'אין הבדל, זה אותו מצב', false, 4, NOW());


-- Question 498: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '0f0e377d-91f2-40a3-9561-85b8fbc83482',
    'מהו Distributive Shock?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'Distributive Shock הוא הלם המאופיין בהרחבת כלי דם והפרעה בחלוקת הדם, כמו בהלם ספטי או אנפילקטי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3af13c27-acca-4a45-94bc-c10014c41a3f', '0f0e377d-91f2-40a3-9561-85b8fbc83482', 'הלם עקב הרחבת כלי דם והפרעה בחלוקת הדם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3ff65e08-e743-46e2-8afb-297fb5e4def5', '0f0e377d-91f2-40a3-9561-85b8fbc83482', 'הלם עקב אובדן דם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('45c064a2-d042-4fa6-860e-40415cdad195', '0f0e377d-91f2-40a3-9561-85b8fbc83482', 'הלם עקב אי ספיקת לב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0125ab27-25c5-4318-b0c5-9645e7ad6c6c', '0f0e377d-91f2-40a3-9561-85b8fbc83482', 'הלם עקב חסימה של כלי דם ריאתיים', false, 4, NOW());


-- Question 499: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '5330138e-da70-4db3-bc53-98b417e52dca',
    'מהו Obstructive Shock?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'Obstructive Shock הוא הלם הנגרם מחסימה מכנית לזרימת הדם, כמו ב-PE, Cardiac Tamponade או Tension Pneumothorax.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c70aa466-9b58-42e4-8ee7-7dff4657e0f1', '5330138e-da70-4db3-bc53-98b417e52dca', 'הלם עקב חסימה מכנית לזרימת הדם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('05b9dc1d-d052-4138-b880-82ca76ab98de', '5330138e-da70-4db3-bc53-98b417e52dca', 'הלם עקב זיהום', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('aef66451-4fa3-4b79-bc10-1b2004ae0b9e', '5330138e-da70-4db3-bc53-98b417e52dca', 'הלם עקב אלרגיה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c253c64a-d717-48a5-85aa-4957f2949558', '5330138e-da70-4db3-bc53-98b417e52dca', 'הלם עקב דימום פנימי', false, 4, NOW());


-- Question 500: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'b10446a3-42e9-460a-b202-d04e0c99f277',
    'מהי היפרטנציה?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'היפרטנציה (Hypertension) היא מצב של לחץ דם גבוה באופן כרוני.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b56679bd-2ac7-4c42-8116-b748619231a3', 'b10446a3-42e9-460a-b202-d04e0c99f277', 'לחץ דם גבוה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5013c6a7-e0b0-49d2-88d9-58f901789abf', 'b10446a3-42e9-460a-b202-d04e0c99f277', 'לחץ דם נמוך', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('022a8a9c-d93f-4cfd-a08f-314b9a5297a2', 'b10446a3-42e9-460a-b202-d04e0c99f277', 'לחץ דם תקין', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('00fb47ff-b023-4f0e-ba4c-bf2b724f7cb2', 'b10446a3-42e9-460a-b202-d04e0c99f277', 'הפרעת קצב לב', false, 4, NOW());


-- Question 501: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '401a9b5f-4214-4aa9-bed5-41c4631c543c',
    'מהי היפוטנציה?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'היפוטנציה (Hypotension) היא מצב של לחץ דם נמוך שעלול להוביל להלם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('15e729d8-7dce-4cd2-93ca-8bfb5a5afd52', '401a9b5f-4214-4aa9-bed5-41c4631c543c', 'לחץ דם נמוך', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0ad76b8e-1e39-4b27-9f2a-500a2cce908b', '401a9b5f-4214-4aa9-bed5-41c4631c543c', 'לחץ דם גבוה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9cd3a789-e84f-4144-807f-88127bdb0e00', '401a9b5f-4214-4aa9-bed5-41c4631c543c', 'לחץ דם תקין', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('be4a6ac2-bf37-43bb-ae27-4df6082d4ba3', '401a9b5f-4214-4aa9-bed5-41c4631c543c', 'הפרעת קצב לב', false, 4, NOW());


-- Question 502: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'fdea4f88-ba7a-4890-b6af-9b932e40964c',
    'מהו Hypertension Crisis?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'Hypertension Crisis הוא משבר בו לחץ הדם עולה בצורה מאוד משמעותית ברמה מסכנת חיים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5df7e287-598c-4b66-9e56-c422a52c031b', 'fdea4f88-ba7a-4890-b6af-9b932e40964c', 'עלייה משמעותית ומסכנת חיים בלחץ הדם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('be9588ff-c726-4dc8-a999-f2a0e6b28813', 'fdea4f88-ba7a-4890-b6af-9b932e40964c', 'ירידה חדה בלחץ הדם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8e590f2c-9c7f-40fb-903a-ad9d5fa607a0', 'fdea4f88-ba7a-4890-b6af-9b932e40964c', 'לחץ דם תקין עם תסמינים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1890e6f0-6f30-4af1-ada8-1557f1b0eaa0', 'fdea4f88-ba7a-4890-b6af-9b932e40964c', 'הפרעת קצב חמורה', false, 4, NOW());


-- Question 503: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '6456cea4-b2bf-4c40-8bd0-586c141ab934',
    'מהם סוגי כלי הדם העיקריים?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'כלי הדם העיקריים הם עורקים (מוציאים דם מהלב), ורידים (מחזירים דם ללב) וקפילרות (מעבר חומרים ברקמות).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cd8c1145-4bf4-4b71-8683-70c0d74c252d', '6456cea4-b2bf-4c40-8bd0-586c141ab934', 'עורקים, ורידים וקפילרות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('984b6086-5eff-43d5-b64b-24aff9da6550', '6456cea4-b2bf-4c40-8bd0-586c141ab934', 'עורקים ווורידים בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('322d8ff2-bdd7-4b3d-8a77-15f3d6d9ac1e', '6456cea4-b2bf-4c40-8bd0-586c141ab934', 'ורידים וקפילרות בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7d749610-a41f-426b-be80-3a0a5d2971e7', '6456cea4-b2bf-4c40-8bd0-586c141ab934', 'עורקים, לימפה ורידים', false, 4, NOW());


-- Question 504: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '29a263c5-f6be-4a2e-bd51-c3c46d72a521',
    'מה תפקידם של העורקים?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'עורקים מוציאים דם עשיר בחמצן מהלב לרקמות השונות בגוף (למעט העורק הריאתי שמוביל דם דל חמצן).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('866ac186-5df4-4e74-b3e7-ac7c2f8d0d44', '29a263c5-f6be-4a2e-bd51-c3c46d72a521', 'הובלת דם מהלב לרקמות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4697937d-6ffd-4088-b56f-afbc2acf1c07', '29a263c5-f6be-4a2e-bd51-c3c46d72a521', 'החזרת דם מהרקמות ללב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f423f0ac-9bd9-41bc-9c41-ef1e290af0b0', '29a263c5-f6be-4a2e-bd51-c3c46d72a521', 'החלפת חומרים ברקמות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2d9464e6-af33-4808-8b10-6a7f97fb9249', '29a263c5-f6be-4a2e-bd51-c3c46d72a521', 'סינון הדם', false, 4, NOW());


-- Question 505: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '7b2b2be5-bfec-40ac-81d7-92710ff750f8',
    'מה תפקידם של הורידים?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'ורידים מחזירים דם דל חמצן מהרקמות בחזרה ללב (למעט הוריד הריאתי שמחזיר דם עשיר בחמצן).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e18bc1eb-59a8-4db7-922b-c31042150272', '7b2b2be5-bfec-40ac-81d7-92710ff750f8', 'החזרת דם מהרקמות ללב', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5b036f03-8d70-4754-afb2-2b4ac524f024', '7b2b2be5-bfec-40ac-81d7-92710ff750f8', 'הובלת דם מהלב לרקמות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fff050e9-66a3-42b9-a592-0e394ab655c0', '7b2b2be5-bfec-40ac-81d7-92710ff750f8', 'ייצור תאי דם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('45636f55-0167-4b8d-90ca-d39c1f9cc412', '7b2b2be5-bfec-40ac-81d7-92710ff750f8', 'קרישת דם', false, 4, NOW());


-- Question 506: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '82988b6b-dbe4-4a97-9082-5c832ba529a2',
    'מה מתרחש בקפילרות?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'קפילרות הן כלי דם דקים מאוד שדרכם מתרחשת החלפת חומרים, חמצן ופסולת בין הדם לרקמות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('085a7760-52f3-4942-a858-39fdcf8a7166', '82988b6b-dbe4-4a97-9082-5c832ba529a2', 'החלפת חומרים בין הדם לרקמות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c00efe76-14b0-4e6b-97fb-5bf582d641f5', '82988b6b-dbe4-4a97-9082-5c832ba529a2', 'שאיבת דם בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('61d17378-9655-4398-beae-c87a0bef13c8', '82988b6b-dbe4-4a97-9082-5c832ba529a2', 'ייצור תאי דם חדשים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4ec5d80e-803b-49f7-80d1-7dfe4f99d69b', '82988b6b-dbe4-4a97-9082-5c832ba529a2', 'קרישת דם', false, 4, NOW());


-- Question 507: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '55d98c89-faee-4974-836c-12b1ed6c1f09',
    'מהי Aortic Dissection?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'Aortic Dissection היא מצב מסכן חיים בו נוצר קרע בשכבה הפנימית של דופן האאורטה, הגורם לפיצול בין שכבות הדופן.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ac034cce-98dc-4612-a97e-60b533ee1274', '55d98c89-faee-4974-836c-12b1ed6c1f09', 'קרע בדופן האאורטה הגורם לפיצול שכבות דופנו', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3ec42d23-1051-4c50-a317-e4556f760063', '55d98c89-faee-4974-836c-12b1ed6c1f09', 'היצרות של האאורטה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('32fc0a57-203b-4a88-ac34-530e03874a92', '55d98c89-faee-4974-836c-12b1ed6c1f09', 'חסימה מוחלטת של האאורטה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bd858717-f9a8-46c0-a5ae-e32b211fb8cf', '55d98c89-faee-4974-836c-12b1ed6c1f09', 'דלקת באאורטה', false, 4, NOW());


-- Question 508: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'bfbc38e0-eddf-4915-88b6-2e8cb735407a',
    'מהו DVT?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'DVT (Deep Vein Thrombosis) הוא קריש בוריד עמוק, בדרך כלל בירך, שעלול להתנתק ולגרום ל-PE.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('510777e1-84a0-43d9-90a6-24b04930d9ec', 'bfbc38e0-eddf-4915-88b6-2e8cb735407a', 'Deep Vein Thrombosis - קריש בוריד עמוק', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('849c649e-9ebf-4607-aab0-1f36ef3975e4', 'bfbc38e0-eddf-4915-88b6-2e8cb735407a', 'דלקת בעורק עמוק', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8eb6a5dc-3fd2-4cf7-a019-b92675146fc3', 'bfbc38e0-eddf-4915-88b6-2e8cb735407a', 'קריש בעורק ריאתי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c3508aa9-adc7-479a-9658-9ad9df482403', 'bfbc38e0-eddf-4915-88b6-2e8cb735407a', 'הרחבת וריד שטחי', false, 4, NOW());


-- Question 509: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1ca14213-d8bd-44b8-b5fc-c9e4d546563b',
    'מהו PE?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'PE (Pulmonary Embolism) הוא תסחיף ריאתי - קריש שנע דרך מערכת הדם ונתקע באחד מכלי הדם של הריאה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7af54f58-ce87-43c4-93e9-85a501452ffb', '1ca14213-d8bd-44b8-b5fc-c9e4d546563b', 'Pulmonary Embolism - תסחיף ריאתי, קריש בעורק הריאתי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3a002212-ef1e-4ec3-abd7-ef99ad109de4', '1ca14213-d8bd-44b8-b5fc-c9e4d546563b', 'קריש בוריד עמוק', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9150731e-4e48-4376-a277-e122a659e2b3', '1ca14213-d8bd-44b8-b5fc-c9e4d546563b', 'דלקת ריאות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9398e232-ccf5-4aaf-80e5-f6fa52d07e74', '1ca14213-d8bd-44b8-b5fc-c9e4d546563b', 'בצקת ריאות', false, 4, NOW());


-- Question 510: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '2b7dbfc1-ae35-410a-bd78-98e2acf3f651',
    'מהו הקשר בין DVT ל-PE?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'קריש מ-DVT יכול להתנתק, לנוע עם זרם הדם ולהגיע לריאות שם הוא חוסם עורק ריאתי ויוצר PE.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c064479f-dfaf-4514-8582-613ab56442e6', '2b7dbfc1-ae35-410a-bd78-98e2acf3f651', 'DVT יכול להתנתק ולגרום ל-PE', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6208fd68-9253-4bf5-bf0f-5e622acfb8bc', '2b7dbfc1-ae35-410a-bd78-98e2acf3f651', 'PE גורם ל-DVT', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('93b4d32e-b0c5-49eb-9231-6279e9189c4d', '2b7dbfc1-ae35-410a-bd78-98e2acf3f651', 'אין קשר ביניהם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b8f11139-dddc-42d5-b2a5-afea1acbf08f', '2b7dbfc1-ae35-410a-bd78-98e2acf3f651', 'הם אותו מצב בדיוק', false, 4, NOW());


-- Question 511: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '17726b90-3d63-44c5-bc59-ca91286050c0',
    'מהם גורמי הסיכון ל-DVT?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'גורמי סיכון ל-DVT כוללים אי תנועה ממושכת (טיסות, שכיבה), הריון, ניתוחים, COPD וגיל מבוגר.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('85840a15-d421-425d-ae5a-191e6cb26f62', '17726b90-3d63-44c5-bc59-ca91286050c0', 'אי תנועה ממושכת, הריון, ניתוחים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('47e5756a-c22d-4c75-9969-0431ef9947e9', '17726b90-3d63-44c5-bc59-ca91286050c0', 'פעילות גופנית מוגזמת בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('95da6133-39b9-4b44-ba72-98057f86fc1b', '17726b90-3d63-44c5-bc59-ca91286050c0', 'אכילת מזון שומני בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('47647e0c-01bc-4823-8ba7-b783a52e17c2', '17726b90-3d63-44c5-bc59-ca91286050c0', 'חשיפה לקור', false, 4, NOW());


-- Question 512: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '4abd714f-7136-40b9-bb0b-353315a955c8',
    'מהו Peripheral Vascular Disease?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'Peripheral Vascular Disease היא מחלת כלי דם היקפיים המתאפיינת בהיצרות או חסימה של עורקים, בעיקר בגפיים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('11cfc083-84fc-44bc-ac4c-27a5c87e5685', '4abd714f-7136-40b9-bb0b-353315a955c8', 'מחלת כלי דם היקפיים - היצרות או חסימה של עורקים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('077fbfba-844d-498b-b529-473692539494', '4abd714f-7136-40b9-bb0b-353315a955c8', 'דלקת בוורידים שטחיים בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9d809611-a7a5-4ecb-b73c-d149d273bb1c', '4abd714f-7136-40b9-bb0b-353315a955c8', 'הרחבת כלי דם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('402e7784-06a7-4eb2-99d0-8b680622399e', '4abd714f-7136-40b9-bb0b-353315a955c8', 'קרישת דם ריאתית', false, 4, NOW());


-- Question 513: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'f3090baa-5d2c-425e-8e6b-7116b1aceb6f',
    'איזה אנזים נמצא באריתרוציטים ומשמש כבופר נשימתי?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'אריתרוציטים מכילים אנזים שנקרא קרבוניק אנידרז המשמש כבופר נשימתי לאיזון חומצה-בסיס.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3eec31e4-5945-46ea-bba8-98949bb32c44', 'f3090baa-5d2c-425e-8e6b-7116b1aceb6f', 'קרבוניק אנידרז (Carbonic Anhydrase)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('14cfe9c4-893e-4ea9-b8fd-4c0336195079', 'f3090baa-5d2c-425e-8e6b-7116b1aceb6f', 'המוגלובין', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1b152bde-552d-4349-a925-169446fa10d7', 'f3090baa-5d2c-425e-8e6b-7116b1aceb6f', 'פיברינוגן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d54c05e1-4098-4f0c-b928-c5cc1e1a42eb', 'f3090baa-5d2c-425e-8e6b-7116b1aceb6f', 'אלבומין', false, 4, NOW());


-- Question 514: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '7789abff-33c7-4aef-a638-2dae87fb4dd4',
    'מהו תפקיד ההפרין שמייצרים באזופילים?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'הפרין הוא חומר נוגד קרישה שמייצרים באזופילים כדי למנוע קרישת יתר ולאפשר לתאי דם לבנים להגיע למקום הדלקת.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('94478b66-de62-40fe-8c05-7b9c40e3ee59', '7789abff-33c7-4aef-a638-2dae87fb4dd4', 'מניעת קרישת יתר כדי לאפשר לתאי דם לבנים להגיע למקום הדלקת', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('079ebae0-e6eb-49f0-9f07-f894e9aa5358', '7789abff-33c7-4aef-a638-2dae87fb4dd4', 'הגברת קרישה במקום פציעה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c2e046f0-1fa0-449b-b9d0-483dfb7e9995', '7789abff-33c7-4aef-a638-2dae87fb4dd4', 'הרס חיידקים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1bce2308-c130-449d-96f0-59a33567c377', '7789abff-33c7-4aef-a638-2dae87fb4dd4', 'ייצור נוגדנים', false, 4, NOW());


-- Question 515: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '76689ad1-748b-4b2c-be10-03026f3f2dc4',
    'מהם חלבוני הפלסמה העיקריים?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'חלבוני הפלסמה העיקריים הם אלבומין, גלובולינים וגורמי קרישה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('21a788c8-3c30-4212-ab3a-31461971a942', '76689ad1-748b-4b2c-be10-03026f3f2dc4', 'אלבומין, גלובולינים וגורמי קרישה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('561baff8-5ff6-4581-a494-ab212d30f5cb', '76689ad1-748b-4b2c-be10-03026f3f2dc4', 'המוגלובין בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('32a1e468-8fe8-4a2a-8ec5-98faf1b4cb41', '76689ad1-748b-4b2c-be10-03026f3f2dc4', 'אינסולין וגלוקגון', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('34981974-ba02-4c78-b694-9bcc19ad26fd', '76689ad1-748b-4b2c-be10-03026f3f2dc4', 'הורמוני בלוטת התריס', false, 4, NOW());


-- Question 516: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a0a5c1a5-a353-46c7-9fac-917d12ae891d',
    'מה קובע את קבוצת הדם של האדם?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'קבוצת הדם נקבעת על פי נוכחות או היעדר אנטיגנים (A, B) על פני תאי הדם האדומים ונוגדנים בפלסמה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7eaea7b6-105c-4bb2-8bbf-5113fc9299b1', 'a0a5c1a5-a353-46c7-9fac-917d12ae891d', 'אנטיגנים על פני תאי הדם האדומים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ef3e8722-6d20-46b7-85f2-957fdb0eb0e8', 'a0a5c1a5-a353-46c7-9fac-917d12ae891d', 'נוגדנים בפלסמה בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b7fe04ea-6399-44b5-a24a-244bdebbc2f4', 'a0a5c1a5-a353-46c7-9fac-917d12ae891d', 'כמות תאי הדם הלבנים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('88275004-2405-4d13-baa4-913d9ca7b6ea', 'a0a5c1a5-a353-46c7-9fac-917d12ae891d', 'מספר הטסיות', false, 4, NOW());


-- Question 517: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '62ef4cfd-d62c-442d-9fb3-630cd9a43019',
    'מהי סכנה של העברת דם לא תואם?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'העברת דם לא תואם גורמת לתגובה חיסונית חמורה בה נוגדנים תוקפים את תאי הדם הזרים, גורמים להמוליזה ולסיבוכים מסכני חיים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a03c2e3d-7134-4db6-a14b-c99edee427c5', '62ef4cfd-d62c-442d-9fb3-630cd9a43019', 'תגובה חיסונית עם הרס תאי דם והמוליזה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('876c3eb5-1fbd-4119-b940-30ce6f3b87c6', '62ef4cfd-d62c-442d-9fb3-630cd9a43019', 'עודף בתאי דם בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9ead7573-2d59-42a7-a3f8-073e385428b4', '62ef4cfd-d62c-442d-9fb3-630cd9a43019', 'אין סכנה כלשהי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1ec7fad1-311b-4592-aff6-7314a38373e6', '62ef4cfd-d62c-442d-9fb3-630cd9a43019', 'ירידה בלחץ הדם בלבד', false, 4, NOW());


-- Question 518: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a825b4e1-97a6-4d9b-9cbf-12198616ea2a',
    'מהי קבוצת דם אוניברסלית לתרומה?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'קבוצת דם O שלילי נחשבת לאוניברסלית לתרומה כיון שאין עליה אנטיגנים A, B או Rh שעלולים לגרום לתגובה חיסונית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ed09d1ec-f79a-4c2d-84ef-d4650525e92d', 'a825b4e1-97a6-4d9b-9cbf-12198616ea2a', 'O שלילי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a5ad9031-e065-4852-9714-1ff565267074', 'a825b4e1-97a6-4d9b-9cbf-12198616ea2a', 'AB חיובי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c3703e5f-7303-446e-a93b-ce414d84e64c', 'a825b4e1-97a6-4d9b-9cbf-12198616ea2a', 'A חיובי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('dde5b600-1be0-48e6-8b9c-cbe6e5094652', 'a825b4e1-97a6-4d9b-9cbf-12198616ea2a', 'B שלילי', false, 4, NOW());


-- Question 519: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '8614b964-a9f9-418e-bfd9-4e62ade61614',
    'מהי קבוצת דם אוניברסלית לקבלה?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'קבוצת דם AB חיובי נחשבת לאוניברסלית לקבלה כיון שאין בפלסמה שלה נוגדנים נגד A, B או Rh.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bbe9374e-2844-4b5a-8ac9-66a0ec7ff5d8', '8614b964-a9f9-418e-bfd9-4e62ade61614', 'AB חיובי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('be7eee62-b391-4fab-be5d-799d9f2c4e6b', '8614b964-a9f9-418e-bfd9-4e62ade61614', 'O שלילי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('90e51ce9-c25d-474e-ab2c-70940e0b82d6', '8614b964-a9f9-418e-bfd9-4e62ade61614', 'A שלילי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('42f2403e-be7d-4da9-b09e-e1a648398f9c', '8614b964-a9f9-418e-bfd9-4e62ade61614', 'B חיובי', false, 4, NOW());


-- Question 520: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '278553c1-f254-40be-b420-8030772806cd',
    'מהו גורם Rh?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'גורם Rh הוא אנטיגן נוסף על תאי הדם האדומים. נוכחותו קובעת שקבוצת הדם חיובית והיעדרו קובעת שהיא שלילית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('30f80368-924f-4c95-896d-dcea9b404415', '278553c1-f254-40be-b420-8030772806cd', 'אנטיגן נוסף על תאי דם אדומים שקובע חיובי/שלילי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('17bdda5e-b786-483e-a1c6-5bc4a7a94093', '278553c1-f254-40be-b420-8030772806cd', 'נוגדן בפלסמה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5fcd75bf-0df8-48a1-a9bd-bf15f197e47f', '278553c1-f254-40be-b420-8030772806cd', 'סוג של תא דם לבן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f637ebee-b8af-4274-89c0-3ea3ba1f15a9', '278553c1-f254-40be-b420-8030772806cd', 'חלבון קרישה', false, 4, NOW());


-- Question 521: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'fe008f02-a6cd-4c58-977b-69216acd87ba',
    'מהו תהליך הקרישה שמתחיל מפגיעה בדופן כלי הדם?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'תהליך הקרישה כולל 4 שלבים: כיווץ כלי הדם, הצמדות טסיות לדופן, יצירת רשת פיברין לחיזוק הקריש, וריפוי הפציעה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('332e5231-ad24-4614-9dab-83eb0058fa78', 'fe008f02-a6cd-4c58-977b-69216acd87ba', 'כיווץ כלי דם, הצמדות טסיות, יצירת רשת פיברין, ריפוי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cf2d4c09-4832-46d5-9abf-0713353853e2', 'fe008f02-a6cd-4c58-977b-69216acd87ba', 'רק הצמדות טסיות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cac4f61e-7b14-4838-bf35-a4118806e016', 'fe008f02-a6cd-4c58-977b-69216acd87ba', 'רק כיווץ כלי דם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2b1b56a9-07d2-4808-9e5d-6231ba01b6c4', 'fe008f02-a6cd-4c58-977b-69216acd87ba', 'רק יצירת רשת פיברין', false, 4, NOW());


-- Question 522: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'b8163742-cdbd-4f4c-8064-0b84972303ea',
    'מדוע חשוב לשמור על איזון בין קרישה ומניעת קרישה?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'איזון בין קרישה ומניעתה חיוני: קרישה חלשה מדי תגרום לדימום, וקרישה מוגזמת תגרום לקרישים מסוכנים כמו DVT או PE.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('707f902f-828a-4a5c-967e-7ba8588f73cc', 'b8163742-cdbd-4f4c-8064-0b84972303ea', 'כדי למנוע דימום יתר או קרישים מסוכנים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5e200c36-e151-4c07-99c3-9313e4960739', 'b8163742-cdbd-4f4c-8064-0b84972303ea', 'רק למניעת דימום', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f9f13d6a-196f-441f-a74f-07aaa9c2ba74', 'b8163742-cdbd-4f4c-8064-0b84972303ea', 'רק למניעת קרישים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2d892121-fddb-4eda-96ea-8c2dca5f94d6', 'b8163742-cdbd-4f4c-8064-0b84972303ea', 'אין חשיבות לאיזון', false, 4, NOW());


-- Question 523: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '5f9d7c76-72bf-4e49-b966-44dd1bfff860',
    'מהי התגובה הראשונית של הגוף לפגיעה בכלי דם?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'הטסיות זה התגובה הראשונית לפגיעות של כלי הדם, והן מגיעות למקום תוך 1-5 שניות מהפגיעה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7d23d98a-5afe-482a-aebb-5576199ce958', '5f9d7c76-72bf-4e49-b966-44dd1bfff860', 'הצמדות טסיות למקום הפגיעה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1bf15b6c-05ad-4b23-98a5-bc46929f4cac', '5f9d7c76-72bf-4e49-b966-44dd1bfff860', 'הרחבת כלי הדם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6e5ff164-885c-4e1b-89a9-479ef4e4f9f3', '5f9d7c76-72bf-4e49-b966-44dd1bfff860', 'ייצור תאי דם חדשים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fe242068-c89f-407e-bfb1-f2beb8834fd7', '5f9d7c76-72bf-4e49-b966-44dd1bfff860', 'תגובה חיסונית', false, 4, NOW());


-- Question 524: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '0bda8bce-c759-48dd-a56f-7d955807bece',
    'מהו המסתם האורטלי?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'המסתם האורטלי (Aortic Valve) נמצא בין החדר השמאלי לאאורטה ומונע זרימה חוזרת של דם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('43d20832-8727-429b-ba6d-ef4c62615588', '0bda8bce-c759-48dd-a56f-7d955807bece', 'מסתם בין החדר השמאלי לאאורטה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a8c00b3a-1591-40f7-947d-7a9185568e65', '0bda8bce-c759-48dd-a56f-7d955807bece', 'מסתם בין העליה לחדר הימני', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e175903c-cc9e-4637-a3f4-72c0dfc8dedf', '0bda8bce-c759-48dd-a56f-7d955807bece', 'מסתם בין החדר הימני לעורק הריאתי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('21fe6794-36c1-4918-8e1d-27c902b3e5f5', '0bda8bce-c759-48dd-a56f-7d955807bece', 'מסתם בין העליה השמאלית לחדר השמאלי', false, 4, NOW());


-- Question 525: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'db74e085-aa38-4f76-abb6-3dbac8887ed3',
    'מהו Afterload?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'Afterload הוא הלחץ שנוצר בחדר כתוצאה מכיווץ החדר באופן בו הוא גדול מהלחץ באאורטה ולכן פותח את המסתמים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('55442bd6-0583-466e-ba86-8f76d49efaa0', 'db74e085-aa38-4f76-abb6-3dbac8887ed3', 'הלחץ שנוצר בחדר כתוצאה מכיווץ החדר שפותח את המסתמים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9bb080d0-be96-480b-9d46-576434096bfe', 'db74e085-aa38-4f76-abb6-3dbac8887ed3', 'הלחץ בעליות בזמן הדיאסטולה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('292a51b6-f6fb-48f4-90b6-9b4bda02ab1d', 'db74e085-aa38-4f76-abb6-3dbac8887ed3', 'כמות הדם הנותרת בחדר לאחר הסיסטולה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('613bb4df-2b5a-435b-8444-039442a1a1f9', 'db74e085-aa38-4f76-abb6-3dbac8887ed3', 'קצב פעימות הלב', false, 4, NOW());


-- Question 526: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '2eb83b1e-587c-41ca-8a9e-2b74fdd81cdb',
    'מה קורה כאשר הלחץ בחדר יורד מתחת ללחץ שבאאורטה?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'כאשר הלחץ בחדר יורד מתחת ללחץ שבאאורטה, המסתמים הסמילונרים (אורטלי ופולמונרי) נסגרים ומתחיל שלב הדיאסטולה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7e703302-79f5-4456-999d-7666ec0be810', '2eb83b1e-587c-41ca-8a9e-2b74fdd81cdb', 'המסתמים הסמילונרים נסגרים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('507d0b25-ed68-4d52-b531-3bf1895c9abf', '2eb83b1e-587c-41ca-8a9e-2b74fdd81cdb', 'המסתמים נפתחים לרווחה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('32d0935f-7696-4c02-8ee9-dca2cc31473f', '2eb83b1e-587c-41ca-8a9e-2b74fdd81cdb', 'הלב מפסיק לפעום', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fb5c0686-f039-4c63-8a57-ecd1f8a7c0e0', '2eb83b1e-587c-41ca-8a9e-2b74fdd81cdb', 'אין שינוי במצב המסתמים', false, 4, NOW());


-- Question 527: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '0d942e3d-4dae-46e7-a235-c42ef428dbb8',
    'מהו תפקיד הכימורצפטורים בקשת האאורטה?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'כימורצפטורים במוח ובקשת האאורטה מודדים באופן רציף את ריכוז יוני מימן (pH), חמצן ופחמן דו-חמצני.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('aa8f923b-0509-4156-b5fa-057a19780986', '0d942e3d-4dae-46e7-a235-c42ef428dbb8', 'מדידת ריכוז יוני מימן, חמצן ופחמן דו-חמצני', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0fd6db45-4029-40d4-b92d-0555a4efcc01', '0d942e3d-4dae-46e7-a235-c42ef428dbb8', 'מדידת לחץ הדם בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('028047de-f21e-4d13-a12a-c6ebe523e46c', '0d942e3d-4dae-46e7-a235-c42ef428dbb8', 'מדידת קצב הלב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('96f3338b-dd9f-477b-a52f-26074390f25f', '0d942e3d-4dae-46e7-a235-c42ef428dbb8', 'מדידת טמפרטורת הדם', false, 4, NOW());


-- Question 528: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'cc357275-5f05-41b2-a71a-fbf1e9d80fd3',
    'איפה בגוף נמצאים רוב הברורצפטורים?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'ברורצפטורים עיקריים נמצאים בקרוטידים ובקשת האאורטה ומזהים שינויים בלחץ הדם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d8b146ab-d5d9-4ffc-aa7a-bbf983b9e620', 'cc357275-5f05-41b2-a71a-fbf1e9d80fd3', 'בקרוטידים ובקשת האאורטה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('dd9c20fe-be3e-4d39-b36d-b6f97ed3d07f', 'cc357275-5f05-41b2-a71a-fbf1e9d80fd3', 'בכליות בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('24a82dd6-4254-4c6f-8a2b-22963a326e8f', 'cc357275-5f05-41b2-a71a-fbf1e9d80fd3', 'במוח בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7190060f-8750-4843-bb66-50d92d2cebf9', 'cc357275-5f05-41b2-a71a-fbf1e9d80fd3', 'בכבד', false, 4, NOW());


-- Question 529: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '65d1250a-7cbc-4b29-84df-2121bf1978d9',
    'מה תפקידו של קריש הדם בתהליך ריפוי שבר בעצם?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'קריש הדם שנוצר במקום השבר מושך אוסטיובלסטים (תאי בניית עצם) והם ממלאים את מקום השבר.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3755895d-43d1-40b0-8b5e-59c145203347', '65d1250a-7cbc-4b29-84df-2121bf1978d9', 'קריש הדם מושך אוסטיובלסטים שממלאים את מקום השבר', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('10d384e9-902b-4975-ba46-03e25d22e037', '65d1250a-7cbc-4b29-84df-2121bf1978d9', 'קריש הדם מונע ריפוי העצם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ee8fd854-f36a-4a36-a3cd-83dbb1c28745', '65d1250a-7cbc-4b29-84df-2121bf1978d9', 'קריש הדם רק עוצר דימום', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cea935ab-dc55-46f0-8b44-1a7ec0affde8', '65d1250a-7cbc-4b29-84df-2121bf1978d9', 'אין תפקיד לקריש בריפוי עצם', false, 4, NOW());


-- Question 530: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'f0d0de1a-5bc0-46fe-b3c3-8dd5a91ef105',
    'מהו תפקיד נטרופילים?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'נטרופילים הם תאי דם לבנים מקרופגים שתפקידם הגנה מפני זיהומים על ידי בליעה והשמדה של פתוגנים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('64f3a27b-b97b-438c-ac0b-541841ee97c8', 'f0d0de1a-5bc0-46fe-b3c3-8dd5a91ef105', 'תאי דם לבנים מקרופגים להגנה מפני זיהומים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('20424379-4d96-4854-ba3b-54111073c5cf', 'f0d0de1a-5bc0-46fe-b3c3-8dd5a91ef105', 'הסעת חמצן', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5a2de4a5-5c66-48aa-8e60-792018fbe0f5', 'f0d0de1a-5bc0-46fe-b3c3-8dd5a91ef105', 'קרישת דם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f1bd54cd-05aa-4692-8e16-96fc1570ea52', 'f0d0de1a-5bc0-46fe-b3c3-8dd5a91ef105', 'ייצור הורמונים', false, 4, NOW());


-- Question 531: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'e0af7862-1511-49db-8ed4-92421a0ac36a',
    'מהו תפקיד מונוציטים (מקרופגים)?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'מקרופגים (מונוציטים) הם תאי דם גדולים הבולעים פולשים וחומרים שונים ומשמידים אותם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('be2fad45-958e-4557-84b2-db915ab12d5b', 'e0af7862-1511-49db-8ed4-92421a0ac36a', 'תאי דם גדולים הבולעים פולשים וחומרים שונים ומשמידים אותם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c49c428f-1946-443b-9926-d41fefb8c886', 'e0af7862-1511-49db-8ed4-92421a0ac36a', 'ייצור נוגדנים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3cd563d8-7457-4c79-8832-1716b31cc5a3', 'e0af7862-1511-49db-8ed4-92421a0ac36a', 'הסעת חמצן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d8a073eb-cbfb-4a7c-bd4c-fb033888450b', 'e0af7862-1511-49db-8ed4-92421a0ac36a', 'קרישת דם', false, 4, NOW());


-- Question 532: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '07c8c0b6-b919-49b0-be1b-9be85911f141',
    'מדוע מרחיבים כלי דם במקום דלקת?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'הרחבת כלי הדם במקום דלקת מאפשרת ליותר תאי דם לבנים להגיע למקום ולבצע את תפקיד החיסון.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8f97e267-c7dc-466e-a9bc-bdb2616376fd', '07c8c0b6-b919-49b0-be1b-9be85911f141', 'כדי שיותר תאי דם לבנים יגיעו למקום הדלקת', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9b94a543-b9e1-4214-972b-c2cfe1be7659', '07c8c0b6-b919-49b0-be1b-9be85911f141', 'כדי להקטין את הדימום', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('17ee2498-653a-41f7-9c2e-0be7dd95b7c5', '07c8c0b6-b919-49b0-be1b-9be85911f141', 'כדי להגביר קרישה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('54542796-c527-452c-bd43-1b0112d08a9d', '07c8c0b6-b919-49b0-be1b-9be85911f141', 'כדי להוריד לחץ דם', false, 4, NOW());


-- Question 533: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '74bc90ec-0de1-4038-989f-8a65b031fd16',
    'מדוע דלקת וקרישה הם ''חברים טובים''?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'דלקת וקרישה עובדים ביחד: כל פעם שחודר משהו לגוף, יש צורך גם בקרישה לעצור דימום וגם בחיסון לתקוף פתוגנים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('97ffa544-f30e-4bd3-9267-9ab2a14b6d2b', '74bc90ec-0de1-4038-989f-8a65b031fd16', 'כל פעם שחודר משהו לגוף צריך גם לעצור דימום וגם לתקוף פתוגנים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('37ed80da-0991-40d2-aace-7bb8502e9f65', '74bc90ec-0de1-4038-989f-8a65b031fd16', 'הם מונעים זה את זה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4ea35d0b-2b25-4f51-9d6f-202d63a59620', '74bc90ec-0de1-4038-989f-8a65b031fd16', 'אין קשר ביניהם', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('aea4f0e9-a413-4111-8bf5-2965288ad9e8', '74bc90ec-0de1-4038-989f-8a65b031fd16', 'רק הקרישה חשובה', false, 4, NOW());


-- Question 534: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'f21f4cfc-5e70-4e5b-90df-02951c6ec79f',
    'איפה נמצאים מח עצם אדום ומח עצם צהוב?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'מח עצם אדום (מייצר תאי דם אדומים) נמצא בעיקר בעצמות שטוחות, ומח עצם צהוב (מייצר תאי דם לבנים) בעצמות ארוכות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('32aec323-3146-45a3-bc7e-d2157605cb30', 'f21f4cfc-5e70-4e5b-90df-02951c6ec79f', 'מח אדום בעצמות שטוחות, מח צהוב בעצמות ארוכות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8e159363-e02c-4c0d-894e-3e8b33639885', 'f21f4cfc-5e70-4e5b-90df-02951c6ec79f', 'מח אדום בעצמות ארוכות בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('98a2108e-2021-481b-aba0-479b8d08accd', 'f21f4cfc-5e70-4e5b-90df-02951c6ec79f', 'מח צהוב בעצמות שטוחות בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6290f260-9cf7-4607-9fa1-edf4adca464a', 'f21f4cfc-5e70-4e5b-90df-02951c6ec79f', 'שניהם באותם מקומות בדיוק', false, 4, NOW());


-- Question 535: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'fdcdd399-6cf9-463d-a585-27d182f6b163',
    'מהי הסכנה בשימוש ב-PEEP בחולה עם לחץ דם נמוך?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'PEEP מוריד Preload (החזר ורידי ללב), ולכן בחולה עם לחץ דם נמוך כבר, PEEP עלול להוריד עוד יותר את לחץ הדם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0f2b77e5-3650-453f-93df-9372d13f4e7f', 'fdcdd399-6cf9-463d-a585-27d182f6b163', 'PEEP מוריד Preload ויכול להוריד עוד יותר את לחץ הדם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6fe40f88-a320-47e2-95a4-192cd04b3f02', 'fdcdd399-6cf9-463d-a585-27d182f6b163', 'PEEP מעלה לחץ דם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0d5e8b0b-ebff-42b3-b6e7-385b2ad3a468', 'fdcdd399-6cf9-463d-a585-27d182f6b163', 'אין סכנה כלל', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('48361295-4d63-40db-8125-cf556dcb316b', 'fdcdd399-6cf9-463d-a585-27d182f6b163', 'PEEP משפר תמיד את לחץ הדם', false, 4, NOW());


-- Question 536: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '6b9a5764-4156-4e59-93d0-c76a3cf1624c',
    'מה ההשפעה של PEEP על המחזור הריאתי?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'PEEP מוריד Preload בעיקר מצד ימין לשמאל - כלומר מהריאה, במחזור הריאתי אבל גם הסיסטמי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9a7040e1-a90c-4e4a-9fd0-dafb1afa1c80', '6b9a5764-4156-4e59-93d0-c76a3cf1624c', 'מוריד Preload בעיקר מצד ימין לשמאל במחזור הריאתי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0c9f1762-f8d2-4793-86fb-0f3322857151', '6b9a5764-4156-4e59-93d0-c76a3cf1624c', 'מעלה Preload', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8fa38578-1294-466c-bd02-5940154337c9', '6b9a5764-4156-4e59-93d0-c76a3cf1624c', 'לא משפיע על Preload', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2da284bf-85fc-4177-bd3a-b9f27deb7cc5', '6b9a5764-4156-4e59-93d0-c76a3cf1624c', 'משפיע רק על Afterload', false, 4, NOW());


-- Question 537: מערכת קרדיווסקולרית
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '744c9006-40a5-4efb-a49c-1c0acecec811',
    'מהו ערך לחץ דם מתחת אליו לא מומלץ לשים PEEP?',
    (SELECT id FROM public.categories WHERE name = 'מערכת קרדיווסקולרית' LIMIT 1),
    'pending',
    'בדרך כלל פחות מ-90 סיסטולי לא מומלץ לשים PEEP כי הוא עלול להוריד עוד יותר את לחץ הדם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0a48f52c-f6ac-4192-893f-63b705228073', '744c9006-40a5-4efb-a49c-1c0acecec811', 'פחות מ-90 סיסטולי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fffe998e-d541-4684-8fc3-d20fe98263a0', '744c9006-40a5-4efb-a49c-1c0acecec811', 'פחות מ-120 סיסטולי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3109105b-20e7-4dbd-a342-6b4f59a9124a', '744c9006-40a5-4efb-a49c-1c0acecec811', 'פחות מ-60 סיסטולי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b974dfbc-6eea-4877-9733-29b393e73401', '744c9006-40a5-4efb-a49c-1c0acecec811', 'אין הגבלה', false, 4, NOW());


-- Question 538: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'b20a1aa5-5eaf-41c4-9ea2-1cef0a8c1ed1',
    'מהו Diabetes Mellitus Type 1?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Type 1 Diabetes היא סוכרת תלוית אינסולין שבה הלבלב לא מייצר אינסולין כלל עקב פגיעה אוטואימונית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('04299900-cdea-44ed-81ed-80a12235d28a', 'b20a1aa5-5eaf-41c4-9ea2-1cef0a8c1ed1', 'סוכרת תלוית אינסולין - הלבלב לא מייצר אינסולין', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0a6b8f1c-95ef-49b7-a8e2-350a1aa5dd02', 'b20a1aa5-5eaf-41c4-9ea2-1cef0a8c1ed1', 'סוכרת עמידה לאינסולין', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('41fcfa40-3476-4055-b7e9-e0526e5fa7a6', 'b20a1aa5-5eaf-41c4-9ea2-1cef0a8c1ed1', 'סוכרת הריונית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('30423e08-06f7-4190-bb34-ee38b8a7c124', 'b20a1aa5-5eaf-41c4-9ea2-1cef0a8c1ed1', 'סוכרת משנית לתרופות', false, 4, NOW());


-- Question 539: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '70acc544-549a-4165-8e2e-1ebfe1157eb0',
    'מהו Diabetes Mellitus Type 2?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Type 2 Diabetes היא סוכרת בה הגוף מייצר אינסולין אך התאים עמידים לפעולתו (Insulin Resistance).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8e10d13d-4fa6-47b3-bc04-014b19bb33c1', '70acc544-549a-4165-8e2e-1ebfe1157eb0', 'סוכרת עמידה לאינסולין - התאים לא מגיבים לאינסולין', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a4413416-4eb4-47f8-b623-d52c2b39a778', '70acc544-549a-4165-8e2e-1ebfe1157eb0', 'סוכרת תלוית אינסולין', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('57988c06-b0b7-4b25-aeac-9058040a5067', '70acc544-549a-4165-8e2e-1ebfe1157eb0', 'סוכרת הריונית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('56b96d07-5aaa-4956-acdb-4a6cb215dbda', '70acc544-549a-4165-8e2e-1ebfe1157eb0', 'חוסר מוחלט באינסולין', false, 4, NOW());


-- Question 540: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '97217be9-6d5c-4727-879f-13f6f2ab5178',
    'מהו DKA (Diabetic Ketoacidosis)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'DKA היא חמצת קטואצידוטית שבה רמת הסוכר גבוהה מאוד אך התאים לא יכולים להשתמש בו, טיפוסי ל-Type 1.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9a1fd8ce-3bb8-42de-86dc-74557fe1b05b', '97217be9-6d5c-4727-879f-13f6f2ab5178', 'חמצת קטואצידוטית - סיבוך חמור של סוכרת Type 1', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('881ef63d-051e-4894-9654-f38cdfb720f2', '97217be9-6d5c-4727-879f-13f6f2ab5178', 'סיבוך של סוכרת Type 2 בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c8a4a4e5-72da-4796-88ee-b358ed3782ec', '97217be9-6d5c-4727-879f-13f6f2ab5178', 'היפוגליקמיה חמורה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a07b24c3-86d6-4965-9505-38bc85c86667', '97217be9-6d5c-4727-879f-13f6f2ab5178', 'עודף אינסולין בדם', false, 4, NOW());


-- Question 541: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '6825150a-df90-4275-9355-8278c71d6965',
    'מהי היפוגליקמיה (Hypoglycemia)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'היפוגליקמיה היא מצב של רמת סוכר נמוכה מדי בדם, בדרך כלל מתחת ל-60-70 mg/dL, עלול להיות מסכן חיים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('dbdf5e88-c299-45d8-b06d-dcee56da8840', '6825150a-df90-4275-9355-8278c71d6965', 'רמת סוכר נמוכה מדי בדם - מתחת ל-60-70 mg/dL', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3b76dfc3-4739-406f-ad5d-372a5d1a8d9f', '6825150a-df90-4275-9355-8278c71d6965', 'רמת סוכר גבוהה מדי בדם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cfde6540-bbec-4bdb-a275-4498ae3e0ace', '6825150a-df90-4275-9355-8278c71d6965', 'רמת אינסולין גבוהה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f08ac629-8843-4b2e-ae12-fdbfaa98570f', '6825150a-df90-4275-9355-8278c71d6965', 'חוסר באינסולין', false, 4, NOW());


-- Question 542: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '4aaf01f1-0a5b-4599-9988-1b552639acd7',
    'מה הטיפול בהיפוגליקמיה?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'הטיפול בהיפוגליקמיה הוא מתן גלוקוז מיידי - 25g IV אם אין הכרה, או גלוקוז דרך הפה אם החולה בהכרה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('64bd16b7-dfb4-4008-b2a1-49f5864884c0', '4aaf01f1-0a5b-4599-9988-1b552639acd7', 'מתן גלוקוז - 25g IV או גלוקוז דרך הפה אם החולה בהכרה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('03f70a6c-9dcb-4394-9f17-821a77e4aa3d', '4aaf01f1-0a5b-4599-9988-1b552639acd7', 'מתן אינסולין', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('532c620c-b3a1-4d56-8e65-add33c6ea4af', '4aaf01f1-0a5b-4599-9988-1b552639acd7', 'מתן נוזלים בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4bfcb15a-b4f7-4a72-94b0-bbe9ae9d3b3c', '4aaf01f1-0a5b-4599-9988-1b552639acd7', 'המתנה לשיפור ספונטני', false, 4, NOW());


-- Question 543: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '80dcdfa7-11d2-4561-898e-56f07ec3ef01',
    'מהו Stroke (שבץ מוחי)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Stroke הוא הפרעה נוירולוגית חריפה הנגרמת מהפסקה באספקת הדם למוח (איסכמי או המורגי).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('049c4b7e-daac-4b9b-b639-6755a3b41e19', '80dcdfa7-11d2-4561-898e-56f07ec3ef01', 'הפרעה נוירולוגית חריפה עקב הפסקת אספקת הדם למוח', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d2127891-50b8-4639-8036-e3db4ca1a064', '80dcdfa7-11d2-4561-898e-56f07ec3ef01', 'דום לב', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b131a6e6-6a98-45fe-9ae1-eeb72d6808a5', '80dcdfa7-11d2-4561-898e-56f07ec3ef01', 'התקף פרכוסים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ce773085-93eb-4111-b2de-3a85232d074a', '80dcdfa7-11d2-4561-898e-56f07ec3ef01', 'התעלפות זמנית', false, 4, NOW());


-- Question 544: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c693ad59-4b70-4c51-bbf7-1126f3743f69',
    'מהו Ischemic Stroke?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Ischemic Stroke הוא שבץ איסכמי הנגרם מחסימה של כלי דם במוח, מהווה 87% ממקרי השבץ.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4c8e078d-6c9a-47e3-98c8-9c83bfb8e308', 'c693ad59-4b70-4c51-bbf7-1126f3743f69', 'שבץ איסכמי - חסימה של כלי דם במוח המפסיקה את אספקת הדם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a02c9ad0-aa90-4a80-9ece-aa48f8516083', 'c693ad59-4b70-4c51-bbf7-1126f3743f69', 'שבץ דימומי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('14c18049-7876-47e0-a88e-726fe7d1e9aa', 'c693ad59-4b70-4c51-bbf7-1126f3743f69', 'קרע בכלי דם במוח', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b6263e16-98a6-4263-b57c-b5874d6e415e', 'c693ad59-4b70-4c51-bbf7-1126f3743f69', 'חבלת ראש', false, 4, NOW());


-- Question 545: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'aef7fc60-4000-42b7-9e6e-ceffdf5e8fe9',
    'מהו Hemorrhagic Stroke?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Hemorrhagic Stroke הוא שבץ המורגי בו יש קרע בכלי דם והדם יוצא לרקמת המוח.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('857d0f6f-e9ec-42e2-9238-d93e909be6c3', 'aef7fc60-4000-42b7-9e6e-ceffdf5e8fe9', 'שבץ המורגי - דימום במוח עקב קרע בכלי דם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('191bc667-2d52-41d6-9f22-076326f08914', 'aef7fc60-4000-42b7-9e6e-ceffdf5e8fe9', 'חסימה של כלי דם במוח', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('435465ec-1a40-425a-955d-346da39fe864', 'aef7fc60-4000-42b7-9e6e-ceffdf5e8fe9', 'שבץ איסכמי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fdeb181f-5a9e-45c0-af0a-e2d40983177c', 'aef7fc60-4000-42b7-9e6e-ceffdf5e8fe9', 'TIA', false, 4, NOW());


-- Question 546: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '329efdeb-e8d0-4b66-9c9a-b4aaf50a4ee9',
    'מהו TIA (Transient Ischemic Attack)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'TIA הוא שבץ איסכמי חולף שבו התסמינים חולפים תוך 24 שעות, מהווה אזהרה לשבץ אמיתי עתידי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5100111a-842a-4b64-b1f2-e33d73e4b26e', '329efdeb-e8d0-4b66-9c9a-b4aaf50a4ee9', 'שבץ איסכמי חולף - תסמיני שבץ החולפים תוך 24 שעות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('505c8430-d3af-4ac7-aaaa-49e2a45ef8ea', '329efdeb-e8d0-4b66-9c9a-b4aaf50a4ee9', 'שבץ המורגי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e8ad7634-4789-4eb8-8291-1fd377b56e20', '329efdeb-e8d0-4b66-9c9a-b4aaf50a4ee9', 'שבץ קבוע', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cf8defa7-4f55-4184-818b-7204b2c69e9b', '329efdeb-e8d0-4b66-9c9a-b4aaf50a4ee9', 'התעלפות', false, 4, NOW());


-- Question 547: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1c67f4e5-e63d-4e97-b195-9b5cdbc04717',
    'מהו Thrombotic Stroke?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Thrombotic Stroke הוא שבץ שבו קריש נוצר במקום בכלי הדם במוח ונתקע, דומה ל-ACS.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a79b6b63-9c6d-4f7b-ba14-bf3cc9a7f442', '1c67f4e5-e63d-4e97-b195-9b5cdbc04717', 'שבץ תרומבוטי - קריש הנוצר בכלי הדם במקום ונתקע', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('04383261-9939-46ee-bd16-9f2300d845cd', '1c67f4e5-e63d-4e97-b195-9b5cdbc04717', 'קריש נודד ממקום אחר', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2dea0e94-7e45-4d88-ae0a-2227a9e512df', '1c67f4e5-e63d-4e97-b195-9b5cdbc04717', 'שבץ המורגי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3be883e7-5019-41fe-9229-7de56464bacf', '1c67f4e5-e63d-4e97-b195-9b5cdbc04717', 'שבץ על רקע לחץ דם נמוך', false, 4, NOW());


-- Question 548: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '24bd436a-acc5-4c33-a9f5-60f52ead306c',
    'מהו Embolic Stroke?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Embolic Stroke הוא שבץ שבו קריש נודד ממקום אחר (למשל מהלב בפרפור עליות) ונתקע בכלי דם במוח.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2bc6034a-1add-4df6-9c37-a4c2a9a76aa8', '24bd436a-acc5-4c33-a9f5-60f52ead306c', 'שבץ תסחיפי - קריש נודד ממקום אחר בגוף ונתקע במוח', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('36229125-2e49-4b4f-9204-4d29b4cac3a0', '24bd436a-acc5-4c33-a9f5-60f52ead306c', 'קריש הנוצר במקום במוח', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('052df829-9823-49f1-b63a-9cc603242fc5', '24bd436a-acc5-4c33-a9f5-60f52ead306c', 'שבץ המורגי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b27c6d46-5c43-45e5-8a25-5597bb54b2dd', '24bd436a-acc5-4c33-a9f5-60f52ead306c', 'TIA', false, 4, NOW());


-- Question 549: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'de6e9470-aeb4-406a-9938-e8077e6ef691',
    'מהו Seizure (פרכוס)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Seizure (פרכוס) הוא הפרעה פתאומית בהולכת החשמל בקבוצת נוירונים המשפיעה על תנועה, תחושה או הכרה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('52bbcacb-8fdd-4474-bd85-63f032eb9801', 'de6e9470-aeb4-406a-9938-e8077e6ef691', 'הפרעה פתאומית בהולכת החשמל במוח הגורמת לתנועות לא רצוניות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d3906d9d-eed0-4faa-94a8-bcfe246dc959', 'de6e9470-aeb4-406a-9938-e8077e6ef691', 'שבץ מוחי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b560804b-8c0f-40dc-87d3-1fca4d54dd02', 'de6e9470-aeb4-406a-9938-e8077e6ef691', 'התעלפות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('feaba0d1-286a-4070-be99-2142b914501e', 'de6e9470-aeb4-406a-9938-e8077e6ef691', 'כאב ראש חמור', false, 4, NOW());


-- Question 550: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '14be79a0-7f97-4207-8e58-361bc24eb45a',
    'מהי Epilepsy (אפילפסיה)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Epilepsy היא מחלה כרונית המאופיינת בחזרה על 2 פרכוסים או יותר לאורך תקופה של מעל 24 שעות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4b8822f4-b1e0-43aa-a71a-e84e51dc5a7f', '14be79a0-7f97-4207-8e58-361bc24eb45a', 'מחלה כרונית של חזרה על 2 פרכוסים או יותר מעל 24 שעות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('78d1c30b-b0b2-45f1-8b84-a416d2606778', '14be79a0-7f97-4207-8e58-361bc24eb45a', 'פרכוס בודד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5fd7d0ef-0d5e-4841-b841-45392f49be58', '14be79a0-7f97-4207-8e58-361bc24eb45a', 'שבץ מוחי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1b184f7a-512a-4b53-a4e6-a5fa87502e01', '14be79a0-7f97-4207-8e58-361bc24eb45a', 'זיהום במוח', false, 4, NOW());


-- Question 551: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'bb339a94-b7ae-4958-997a-58e7c39baa34',
    'מהו Status Epilepticus?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Status Epilepticus הוא מצב חירום - פרכוס הנמשך מעל 5 דקות או מספר פרכוסים ללא חזרה להכרה ביניהם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('22fec518-b59e-4575-b366-58af00df55d8', 'bb339a94-b7ae-4958-997a-58e7c39baa34', 'פרכוס הנמשך מעל 5 דקות או מספר פרכוסים ללא חזרה להכרה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1842b360-40d6-4dfb-a721-f40361d474dd', 'bb339a94-b7ae-4958-997a-58e7c39baa34', 'פרכוס קצר של דקה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fdcebcef-ec43-4720-8264-8551238c5a56', 'bb339a94-b7ae-4958-997a-58e7c39baa34', 'פרכוס חלקי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('03255ae9-77fe-4f42-8c63-29cfa3596665', 'bb339a94-b7ae-4958-997a-58e7c39baa34', 'התעלפות ממושכת', false, 4, NOW());


-- Question 552: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '651ef68f-d92c-4055-8909-e9d7fd30650e',
    'מהו Tonic-Clonic Seizure?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Tonic-Clonic Seizure הוא פרכוס כללי עם שלב טוני (התקשות) ושלב קלוני (רעידות/קפיצות).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5e77c534-68b6-4106-b17a-7f8193c878b6', '651ef68f-d92c-4055-8909-e9d7fd30650e', 'פרכוס טוני-קלוני (Grand Mal) - פרכוס כללי עם התקשות ורעידות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('50127494-b49e-4cb7-82df-237a3826c198', '651ef68f-d92c-4055-8909-e9d7fd30650e', 'פרכוס חלקי פשוט', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ce7a988c-f237-477c-9f59-9f64fa192980', '651ef68f-d92c-4055-8909-e9d7fd30650e', 'היעדר קצר (Petit Mal)', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2863a1c8-9389-4ec5-a6f0-0af95580297e', '651ef68f-d92c-4055-8909-e9d7fd30650e', 'פרכוס מיוקלוני', false, 4, NOW());


-- Question 553: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '4dd594cf-03cc-4293-9c13-b4c1d5f2f7fc',
    'מה הטיפול בפרכוסים?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'הטיפול כולל בדיקת סוכר, הגנה על החולה מפני פגיעה, ובמידת הצורך מתן בנזודיאזפינים כמו מידאזולם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5d55db3d-e733-44c8-a7b6-f8d889cce77e', '4dd594cf-03cc-4293-9c13-b4c1d5f2f7fc', 'בדיקת סוכר, הגנה על החולה, ומתן בנזודיאזפינים (מידאזולם)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2526cd8d-24f8-40e8-97ff-64f5885ed169', '4dd594cf-03cc-4293-9c13-b4c1d5f2f7fc', 'ריסון פיזי של החולה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('60bce93e-efc0-4746-93b8-091e871426b6', '4dd594cf-03cc-4293-9c13-b4c1d5f2f7fc', 'מתן אינסולין', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6a47b76b-119d-438e-ba2c-dd663e3b5cae', '4dd594cf-03cc-4293-9c13-b4c1d5f2f7fc', 'מתן אספירין', false, 4, NOW());


-- Question 554: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'fbef3527-d423-4d2c-9d28-7852ac8ba7d7',
    'מהו Syncope (התעלפות)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Syncope היא התעלפות - אובדן הכרה זמני עקב אספקת דם לקויה (היפו-פרפוזיה) למוח.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('38bb45e1-5f7c-4fcd-aa63-6979632e23f6', 'fbef3527-d423-4d2c-9d28-7852ac8ba7d7', 'אובדן הכרה זמני עקב היפו-פרפוזיה מוחית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d8026246-4cb3-4bd6-b881-3a2642794fd1', 'fbef3527-d423-4d2c-9d28-7852ac8ba7d7', 'פרכוס', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c3e7ac52-836c-4df0-8ac4-048ff1d6d8aa', 'fbef3527-d423-4d2c-9d28-7852ac8ba7d7', 'שבץ מוחי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b4fd53af-be8d-41c9-975b-f73bb4347276', 'fbef3527-d423-4d2c-9d28-7852ac8ba7d7', 'דום לב', false, 4, NOW());


-- Question 555: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'f0e3772d-1cee-4b1e-af4a-19d048e6d8e5',
    'איך מבדלים בין Syncope לבין Seizure?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'ב-Syncope אין תנועות טוני-קלוניות, החזרה להכרה מהירה יחסית, ואין מצב פוסט-איקטלי ממושך.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9e868cb2-9383-490d-a137-e22551554505', 'f0e3772d-1cee-4b1e-af4a-19d048e6d8e5', 'ב-Syncope אין תנועות טוני-קלוניות, החזרה להכרה מהירה, אין מצב פוסט-איקטלי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9b2d55a7-6374-428e-8e7c-d5a034e3c864', 'f0e3772d-1cee-4b1e-af4a-19d048e6d8e5', 'אי אפשר להבדיל בינהם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('76922baf-96df-4f71-a505-16788f3026fd', 'f0e3772d-1cee-4b1e-af4a-19d048e6d8e5', 'ב-Syncope תמיד יש נשיכת לשון', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('eef31abe-2cd1-448d-8bfb-67f03d58d465', 'f0e3772d-1cee-4b1e-af4a-19d048e6d8e5', 'ב-Seizure החולה תמיד בהכרה', false, 4, NOW());


-- Question 556: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a0fa4158-57ef-4c90-b2cf-82f8f94d72f2',
    'מהו Sepsis (ספסיס)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Sepsis הוא זיהום כללי בדם (לרוב חיידקי או ויראלי) המוביל להלם ספטי, הרחבת כלי דם ולכשל איברים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('67570ff2-65e1-487a-9c30-3772d9781ff9', 'a0fa4158-57ef-4c90-b2cf-82f8f94d72f2', 'זיהום כללי בדם המוביל להלם ספטי ולכשל איברים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cc766c6d-f397-4379-ab95-d1a7ac40060f', 'a0fa4158-57ef-4c90-b2cf-82f8f94d72f2', 'זיהום מקומי בעור', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('65dfbc80-87c5-4c1c-9712-7b5a780ac80c', 'a0fa4158-57ef-4c90-b2cf-82f8f94d72f2', 'דלקת ריאות בלבד', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6cbe18b3-48ff-4953-ac2e-1e9e9ddeeb28', 'a0fa4158-57ef-4c90-b2cf-82f8f94d72f2', 'זיהום בשתן', false, 4, NOW());


-- Question 557: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '35ae0872-64cb-4454-8d45-e08b47f49dad',
    'מהם הסימנים של ספסיס?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'ספסיס מתבטא בחום, דופק מהיר, לחץ דם נמוך (הלם ספטי), נשימה מהירה ושינויי הכרה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ad2378a8-62ce-4f7b-9f83-9f441d71446d', '35ae0872-64cb-4454-8d45-e08b47f49dad', 'חום, דופק מהיר, לחץ דם נמוך, נשימה מהירה, שינוי מצב הכרה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('361a9c0b-2f53-4565-b8a3-18292349e4de', '35ae0872-64cb-4454-8d45-e08b47f49dad', 'רק חום גבוה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5f29758f-0042-40bd-97fc-c73bad0ca108', '35ae0872-64cb-4454-8d45-e08b47f49dad', 'רק לחץ דם נמוך', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('de66f728-b5c3-45b7-a38b-473095518822', '35ae0872-64cb-4454-8d45-e08b47f49dad', 'רק כאבי בטן', false, 4, NOW());


-- Question 558: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'eefd277f-6eef-4af1-864b-b92d4aaad3d6',
    'מהו Septic Shock?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Septic Shock הוא שלב מתקדם של ספסיס עם לחץ דם נמוך משמעותי שלא מגיב למתן נוזלים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('07f63078-4aa6-4fbf-a975-32eb648e0888', 'eefd277f-6eef-4af1-864b-b92d4aaad3d6', 'הלם ספטי - ספסיס עם לחץ דם נמוך שלא מגיב לנוזלים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5c10dbc7-2258-4206-9c8d-400ed9502380', 'eefd277f-6eef-4af1-864b-b92d4aaad3d6', 'ספסיס ללא ירידה בלחץ דם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('34c6ff17-8e95-4e9b-b976-f67d0d0c2229', 'eefd277f-6eef-4af1-864b-b92d4aaad3d6', 'זיהום מקומי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f1a31687-6edc-4994-95fd-584fd44771bc', 'eefd277f-6eef-4af1-864b-b92d4aaad3d6', 'דלקת קלה', false, 4, NOW());


-- Question 559: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'daa07fc1-2930-4286-83c8-51d7567932d6',
    'מהי Pneumonia (דלקת ריאות)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Pneumonia היא דלקת ריאות - זיהום בחלק שמשתתף בחילוף הגזים, עלול להוביל לספסיס.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('75f7517c-4c8c-4134-8d4b-11a8913a73e1', 'daa07fc1-2930-4286-83c8-51d7567932d6', 'זיהום בחלק שמשתתף בחילוף הגזים של הריאה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2573dbdc-0ab6-45e5-9309-2707bb7d3957', 'daa07fc1-2930-4286-83c8-51d7567932d6', 'בצקת ריאות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('dcf20eff-b9eb-4e4b-a0c8-aa0bbfd27eb7', 'daa07fc1-2930-4286-83c8-51d7567932d6', 'אסטמה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('10d21a9b-cbe4-4830-b4f6-b867b0dae565', 'daa07fc1-2930-4286-83c8-51d7567932d6', 'תסחיף ריאתי', false, 4, NOW());


-- Question 560: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'e98b6456-57ed-4705-bd80-02baf3268ee6',
    'מהי Hypertension (יתר לחץ דם)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Hypertension היא מצב של לחץ דם גבוה מהנורמה באופן כרוני, גורם סיכון למחלות לב ושבץ.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e5088bde-70dc-4ad6-ac8c-ea58e02d2c23', 'e98b6456-57ed-4705-bd80-02baf3268ee6', 'לחץ דם גבוה מהנורמה באופן כרוני', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b42caf81-d001-4038-b47e-8a70eb3463dd', 'e98b6456-57ed-4705-bd80-02baf3268ee6', 'לחץ דם נמוך', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('89348f51-74ff-4fb7-b868-b86d03fe05ae', 'e98b6456-57ed-4705-bd80-02baf3268ee6', 'לחץ דם תקין', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('63994ae5-c7cf-45e0-9b96-8e5807c430b0', 'e98b6456-57ed-4705-bd80-02baf3268ee6', 'הפרעת קצב', false, 4, NOW());


-- Question 561: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'cb959d52-334c-48ac-bedd-fee8b9ad5836',
    'מהו Hypertensive Crisis?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Hypertensive Crisis הוא משבר בו לחץ הדם עולה בצורה חדה ומאוד משמעותית ברמה מסכנת חיים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d85af753-7b27-4d16-b0ab-f12a4ded45fa', 'cb959d52-334c-48ac-bedd-fee8b9ad5836', 'משבר יתר לחץ דם - עלייה חדה ומסכנת חיים בלחץ הדם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d116bf7e-17d9-4556-83e6-135d7c1a2e8c', 'cb959d52-334c-48ac-bedd-fee8b9ad5836', 'לחץ דם נמוך מאוד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('47fdf8b5-f9b9-4741-8733-72279827b1ed', 'cb959d52-334c-48ac-bedd-fee8b9ad5836', 'לחץ דם גבוה קל', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('830df739-ab10-4366-b049-2f2e1b3d1e70', 'cb959d52-334c-48ac-bedd-fee8b9ad5836', 'הפרעת קצב', false, 4, NOW());


-- Question 562: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c6ec5cf2-0789-4f96-a142-0d029d041800',
    'מהי Renal Failure (אי ספיקת כליות)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Renal Failure היא אי ספיקת כליות - מצב בו הכליות לא מסוגלות לסנן פסולת מהדם באופן יעיל.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a24da20d-1564-4990-8c66-051176e8e205', 'c6ec5cf2-0789-4f96-a142-0d029d041800', 'אי יכולת הכליות לסנן פסולת מהדם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ca644ceb-eb3a-4514-a5dd-0c9e6dcafd18', 'c6ec5cf2-0789-4f96-a142-0d029d041800', 'זיהום בכליות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5f770638-0fdd-490e-aaad-4cbb7d09189d', 'c6ec5cf2-0789-4f96-a142-0d029d041800', 'אבנים בכליות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f0174a18-b17a-4bec-a6a9-9fe62ffcff3f', 'c6ec5cf2-0789-4f96-a142-0d029d041800', 'דלקת שלפוחית השתן', false, 4, NOW());


-- Question 563: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1779a440-1efb-4d9b-8574-c0d85268ecf2',
    'מהו Acute Renal Failure?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Acute Renal Failure היא אי ספיקת כליות חריפה שמתפתחת במהירות, לעומת כרונית שמתפתחת לאורך זמן.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('96e1ae62-6dd6-4f9f-aa25-64f256409c7b', '1779a440-1efb-4d9b-8574-c0d85268ecf2', 'אי ספיקת כליות חריפה שמתרחשת פתאום', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('dcba9e08-cc91-4ac1-b5e8-13958852f910', '1779a440-1efb-4d9b-8574-c0d85268ecf2', 'אי ספיקת כליות כרונית', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('58e4e95d-183f-4543-93ea-30e3eb70229a', '1779a440-1efb-4d9b-8574-c0d85268ecf2', 'זיהום בשתן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c66f8bd7-38bb-4ad2-a86c-c15f8f4235ec', '1779a440-1efb-4d9b-8574-c0d85268ecf2', 'אבנים בכליות', false, 4, NOW());


-- Question 564: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '15b9d3ae-cd16-4f1a-993d-cc5569c95840',
    'מהו Chronic Renal Failure?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Chronic Renal Failure היא אי ספיקת כליות כרונית המתפתחת לאורך זמן ומובילה לצורך בדיאליזה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('41123fdf-52f1-4224-9ac9-305d6fe4493f', '15b9d3ae-cd16-4f1a-993d-cc5569c95840', 'אי ספיקת כליות כרונית המתפתחת לאורך זמן', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2a005566-69d5-414d-8f1b-e8a8b6f63ff4', '15b9d3ae-cd16-4f1a-993d-cc5569c95840', 'אי ספיקת כליות חריפה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4832687e-b067-4469-9ba3-6d89fc8f3b0b', '15b9d3ae-cd16-4f1a-993d-cc5569c95840', 'זיהום כרוני בשתן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9acaa4f1-21c2-470a-9218-e77ffceb43ae', '15b9d3ae-cd16-4f1a-993d-cc5569c95840', 'דלקת כליות זמנית', false, 4, NOW());


-- Question 565: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'e1559974-c8da-4d92-8871-7be8a7fce61e',
    'מהו GI Bleeding (דימום במערכת העיכול)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'GI Bleeding הוא דימום במערכת העיכול, יכול להיות מהמערכת העיכולית העליונה או התחתונה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('953f76d0-237b-41a4-b880-069b2d5def91', 'e1559974-c8da-4d92-8871-7be8a7fce61e', 'דימום מהמערכת העיכולית - עליונה או תחתונה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fbdc67db-ab1d-4c3a-aaf1-d18cdb8ee63a', 'e1559974-c8da-4d92-8871-7be8a7fce61e', 'כאבי בטן בלבד', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('93f44956-3769-4901-8d17-ef5b2a9b45a6', 'e1559974-c8da-4d92-8871-7be8a7fce61e', 'שלשול', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9dca5937-4c4a-427e-b7ae-9f41bb426fec', 'e1559974-c8da-4d92-8871-7be8a7fce61e', 'עצירות', false, 4, NOW());


-- Question 566: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '6164cbcb-c16d-404d-8381-9d8fec9f009b',
    'מהו Upper GI Bleeding?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Upper GI Bleeding הוא דימום מהמערכת העיכולית העליונה (ושט, קיבה, תריסריון), לרוב מכיב או דליות ושט.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c1af61ca-dfac-4783-81e2-c27a26e23595', '6164cbcb-c16d-404d-8381-9d8fec9f009b', 'דימום מהמערכת העיכולית העליונה - קיבה, ושט, תריסריון', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('38b832b8-a614-4a6c-90fa-c736128cb8a6', '6164cbcb-c16d-404d-8381-9d8fec9f009b', 'דימום מהמעי הגס', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c8c02daf-7768-4d9d-a9d9-2a86568315d4', '6164cbcb-c16d-404d-8381-9d8fec9f009b', 'דימום מהפי הטבעת', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('287ca75c-24bc-46f8-b3dd-39a5ad27b8bf', '6164cbcb-c16d-404d-8381-9d8fec9f009b', 'דימום מהכבד', false, 4, NOW());


-- Question 567: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'df4fdb1f-a41a-498b-9499-5264cba90250',
    'מהו Lower GI Bleeding?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Lower GI Bleeding הוא דימום מהמערכת העיכולית התחתונה (מעי דק, מעי גס, פי טבעת).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('08821df2-95fd-45fa-ae82-a783e9049a24', 'df4fdb1f-a41a-498b-9499-5264cba90250', 'דימום מהמערכת העיכולית התחתונה - מעי דק, מעי גס, פי טבעת', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0df94f70-9165-4aca-af18-4725a03ba27f', 'df4fdb1f-a41a-498b-9499-5264cba90250', 'דימום מהקיבה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('110170f4-6e40-486d-8aef-ccf7c8b5a85a', 'df4fdb1f-a41a-498b-9499-5264cba90250', 'דימום מהושט', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3f09560d-ae9a-4511-85c4-4bbc19349cad', 'df4fdb1f-a41a-498b-9499-5264cba90250', 'דימום מהתריסריון', false, 4, NOW());


-- Question 568: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '011fb613-235b-4977-af76-2fd88f83379b',
    'מהו Anaphylaxis (אנאפילקסיס)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Anaphylaxis היא תגובה אלרגית חמורה ומסכנת חיים המצריכה טיפול מיידי באדרנלין.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6a015e9d-c360-487e-a0d2-26b62b2d30f2', '011fb613-235b-4977-af76-2fd88f83379b', 'תגובה אלרגית חמורה ומסכנת חיים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f53dc9f0-da8a-4c8f-af49-860da5bd02cc', '011fb613-235b-4977-af76-2fd88f83379b', 'תגובה אלרגית קלה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6b47ee00-5249-41bc-b8a5-6c2c6bab4389', '011fb613-235b-4977-af76-2fd88f83379b', 'זיהום', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4da623c6-c2ac-4b85-8633-cca1d5764873', '011fb613-235b-4977-af76-2fd88f83379b', 'דלקת', false, 4, NOW());


-- Question 569: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'c74838d5-016c-4104-a5cc-20d93c358319',
    'מה הטיפול באנאפילקסיס?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'הטיפול העיקרי באנאפילקסיס הוא מתן אדרנלין IM מיידי, בנוסף לחמצן, נוזלים, אנטיהיסטמינים וסטרואידים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8eba19ed-70df-45f2-9dbb-a312cb62f91a', 'c74838d5-016c-4104-a5cc-20d93c358319', 'אדרנלין (Epinephrine) IM מיידי, חמצן, נוזלים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8cf0d730-c148-45b6-96b8-6400010c8765', 'c74838d5-016c-4104-a5cc-20d93c358319', 'רק אנטיהיסטמינים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c64b72b6-13ab-470b-959f-8ab0fe7f4add', 'c74838d5-016c-4104-a5cc-20d93c358319', 'רק סטרואידים', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('58f07370-8128-4617-adef-f6562c26d079', 'c74838d5-016c-4104-a5cc-20d93c358319', 'רק חמצן', false, 4, NOW());


-- Question 570: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'fd4e811c-7e9e-4746-8ea5-3349298f6245',
    'מהי Thyroid Gland (בלוטת התריס)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Thyroid Gland היא בלוטת התריס - בלוטה אנדוקרינית המפרישה הורמונים המווסתים את קצב המטבוליזם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4b5318d4-9525-43fd-ae02-9512c7489a0f', 'fd4e811c-7e9e-4746-8ea5-3349298f6245', 'בלוטה אנדוקרינית המפרישה הורמונים המווסתים מטבוליזם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a4099bb7-eae5-4956-b441-330fde0b03f4', 'fd4e811c-7e9e-4746-8ea5-3349298f6245', 'בלוטת יותרת הכליה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b9839feb-cb3a-449b-8b07-9a80eeaa0b50', 'fd4e811c-7e9e-4746-8ea5-3349298f6245', 'הלבלב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ac4d9e0b-fe0e-40ca-adf2-ad987e4ae054', 'fd4e811c-7e9e-4746-8ea5-3349298f6245', 'בלוטת יותרת המוח', false, 4, NOW());


-- Question 571: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '8c349dd1-017b-4fdc-95a5-a9ae394afb5a',
    'מהו Hyperthyroidism?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Hyperthyroidism הוא יתר פעילות של בלוטת התריס הגורם למטבוליזם מוגבר, דופק מהיר וירידה במשקל.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fcb5348f-66c2-4877-9db4-f7372b4167a7', '8c349dd1-017b-4fdc-95a5-a9ae394afb5a', 'יתר פעילות של בלוטת התריס - מטבוליזם מוגבר', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ce3d34bd-943d-456e-b7cf-b7f5406d483f', '8c349dd1-017b-4fdc-95a5-a9ae394afb5a', 'תת פעילות של בלוטת התריס', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7987f549-a1dd-40e5-abf2-e273a8b59a56', '8c349dd1-017b-4fdc-95a5-a9ae394afb5a', 'סוכרת', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a79040e9-9099-41c1-9ba7-c11f63211ed4', '8c349dd1-017b-4fdc-95a5-a9ae394afb5a', 'מחלת כליות', false, 4, NOW());


-- Question 572: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'db20b34b-1d20-4a67-ada8-a7d5822b4697',
    'מהו Hypothyroidism?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Hypothyroidism הוא תת פעילות של בלוטת התריס הגורם למטבוליזם איטי, עייפות ועלייה במשקל.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('aed331d0-537c-4a12-817f-4636702a7ce2', 'db20b34b-1d20-4a67-ada8-a7d5822b4697', 'תת פעילות של בלוטת התריס - מטבוליזם איטי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ab77a586-8883-4f18-be10-652637806358', 'db20b34b-1d20-4a67-ada8-a7d5822b4697', 'יתר פעילות של בלוטת התריס', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2bb3e62a-2c8a-4b17-84f2-383401bb89e2', 'db20b34b-1d20-4a67-ada8-a7d5822b4697', 'סוכרת', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('20c011fd-80c6-4e8b-b159-b7b133b7f09a', 'db20b34b-1d20-4a67-ada8-a7d5822b4697', 'מחלת כבד', false, 4, NOW());


-- Question 573: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'f9cf84f4-1393-4073-ae75-6371799d6cb8',
    'מהי Adrenal Gland (בלוטת יותרת הכליה)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Adrenal Gland היא בלוטת יותרת הכליה - מפרישה אדרנלין (מדולה) וקורטיזול (קורטקס).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4f5aeb6e-6b04-4390-84ba-b1c164f66900', 'f9cf84f4-1393-4073-ae75-6371799d6cb8', 'בלוטה אנדוקרינית המפרישה אדרנלין וקורטיזול', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('85574773-d34f-4b8d-b987-eefaca5a8699', 'f9cf84f4-1393-4073-ae75-6371799d6cb8', 'בלוטת התריס', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e6b445af-a882-46e8-859a-8eef9fb938ce', 'f9cf84f4-1393-4073-ae75-6371799d6cb8', 'הלבלב', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9795466a-dc75-40d1-8e31-41bcb40b3cb8', 'f9cf84f4-1393-4073-ae75-6371799d6cb8', 'הכליות', false, 4, NOW());


-- Question 574: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'faeeb457-54f3-4753-a8ea-70696b3981ba',
    'מהו Addison''s Disease?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Addison''s Disease היא אי ספיקת בלוטת יותרת הכליה הגורמת לחוסר בקורטיזול ואלדוסטרון.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('342d196f-3581-4837-a3d4-23e5f5e46549', 'faeeb457-54f3-4753-a8ea-70696b3981ba', 'אי ספיקת בלוטת יותרת הכליה - חוסר בקורטיזול', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('499d7bef-99d0-4c59-8cdb-7ba1d37cc1f5', 'faeeb457-54f3-4753-a8ea-70696b3981ba', 'יתר פעילות של יותרת הכליה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('46b43974-0805-4ccd-a3a5-bda7065c8b3e', 'faeeb457-54f3-4753-a8ea-70696b3981ba', 'מחלת תריס', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('21d94b56-d698-4359-96c6-8be20f4fc905', 'faeeb457-54f3-4753-a8ea-70696b3981ba', 'סוכרת', false, 4, NOW());


-- Question 575: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'e25f60a6-72a7-4681-9e27-f30e3254c664',
    'מהו Heat Stroke (מכת חום)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Heat Stroke היא מכת חום - מצב חירום של חום גוף מעל 40°C עם כשל במנגנון ויסות החום.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c9041271-15cf-43a4-8063-8be6118e3475', 'e25f60a6-72a7-4681-9e27-f30e3254c664', 'מצב חירום של חום גוף מעל 40°C עם אובדן יכולת ויסות חום', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('abe54a37-9563-4e84-aca1-9548606883c9', 'e25f60a6-72a7-4681-9e27-f30e3254c664', 'חום קל', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('83d2ecdd-50db-4b32-a834-bf010c5e36da', 'e25f60a6-72a7-4681-9e27-f30e3254c664', 'היפותרמיה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a8cd47b1-8ba8-44ef-bd56-5bdaf8f001b6', 'e25f60a6-72a7-4681-9e27-f30e3254c664', 'התייבשות קלה', false, 4, NOW());


-- Question 576: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '0d8ee21c-a978-4463-b602-945fcb80f09e',
    'מה הטיפול במכת חום?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'הטיפול במכת חום הוא קירור מיידי - הרטבה, אוורור, נוזלים IV, הסרת בגדים ופינוי מהיר.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2c48c57e-9f9e-4c46-84f3-24337d7ffdca', '0d8ee21c-a978-4463-b602-945fcb80f09e', 'קירור מיידי - הרטבה, אוורור, נוזלים IV, הסרת בגדים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4f78c39e-ed55-4398-8d3c-9566931335a9', '0d8ee21c-a978-4463-b602-945fcb80f09e', 'חימום החולה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5c76f1ed-472f-4957-9384-7f707b17dddc', '0d8ee21c-a978-4463-b602-945fcb80f09e', 'רק מתן נוזלים דרך הפה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('349278c4-60b8-4265-b811-a87fbac283d5', '0d8ee21c-a978-4463-b602-945fcb80f09e', 'המתנה לשיפור ספונטני', false, 4, NOW());


-- Question 577: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'b18d87a5-4d93-4531-baae-7ffd9eb81013',
    'מהי Hypothermia (היפותרמיה)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Hypothermia היא היפותרמיה - חום גוף נמוך מ-35°C, עלול להיות מסכן חיים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d71ab24c-354f-434f-b7b1-48cf660d5927', 'b18d87a5-4d93-4531-baae-7ffd9eb81013', 'חום גוף נמוך מ-35°C', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('acdfd667-3e59-42a3-9f22-b62527977438', 'b18d87a5-4d93-4531-baae-7ffd9eb81013', 'חום גוף מעל 40°C', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('16bdc2b9-1068-4214-9d06-b5a62fedd184', 'b18d87a5-4d93-4531-baae-7ffd9eb81013', 'חום גוף תקין', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('89728518-bd56-4b48-8754-b02d4bd1150f', 'b18d87a5-4d93-4531-baae-7ffd9eb81013', 'חום קל', false, 4, NOW());


-- Question 578: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '2af424e3-b58b-4562-ab46-98097dd3a5a6',
    'מה הטיפול בהיפותרמיה?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'הטיפול בהיפותרמיה הוא חימום הדרגתי, הסרת בגדים רטובים, נוזלים חמים IV ושמיכות מבודדות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e74ae978-3865-44b1-a3ff-b3c9dce2956b', '2af424e3-b58b-4562-ab46-98097dd3a5a6', 'חימום הדרגתי, נוזלים חמים IV, הסרת בגדים רטובים, שמיכות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('42d477ee-ba60-4f5b-89f5-2e67b99b7e95', '2af424e3-b58b-4562-ab46-98097dd3a5a6', 'קירור החולה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ee9572b8-f6a1-4036-bb6e-84cd1b1ace79', '2af424e3-b58b-4562-ab46-98097dd3a5a6', 'שפשוף עור חזק', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('32995a9a-65cd-4fc1-9859-f62c63f103db', '2af424e3-b58b-4562-ab46-98097dd3a5a6', 'מתן משקאות קרים', false, 4, NOW());


-- Question 579: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'acca79da-3a38-4c59-8e6b-c72878516c98',
    'מהו Toxicology (טוקסיקולוגיה)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Toxicology היא טוקסיקולוגיה - תחום העוסק בהרעלות, חומרים רעילים וטיפול בהם.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2db397ce-1c61-42d9-8e0f-013297ef5f8a', 'acca79da-3a38-4c59-8e6b-c72878516c98', 'תחום העוסק בהרעלות וחומרים רעילים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('50e057a2-2fb5-4bfd-bff2-0bd0e0d7cb7b', 'acca79da-3a38-4c59-8e6b-c72878516c98', 'תחום העוסק בזיהומים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bd454842-503e-476c-99f8-33bb48913222', 'acca79da-3a38-4c59-8e6b-c72878516c98', 'תחום העוסק בטראומה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7699a92d-588f-4024-849e-00e888842a47', 'acca79da-3a38-4c59-8e6b-c72878516c98', 'תחום העוסק במחלות לב', false, 4, NOW());


-- Question 580: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '4c724db3-a70a-4698-843d-b177f5a31dbe',
    'מהו Opioid Overdose (מנת יתר אופיואידים)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Opioid Overdose היא מנת יתר של אופיואידים המאופיינת בדיכוי נשימתי, אישונים נקודתיים ושינוי הכרה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3e6e7366-869f-4b99-8dec-63ba4f0dfe36', '4c724db3-a70a-4698-843d-b177f5a31dbe', 'מנת יתר של תרופות אופיאטיות - דיכוי נשימתי, אישונים נקודתיים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1362dc46-7dd3-445c-87ad-8b3f986f8893', '4c724db3-a70a-4698-843d-b177f5a31dbe', 'מנת יתר של אלכוהול', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('59779d26-e421-41fc-b906-812eed8d3e6a', '4c724db3-a70a-4698-843d-b177f5a31dbe', 'מנת יתר של קוקאין', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2202b564-95e9-413c-9859-496a1ceed8d3', '4c724db3-a70a-4698-843d-b177f5a31dbe', 'מנת יתר של בנזודיאזפינים', false, 4, NOW());


-- Question 581: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '787d74bc-4f26-4da0-9c5e-6b5eb084ed3d',
    'מה הטיפול במנת יתר אופיואידים?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'הטיפול הוא מתן Naloxone (Narcan) - אנטגוניסט אופיואידים שמבטל את ההשפעה, בנוסף לתמיכה בנשימה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fa5067bd-5299-466a-b56d-c0a33657243a', '787d74bc-4f26-4da0-9c5e-6b5eb084ed3d', 'Naloxone (Narcan) - אנטגוניסט אופיואידים, תמיכה בנשימה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('52e79811-3256-444f-a509-ae3573f4ee4c', '787d74bc-4f26-4da0-9c5e-6b5eb084ed3d', 'מתן אופיואידים נוספים', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5729cc32-7acf-4e1d-8fa2-435db1ad509a', '787d74bc-4f26-4da0-9c5e-6b5eb084ed3d', 'רק חמצן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('37ecb8c4-4924-4405-9000-295d6799b2dc', '787d74bc-4f26-4da0-9c5e-6b5eb084ed3d', 'המתנה לפירוק עצמי', false, 4, NOW());


-- Question 582: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a61ded22-03c4-4a02-8ce1-4f86762e7701',
    'מהי Pregnancy (הריון)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Pregnancy הוא הריון - מצב פיזיולוגי תקין של נשיאת עובר ברחם לתקופה של כ-40 שבועות.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('f264febd-bf10-44e0-accc-aa0cacf7bcce', 'a61ded22-03c4-4a02-8ce1-4f86762e7701', 'מצב פיזיולוגי של נשיאת עובר ברחם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('680ea58a-c7ec-4524-ba9f-c5e0bf3c8227', 'a61ded22-03c4-4a02-8ce1-4f86762e7701', 'מחלה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('071c414f-bd32-4e6b-899a-6a63f36b3ebf', 'a61ded22-03c4-4a02-8ce1-4f86762e7701', 'זיהום', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0c7aa47b-8972-4a61-bd7a-c998c5eebedc', 'a61ded22-03c4-4a02-8ce1-4f86762e7701', 'גידול', false, 4, NOW());


-- Question 583: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'd7f1bb45-bca4-418c-82a3-846153fedafe',
    'מהו Eclampsia?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Eclampsia היא מצב חמור של פרכוסים בהריון או לאחר לידה על רקע יתר לחץ דם (Pre-eclampsia).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('738b958b-d4b4-44e0-8a6d-6e99cbe0b36d', 'd7f1bb45-bca4-418c-82a3-846153fedafe', 'פרכוסים בהריון או לאחר לידה על רקע יתר לחץ דם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5b1e5e09-5711-46cc-b60c-792589606db1', 'd7f1bb45-bca4-418c-82a3-846153fedafe', 'לחץ דם נמוך בהריון', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8dff25fd-acee-420e-a805-9997657f340c', 'd7f1bb45-bca4-418c-82a3-846153fedafe', 'סוכרת הריונית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1ab32c90-ac46-4ffc-bc63-e8eb95a43ecc', 'd7f1bb45-bca4-418c-82a3-846153fedafe', 'דימום נרתיק', false, 4, NOW());


-- Question 584: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '775cfe5b-27a5-490b-9466-800108aa1086',
    'מהו Ectopic Pregnancy?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Ectopic Pregnancy הוא הריון חוץ רחמי בו העובר מתפתח מחוץ לרחם, בדרך כלל בחצוצרה, מצב מסכן חיים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a843bf86-33ab-42ad-b732-d3453171bce8', '775cfe5b-27a5-490b-9466-800108aa1086', 'הריון חוץ רחמי - העובר מתפתח מחוץ לרחם (לרוב בחצוצרה)', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c713c00d-b169-4056-af0a-a054ad065019', '775cfe5b-27a5-490b-9466-800108aa1086', 'הריון תקין', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d031d2c4-a6dc-4c8e-9fc3-a59a4b1ff887', '775cfe5b-27a5-490b-9466-800108aa1086', 'הפלה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('92978eb7-4211-496c-bdc9-e3dc104f7028', '775cfe5b-27a5-490b-9466-800108aa1086', 'לידה מוקדמת', false, 4, NOW());


-- Question 585: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'f6393d50-8cab-4336-8b7a-4d744de8c846',
    'מהו Pediatric Patient (חולה ילד)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Pediatric Patient הוא חולה ילד - כל חולה מתחת לגיל 18 שנה, הדורש התייחסות ייחודית.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9cf7415c-13be-4d0f-a88d-8c0dfa6669c1', 'f6393d50-8cab-4336-8b7a-4d744de8c846', 'חולה מתחת לגיל 18 שנה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ebc34f40-8d4b-4f88-b061-86d02d0b0849', 'f6393d50-8cab-4336-8b7a-4d744de8c846', 'רק תינוקות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0d2904e6-4fc3-4415-897b-70e4ba28119a', 'f6393d50-8cab-4336-8b7a-4d744de8c846', 'רק ילדים מתחת לגיל 5', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('29c03cf8-0e93-4eb1-88f9-af7ad43f498c', 'f6393d50-8cab-4336-8b7a-4d744de8c846', 'מבוגרים', false, 4, NOW());


-- Question 586: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'b1dfc44c-a244-412f-8cae-2be869207a9f',
    'מהו Febrile Seizure?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Febrile Seizure הוא פרכוס חום - פרכוס השכיח בילדים צעירים (6 חודשים - 5 שנים) על רקע חום גבוה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('31a1bbba-7cdb-46ea-aeac-5eb031b2d6a4', 'b1dfc44c-a244-412f-8cae-2be869207a9f', 'פרכוס חום - פרכוס בילדים על רקע חום גבוה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('bbe39edf-a237-45d6-963f-36f6add07e89', 'b1dfc44c-a244-412f-8cae-2be869207a9f', 'פרכוס ללא חום', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('173aebfa-98dd-40f2-9c6f-6e0f40e7493b', 'b1dfc44c-a244-412f-8cae-2be869207a9f', 'אפילפסיה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('468b1034-c93c-44c6-bea0-db1fecddcb2b', 'b1dfc44c-a244-412f-8cae-2be869207a9f', 'מנינגיטיס', false, 4, NOW());


-- Question 587: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'a6937a86-860d-47c5-abde-2ad14a90c7cd',
    'מהו Fracture (שבר)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Fracture הוא שבר - קרע או שבירה בעצם, דורש קיבוע ובדיקת הדמאה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ac9855ac-4028-4aa3-b78e-afccbd7ddaa3', 'a6937a86-860d-47c5-abde-2ad14a90c7cd', 'קרע בעצם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('429234a0-92f7-45c3-9f25-d1e1f37a0589', 'a6937a86-860d-47c5-abde-2ad14a90c7cd', 'נקע', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2a50909a-a163-4c3b-b3ec-301e9789c38f', 'a6937a86-860d-47c5-abde-2ad14a90c7cd', 'חבלה ברקמות רכות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('497d21fd-b4e8-44b3-9f46-3564cce211c2', 'a6937a86-860d-47c5-abde-2ad14a90c7cd', 'כוויה', false, 4, NOW());


-- Question 588: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    'b6b87f6e-d733-47d2-bea9-acebefc1b783',
    'מהו Compartment Syndrome?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Compartment Syndrome היא תסמונת תא - לחץ מוגבר בתא שרירי הגורם לפגיעה בזרימת דם ועצבים, דורש ניתוח דחוף.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('6cd3634d-3d5e-4f40-b2a8-e4d925e918f6', 'b6b87f6e-d733-47d2-bea9-acebefc1b783', 'לחץ מוגבר בתא שרירי הגורם לפגיעה בזרימת דם ועצבים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e5d87394-522a-4fcb-81ff-93b5c85b1586', 'b6b87f6e-d733-47d2-bea9-acebefc1b783', 'שבר פשוט', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7f5925c2-4d46-4b4c-9b7f-82fbbd2d877f', 'b6b87f6e-d733-47d2-bea9-acebefc1b783', 'נקע', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cb9effe9-7f35-4638-9c5c-908c0e39080f', 'b6b87f6e-d733-47d2-bea9-acebefc1b783', 'חבלת שריר', false, 4, NOW());


-- Question 589: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '001451ed-6bdd-4826-88e0-097def35a433',
    'מהו HHNS (Hyperosmolar Hyperglycemic Non-Ketotic Syndrome)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'HHNS הוא סיבוך של סוכרת Type 2 עם רמת סוכר גבוהה מאוד (מעל 600) אך ללא קטואצידוזה, גורם להתייבשות חמורה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('138680f2-677e-4077-a354-9d06e6b295eb', '001451ed-6bdd-4826-88e0-097def35a433', 'סיבוך של סוכרת Type 2 - סוכר גבוה מאוד ללא קטואצידוזה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('89a5289d-1431-44de-b0a5-507bdca50fc7', '001451ed-6bdd-4826-88e0-097def35a433', 'סיבוך של סוכרת Type 1', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a0e12c56-b241-4bc5-be6d-a506441414a9', '001451ed-6bdd-4826-88e0-097def35a433', 'היפוגליקמיה', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('caf4858d-0f80-48ce-a371-3ac5de9ac3a4', '001451ed-6bdd-4826-88e0-097def35a433', 'DKA', false, 4, NOW());


-- Question 590: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '36a17518-84cb-4412-854d-dacf5cd8a2c1',
    'מהו Bell''s Palsy?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Bell''s Palsy הוא שיתוק פנים היקפי חד צדדי, לרוב זמני, הנגרם בדרך כלל מזיהום ויראלי של עצב הפנים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('585eaab8-c103-4f1d-9463-502140a1e2b9', '36a17518-84cb-4412-854d-dacf5cd8a2c1', 'שיתוק פנים היקפי חד צדדי, לרוב על רקע זיהום ויראלי', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('aa68440a-c0b4-4d01-a833-872d101c7db0', '36a17518-84cb-4412-854d-dacf5cd8a2c1', 'שבץ מוחי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4c8454d3-c74c-4e1a-aa8f-53a868dc8a4f', '36a17518-84cb-4412-854d-dacf5cd8a2c1', 'גידול במוח', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('07d50463-bfe5-401d-bfa1-26d8ed6ae7df', '36a17518-84cb-4412-854d-dacf5cd8a2c1', 'פרכוס', false, 4, NOW());


-- Question 591: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '73b2764e-4240-496a-85bc-a2fa34ad4184',
    'מהי Meningitis (דלקת קרום המוח)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Meningitis היא דלקת קרום המוח - זיהום של הקרומים המכסים את המוח וחוט השדרה, עלול להיות מסכן חיים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('7fe7b44a-ae02-46b9-b9fe-f456067fae6f', '73b2764e-4240-496a-85bc-a2fa34ad4184', 'זיהום של הקרומים המכסים את המוח וחוט השדרה', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('516e31ae-489f-4ae3-8af3-60cf71880f6d', '73b2764e-4240-496a-85bc-a2fa34ad4184', 'שבץ מוחי', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5e9e6f5c-20f3-4545-aea1-c40ab1436831', '73b2764e-4240-496a-85bc-a2fa34ad4184', 'פרכוס', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e202dbea-fde0-4f94-ba81-4233f27cbb7b', '73b2764e-4240-496a-85bc-a2fa34ad4184', 'מיגרנה', false, 4, NOW());


-- Question 592: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '2f394941-2a81-450c-af16-bea735c13d64',
    'מהו Rhabdomyolysis?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Rhabdomyolysis היא התפרקות מסיבית של שריר השלד המשחררת חומרים רעילים (מיוגלובין) לדם ועלולה לגרום לכשל כלייתי.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('96aea5dd-ced9-4f40-a19c-f9d6c7991322', '2f394941-2a81-450c-af16-bea735c13d64', 'התפרקות שריר שמשחררת חומרים רעילים לדם', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('5ccd3ee3-25d7-425e-85e8-b1f9773c8fe8', '2f394941-2a81-450c-af16-bea735c13d64', 'שבר עצם', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d3653571-cc50-449d-aada-2f7f0d0be290', '2f394941-2a81-450c-af16-bea735c13d64', 'נקע שריר', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1a2f7b8a-c519-494c-ad6c-d8d17cb70224', '2f394941-2a81-450c-af16-bea735c13d64', 'חבלת עצב', false, 4, NOW());


-- Question 593: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '1aeff101-5156-4b2a-a68c-ac5fcec839c9',
    'מהי Cellulitis (צלוליטיס)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Cellulitis היא צלוליטיס - דלקת זיהומית חיידקית בעור וברקמות התת עוריות, עלולה להוביל במהירות לספסיס.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('784d718d-ee2a-4118-93a9-8b7fe6cf4a72', '1aeff101-5156-4b2a-a68c-ac5fcec839c9', 'דלקת זיהומית בעור וברקמות התת עוריות', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('cf5c0f60-a621-4bec-af74-78b176cef162', '1aeff101-5156-4b2a-a68c-ac5fcec839c9', 'כוויה', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('e6d838bf-2e3c-4ccf-828b-9ed68f04b9fe', '1aeff101-5156-4b2a-a68c-ac5fcec839c9', 'פצע פתוח', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d5283ff0-5db2-42ce-bd85-d9f2e9d29aba', '1aeff101-5156-4b2a-a68c-ac5fcec839c9', 'פריחה אלרגית', false, 4, NOW());


-- Question 594: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '4225e36b-61b0-49d8-9a89-e8d1a01a211d',
    'מהו Abscess (אבצס)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Abscess הוא אבצס - כיס של מוגלה וזיהום המוקף ברקמה דלקתית, דורש ניקוז ואנטיביוטיקה.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('90264acb-e33a-4274-986c-6d85bd0a07bc', '4225e36b-61b0-49d8-9a89-e8d1a01a211d', 'כיס מוגלה וזיהום מוקף ברקמה דלקתית', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('917e9d4d-5a51-4990-bb41-468a47b432a3', '4225e36b-61b0-49d8-9a89-e8d1a01a211d', 'גידול שפיר', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('152219e0-1192-4d34-b0c6-8ad5ad185716', '4225e36b-61b0-49d8-9a89-e8d1a01a211d', 'פצע פתוח', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('833e70ca-3fa4-4632-9e01-25924de0ce90', '4225e36b-61b0-49d8-9a89-e8d1a01a211d', 'כוויה', false, 4, NOW());


-- Question 595: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '919905e7-944a-422c-b08f-c3f53ff9c045',
    'מהו Hypo-Perfusion Stroke?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Hypo-Perfusion Stroke הוא אוטם מוחי הנגרם מזרימת דם לקויה למוח בשל לחץ דם נמוך מאוד (הלם).',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('fb501f05-264c-4430-90bb-48e6adc498a1', '919905e7-944a-422c-b08f-c3f53ff9c045', 'שבץ על רקע זרימת דם לקויה עקב לחץ דם נמוך מאוד', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c85bb023-d2c2-4f49-a920-0ed210e6c2e6', '919905e7-944a-422c-b08f-c3f53ff9c045', 'שבץ על רקע קריש', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('4503821e-8f39-4666-93c2-e4397cc235ea', '919905e7-944a-422c-b08f-c3f53ff9c045', 'שבץ המורגי', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a188e50d-3d67-488a-baff-e6f11a554509', '919905e7-944a-422c-b08f-c3f53ff9c045', 'TIA', false, 4, NOW());


-- Question 596: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '7db9a647-1e41-4d4d-b8f1-598b649a0ac1',
    'מהו Urinary Tract Infection (UTI)?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'UTI הוא זיהום בדרכי השתן, עלול להתפשט לכליות ולגרום לספסיס אם לא מטופל.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('03d41730-9d77-4501-bc33-801f6f6020fb', '7db9a647-1e41-4d4d-b8f1-598b649a0ac1', 'זיהום בדרכי השתן', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('1083ef4c-7f18-4535-befd-606fc6af7a8e', '7db9a647-1e41-4d4d-b8f1-598b649a0ac1', 'אבנים בכליות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ed5641fc-ba20-4535-92b0-fe1dcf8c5cda', '7db9a647-1e41-4d4d-b8f1-598b649a0ac1', 'אי ספיקת כליות', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('b406532c-ae3d-4ed3-841c-3aa2cb7e6d42', '7db9a647-1e41-4d4d-b8f1-598b649a0ac1', 'זיהום ריאתי', false, 4, NOW());


-- Question 597: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '17d650f5-46fb-4537-a81b-ba2ce3435b02',
    'מהו Pyelonephritis?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Pyelonephritis היא דלקת כליות - זיהום חמור בכליות, לרוב כתוצאה מהתפשטות UTI, עלול לגרום לספסיס.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('d65440a9-c8f5-4de4-9b0f-e6b817affd77', '17d650f5-46fb-4537-a81b-ba2ce3435b02', 'זיהום חמור בכליות, לרוב מסיבוך של UTI', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8b05971c-efb0-4aed-bdf7-3addbeb97d4f', '17d650f5-46fb-4537-a81b-ba2ce3435b02', 'אבנים בכליות', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('0c675db7-84d9-4fa5-8a6e-58a17a7c46c6', '17d650f5-46fb-4537-a81b-ba2ce3435b02', 'אי ספיקת כליות כרונית', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('8c2572f4-ad44-47c1-84ce-72d09b50f3d2', '17d650f5-46fb-4537-a81b-ba2ce3435b02', 'זיהום בשלפוחית השתן בלבד', false, 4, NOW());


-- Question 598: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '620b0523-1d81-4a60-a3d7-00aae523caf8',
    'מהו Anterior Circulation Stroke?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'Anterior Circulation Stroke הוא שבץ במחזור הקדמי, מהווה 80% ממקרי השבץ האיסכמי, פוגע בחלק הקדמי של המוח.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('ce5c72a6-80b3-4500-8cee-f9a8480d39d7', '620b0523-1d81-4a60-a3d7-00aae523caf8', 'השבץ הקלאסי - 80% ממקרי השבץ האיסכמי, פוגע בחלק הקדמי של המוח', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('dde8b77f-1ab0-41af-bdd2-894e32382e92', '620b0523-1d81-4a60-a3d7-00aae523caf8', 'שבץ בחלק האחורי של המוח', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('9b6f14b3-a2e1-44be-b789-d24e5d06ea49', '620b0523-1d81-4a60-a3d7-00aae523caf8', 'שבץ במוח הקטן', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('a900abbc-9264-43ae-ba3f-337fb8af6d74', '620b0523-1d81-4a60-a3d7-00aae523caf8', 'TIA', false, 4, NOW());


-- Question 599: מערכות נוספות
INSERT INTO public.questions (id, question_text, category_id, status, explanation, created_by, created_at, updated_at)
VALUES (
    '9b00f085-d14a-4719-a4d7-1d8097de58a3',
    'למה חולי סוכרת נוטים לספסיס?',
    (SELECT id FROM public.categories WHERE name = 'מערכות נוספות' LIMIT 1),
    'pending',
    'חולי סוכרת נוטים לספסיס פי 3 מאנשים רגילים עקב פגיעה במערכת החיסון ובריפוי פצעים.',
    (SELECT id FROM public.profiles WHERE role = 'admin' LIMIT 1),
    NOW(),
    NOW()
);

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('2ebca54a-e19f-477f-b450-b3f7822328a5', '9b00f085-d14a-4719-a4d7-1d8097de58a3', 'הנטייה לספסיס אצל חולי סוכרת היא פי 3 מאנשים רגילים', true, 1, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('aa32d9b2-10a3-41dc-a349-1402ea4ade2d', '9b00f085-d14a-4719-a4d7-1d8097de58a3', 'אין קשר בין סוכרת לספסיס', false, 2, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('c0dbcc2d-e6ba-444d-88f7-d61697314def', '9b00f085-d14a-4719-a4d7-1d8097de58a3', 'הם חסינים מספסיס', false, 3, NOW());

INSERT INTO public.answers (id, question_id, answer_text, is_correct, order_num, created_at)
VALUES ('3f4e66ee-7b81-4c39-b422-e6319605c79b', '9b00f085-d14a-4719-a4d7-1d8097de58a3', 'הנטייה היא רק פי 1.5', false, 4, NOW());


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
