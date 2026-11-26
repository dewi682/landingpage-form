# Form Pembuatan Landingpage (PHP + Supabase + Vercel)

## 1. Supabase
1. Buat project di supabase.com
2. SQL Editor -> jalankan isi `supabase.sql`
3. Project Settings -> API: salin **Project URL** dan **service_role / secret key**

## 2. Deploy ke Vercel
Cara CLI:
    npm i -g vercel
    vercel login
    vercel            # ikuti pertanyaan
    vercel env add SUPABASE_URL
    vercel env add SUPABASE_SERVICE_ROLE_KEY
    vercel --prod

Cara GitHub: push folder ini ke repo -> Vercel > Add New Project -> Import ->
Environment Variables isi SUPABASE_URL dan SUPABASE_SERVICE_ROLE_KEY -> Deploy.

Catatan: jangan pernah memakai key service_role di sisi browser. Di project ini key hanya dipakai di PHP (server).
