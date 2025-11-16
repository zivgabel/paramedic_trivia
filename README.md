# 🎓 טריוויה פארמדיק - מערכת תרגול למבחנים

אפליקציית ווב לתרגול שאלות טריוויה לקורס פארמדיקים, עם מערכת ניהול משתמשים, קטגוריות, ומעקב אחר התקדמות.

## 🌟 תכונות עיקריות

- ✅ **מערכת משתמשים**: רישום, התחברות, וניהול הרשאות (משתמש/מדריך/מנהל)
- 🎮 **משחק טריוויה**: בחירת קטגוריות, מספר שאלות, טיימר, ותמיכה במקלדת
- 📊 **סטטיסטיקות**: מעקב אחר ביצועים, התקדמות, ונקודות חוזק/חולשה
- 🔐 **ניהול שאלות**: הוספת שאלות חדשות עם אישור מדריכים
- 🏆 **מערכת קטגוריות**: ארגון שאלות לפי נושאים
- 📱 **Responsive**: עובד מצוין גם במובייל
- 🌙 **Dark Mode**: תמיכה בערכת צבעים כהה

## 🛠 טכנולוגיות

### Frontend
- **Next.js 14** - React framework עם App Router
- **TypeScript** - Type safety
- **Tailwind CSS** - עיצוב responsive
- **shadcn/ui** - קומפוננטות UI מעוצבות
- **React Query** - ניהול state ו-data fetching
- **Lucide React** - אייקונים

### Backend
- **Supabase** - Backend as a Service
  - PostgreSQL Database
  - Authentication
  - Row Level Security
  - Real-time subscriptions
  - File Storage

### Deployment
- **Vercel** - Frontend hosting (חינמי!)
- **Supabase Cloud** - Backend hosting (חינמי עד 50K משתמשים!)

## 📋 דרישות מקדימות

- **Node.js** 18.x ומעלה
- **npm** או **yarn**
- חשבון **Supabase** (חינמי)
- חשבון **Vercel** (חינמי, אופציונלי)

## 🚀 התקנה והרצה מקומית

### שלב 1: הורדת הפרויקט

```bash
# אם הפרויקט ב-Git:
git clone <repository-url>
cd trivia

# או פשוט פתח את התיקייה
cd trivia
```

### שלב 2: התקנת Dependencies

```bash
npm install
```

### שלב 3: הקמת Supabase

