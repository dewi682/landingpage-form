-- Jalankan di Supabase > SQL Editor
create table if not exists public.landingpage_requests (
  id           bigint generated always as identity primary key,
  nama         text not null,
  no_whatsapp  text not null,
  nama_usaha   text not null,
  punya_domain text not null check (punya_domain in ('ya', 'tidak')),
  created_at   timestamptz not null default now()
);

-- Kunci tabel dari akses publik. Server (PHP) memakai service role key yang melewati RLS.
alter table public.landingpage_requests enable row level security;
