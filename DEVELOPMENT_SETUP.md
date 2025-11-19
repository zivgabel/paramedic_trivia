# הקמת סביבת פיתוח (Development Environment)

מדריך זה מסביר כיצד להקים סביבת פיתוח נפרדת עם מסד נתונים משלה.

## מבנה הסביבות

- **main branch** → Supabase Production → Vercel Production (`paramedic-trivia.vercel.app`)
- **dev branch** → Supabase Development → Vercel Preview (`paramedic-trivia-git-dev-*.vercel.app`)

---

## שלב 1: יצירת Supabase Project חדש לפיתוח

1. **גש ל-Supabase Dashboard:**
   - https://supabase.com/dashboard

2. **צור פרויקט חדש:**
   - לחץ על "New Project"
   - שם: `trivia-paramedic-dev`
   - Database Password: שמור סיסמה חזקה
   - Region: בחר אזור קרוב (Central EU או US East)
   - לחץ "Create new project"
   - המתן 2-3 דקות שהפרויקט ייווצר

3. **הרץ את סקריפט ההקמה:**
   - בדאשבורד של הפרויקט החדש → לחץ על **SQL Editor**
   - פתח את הקובץ `/supabase/setup-dev.sql` מהפרויקט
   - העתק את **כל התוכן** ללחץ ל-SQL Editor
   - לחץ **RUN** (או F5)
   - המתן שהסקריפט יסתיים (אמור לקחת 5-10 שניות)

4. **קבל את פרטי ההתחברות:**
   - לחץ על **Settings** (⚙️) → **API**
   - העתק:
     - **Project URL** - משהו כמו `https://xxx.supabase.co`
     - **anon/public key** - מפתח ארוך

---

## שלב 2: יצירת Branch חדש

```bash
# צור branch חדש בשם dev
git checkout -b dev

# push ל-GitHub
git push -u origin dev
```

---

## שלב 3: הגדרת Environment Variables ב-Vercel

Vercel יוצר אוטומטית preview deployment לכל branch, אבל צריך להגדיר את ה-environment variables.

### אופציה 1: דרך Vercel Dashboard (מומלץ)

1. **גש ל-Vercel Dashboard:**
   - https://vercel.com/dashboard
   - בחר את הפרויקט `paramedic-trivia`

2. **הגדר Environment Variables:**
   - לחץ על **Settings** → **Environment Variables**

3. **הוסף משתנים ל-dev branch:**

   **משתנה 1:**
   - Key: `NEXT_PUBLIC_SUPABASE_URL`
   - Value: ה-Project URL מהפרויקט החדש (מ-שלב 1.4)
   - Environments: **בחר רק Preview** ✅
   - Branch: הוסף `dev`
   - לחץ Save

   **משתנה 2:**
   - Key: `NEXT_PUBLIC_SUPABASE_ANON_KEY`
   - Value: ה-anon key מהפרויקט החדש (מ-שלב 1.4)
   - Environments: **בחר רק Preview** ✅
   - Branch: הוסף `dev`
   - לחץ Save

4. **אמת שה-Production משתמש בDB הישן:**
   - וודא שיש `NEXT_PUBLIC_SUPABASE_URL` עבור **Production**
   - וודא שיש `NEXT_PUBLIC_SUPABASE_ANON_KEY` עבור **Production**
   - אלה צריכים להצביע על הפרויקט הישן!

### אופציה 2: דרך Vercel CLI (אופציונלי)

```bash
# התקן Vercel CLI
npm i -g vercel

# התחבר
vercel login

# קישור לפרויקט
vercel link

# הוסף environment variables
vercel env add NEXT_PUBLIC_SUPABASE_URL preview dev
# הדבק את ה-URL החדש

vercel env add NEXT_PUBLIC_SUPABASE_ANON_KEY preview dev
# הדבק את ה-key החדש
```

---

## שלב 4: יצירת משתמש Admin

1. **פתח את ה-preview deployment:**
   - אחרי push של dev branch, Vercel ישלח לך קישור
   - או מצא אותו ב-Vercel Dashboard → Deployments
   - משהו כמו: `https://paramedic-trivia-git-dev-zivgabel.vercel.app`

2. **הירשם:**
   - לחץ על "הרשם"
   - מלא פרטים (אימייל, סיסמה, שם)
   - הירשם

3. **אשר אימייל:**
   - לך לאימייל שקיבלת
   - לחץ על קישור האישור
   - **שים לב:** הקישור אולי יפנה ל-localhost
   - אם כן, שנה ידנית ל-URL של ה-preview deployment

4. **שנה תפקיד ל-admin:**
   - חזור ל-Supabase Dashboard (הפרויקט החדש)
   - SQL Editor → הרץ:
   ```sql
   UPDATE public.profiles
   SET role = 'admin'
   WHERE email = 'YOUR_EMAIL@example.com';
   ```

5. **רענן את האתר** - עכשיו יש לך הרשאות admin!

---

## שלב 5: הגדרת Site URL ב-Supabase

כדי שאישור אימייל יעבוד:

1. **Supabase Dashboard** → **Authentication** → **URL Configuration**

2. **Site URL:**
   ```
   https://paramedic-trivia-git-dev-zivgabel.vercel.app
   ```
   (החלף עם ה-URL שלך)

3. **Redirect URLs:**
   ```
   https://paramedic-trivia-git-dev-*.vercel.app/**
   http://localhost:3000/**
   ```

---

## שלב 6: פיתוח מקומי (Local Development)

אם אתה רוצה לפתח מקומית מול ה-DB החדש:

1. **עדכן `.env.local`:**
   ```bash
   NEXT_PUBLIC_SUPABASE_URL=https://xxx.supabase.co
   NEXT_PUBLIC_SUPABASE_ANON_KEY=your-dev-anon-key
   ```

2. **הרץ מקומית:**
   ```bash
   npm run dev
   ```

3. **לפני commit:**
   - **אל תעשה commit של `.env.local`!** (זה ב-.gitignore)

---

## Workflow לפיתוח

```bash
# עבוד על dev branch
git checkout dev

# עשה שינויים...
# בדוק מקומית אם רוצה (npm run dev)

# commit
git add .
git commit -m "Add new feature"

# push - זה אוטומטית יעדכן את ה-preview deployment
git push

# אחרי בדיקה ב-preview - merge ל-main
git checkout main
git merge dev
git push  # זה יעדכן את הפרודקשן
```

---

## שאלות נפוצות

**ש: מה קורה אם אני עושה push ל-dev?**
- Vercel יבנה deployment אוטומטית
- הוא ישתמש ב-Supabase Dev (לפי ה-environment variables)

**ש: מה קורה אם אני עושה push ל-main?**
- Vercel יבנה deployment לפרודקשן
- הוא ישתמש ב-Supabase Production

**ש: איך אני מעתיק שאלות מפרודקשן לפיתוח?**
- אפשר להשתמש ב-Supabase Dashboard → Database → Export/Import
- או להעתיק שאלות באופן ידני דרך SQL

**ש: האם שני ה-DBs משתנים ביחד?**
- לא! הם לחלוטין נפרדים
- שינויים ב-dev לא משפיעים על production

---

## סיכום

✅ יצרת Supabase project חדש לפיתוח
✅ הרצת את setup-dev.sql
✅ יצרת branch `dev`
✅ הגדרת environment variables ב-Vercel
✅ כל push ל-dev → preview deployment עם dev DB
✅ כל push ל-main → production deployment עם production DB

**עכשיו אתה יכול לפתח בבטחה בלי לפגוע בפרודקשן! 🎉**