1. **צור פרויקט חדש ב-Supabase**:
   - גש ל-[Supabase Dashboard](https://app.supabase.com)
   - לחץ על "New Project"
   - בחר ארגון, תן שם לפרויקט, והגדר סיסמת database
   - המתן מספר דקות עד שהפרויקט ייווצר

2. **הרץ את ה-Schema SQL**:
   - בדאשבורד של Supabase, עבור ל-SQL Editor (בצד שמאל)
   - פתח את הקובץ `supabase/schema.sql` מהפרויקט
   - העתק את כל התוכן והדבק ב-SQL Editor
   - לחץ על "Run" (F5)
   - וודא שכל הפקודות הצליחו (ללא שגיאות אדומות)

3. **צור Storage Bucket לתמונות** (אופציונלי):
   - עבור ל-Storage בדאשבורד
   - לחץ "Create a new bucket"
   - שם: `question-images`
   - Public bucket: ✅ כן
   - לחץ "Create bucket"

4. **קבל את ה-API Keys**:
   - עבור ל-Settings > API
   - העתק:
     - `Project URL`
     - `anon public` key

### שלב 4: הגדרת Environment Variables

1. צור קובץ `.env.local` בשורש הפרויקט:

```bash
cp .env.example .env.local
```

2. ערוך את הקובץ והדבק את המפתחות שלך:

```env
NEXT_PUBLIC_SUPABASE_URL=https://your-project-id.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=your-anon-key-here
```

### שלב 5: הרץ את הפרויקט

```bash
npm run dev
```

האפליקציה תעלה ב-[http://localhost:3000](http://localhost:3000)

### שלב 6: צור משתמש מנהל ראשון

1. גש ל-`/auth/register`
2. צור משתמש חדש
3. עבור ל-Supabase Dashboard > Table Editor > profiles
4. מצא את המשתמש שלך ושנה את ה-`role` ל-`admin`
5. רענן את הדף - עכשיו יש לך גישה למערכת הניהול!

## 🎯 שימוש באפליקציה

### למשתמש רגיל:

1. **רישום והתחברות**: צור חשבון או התחבר
2. **התחל משחק**: בחר קטגוריות ומספר שאלות
3. **שחק**: ענה על שאלות עם תמיכה במקלדת (1-4, Enter)
4. **צפה בסטטיסטיקות**: עקוב אחר ההתקדמות שלך
5. **הוסף שאלות**: שאלות חדשות יאושרו על ידי מדריכים

### למדריך:

כל האפשרויות של משתמש רגיל **+**:
- **אישור שאלות**: עבור ל-"ניהול שאלות" לאשר/לדחות שאלות חדשות
- **עריכת שאלות**: ערוך שאלות קיימות (בקרוב)

### למנהל:

כל האפשרויות של מדריך **+**:
- **ניהול קטגוריות**: הוסף, ערוך, ומחק קטגוריות
- **ניהול משתמשים**: שנה הרשאות משתמשים
- **גישה מלאה**: לכל הנתונים במערכת

## ⌨️ קיצורי מקלדת במשחק

- **1-4**: בחר תשובה (תואם למספרים על המסך)
- **Enter**: אשר תשובה
- **Esc**: צא מהמשחק (בקרוב)

## 📦 פריסה ל-Production (Vercel)

### אופציה 1: דרך GitHub (מומלץ)

1. העלה את הקוד ל-GitHub repository
2. גש ל-[Vercel Dashboard](https://vercel.com/new)
3. Import את ה-repository
4. הוסף את ה-Environment Variables:
   ```
   NEXT_PUBLIC_SUPABASE_URL=...
   NEXT_PUBLIC_SUPABASE_ANON_KEY=...
   ```
5. לחץ "Deploy"
6. ✅ האתר שלך באוויר!

### אופציה 2: דרך CLI

```bash
# התקן Vercel CLI
npm install -g vercel

# התחבר לחשבון
vercel login

# Deploy
vercel --prod
```

הזן את ה-environment variables כשתתבקש.

## 🗂 מבנה הפרויקט

```
trivia/
├── app/                      # Next.js App Router pages
│   ├── auth/                 # דפי אימות (login, register)
│   ├── dashboard/            # דף הבית של המשתמש
│   ├── game/                 # דפי משחק (setup, play)
│   ├── admin/                # פאנל ניהול
│   ├── stats/                # דף סטטיסטיקות
│   ├── layout.tsx            # Layout ראשי
│   └── providers.tsx         # React Query provider
├── components/               # React components
│   ├── ui/                   # shadcn/ui components
│   ├── game/                 # קומפוננטות משחק
│   ├── admin/                # קומפוננטות ניהול
│   └── stats/                # קומפוננטות סטטיסטיקה
├── contexts/                 # React contexts (Auth)
├── hooks/                    # Custom React hooks
├── lib/                      # Utilities
│   ├── supabase/             # Supabase clients
│   └── utils.ts              # Helper functions
├── types/                    # TypeScript types
│   └── database.types.ts     # Database types
├── supabase/                 # Supabase SQL schema
│   └── schema.sql            # Database schema + RLS
├── .env.example              # Environment variables template
├── middleware.ts             # Next.js middleware (auth)
├── next.config.js            # Next.js configuration
├── tailwind.config.ts        # Tailwind CSS config
└── README.md                 # התיעוד הזה
```

## 🔒 אבטחה

- **Row Level Security (RLS)**: כל טבלה מוגנת עם policies
- **אימות**: Supabase Auth עם JWT tokens
- **HTTPS**: אוטומטי ב-Vercel
- **Environment Variables**: מפתחות סודיים לא נשמרים בקוד
- **Input Validation**: Zod schemas (אפשר להוסיף)

## 🐛 פתרון בעיות נפוצות

### הדף לא נטען / 500 Error
- ✅ ודא שה-environment variables נכונים
- ✅ בדוק שה-Supabase project פעיל
- ✅ נקה את ה-cache: `rm -rf .next && npm run dev`

### לא מצליח להתחבר
- ✅ ודא שה-schema.sql רץ בהצלחה
- ✅ בדוק ש-RLS מופעל על כל הטבלאות
- ✅ בדוק שה-profile נוצר בטבלת `profiles`

### אין שאלות זמינות
- ✅ הוסף קטגוריות ב-Supabase > Table Editor > categories
- ✅ הוסף שאלות דרך האפליקציה או ישירות ב-DB
- ✅ ודא שהשאלות במצב `approved`

### תמונות לא עולות
- ✅ ודא ש-storage bucket נוצר
- ✅ בדוק את policies ב-Storage
- ✅ ודא שה-bucket הוא `public`

## 📊 Database Schema

ראה את `supabase/schema.sql` לסכמה מלאה.

**טבלאות עיקריות:**
- `profiles` - פרופילי משתמשים
- `categories` - קטגוריות שאלות
- `questions` - שאלות
- `answers` - תשובות (4 לכל שאלה)
- `games` - משחקים
- `game_questions` - שאלות במשחק
- `game_categories` - קטגוריות במשחק

## 🎨 התאמה אישית

### שינוי צבעים

ערוך את `app/globals.css`:

```css
:root {
  --primary: ...;
  --secondary: ...;
}
```

### הוספת קטגוריות

ב-Supabase > Table Editor > categories:

```sql
INSERT INTO categories (name, description, icon) VALUES
  ('שם הקטגוריה', 'תיאור', '📚');
```

### שינוי מספר השאלות המקסימלי

ערוך את `app/game/setup/page.tsx`:

```typescript
<Input max={100} ... />  // שנה ל-200 לדוגמה
```

## 🤝 תרומה לפרויקט

אם תרצה לתרום לפרויקט:

1. Fork את הrepo
2. צור branch חדש (`git checkout -b feature/amazing-feature`)
3. Commit את השינויים (`git commit -m 'Add amazing feature'`)
4. Push ל-branch (`git push origin feature/amazing-feature`)
5. פתח Pull Request

## 📝 רישיון

הפרויקט זמין תחת רישיון MIT.

## 🆘 תמיכה ועזרה

- 📖 [Supabase Docs](https://supabase.com/docs)
- 📖 [Next.js Docs](https://nextjs.org/docs)
- 📖 [shadcn/ui Docs](https://ui.shadcn.com)
- 💬 פתח Issue בGitHub

## 🎉 סיימת!

עכשיו יש לך אפליקציית טריוויה מלאה ופועלת!

**הצעד הבא**: התחל להוסיף שאלות והזמן חברים לתרגל איתך! 🚀

---

**Built with ❤️ for Paramedics**
