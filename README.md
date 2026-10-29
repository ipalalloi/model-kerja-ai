# PiGO Framework — Model Kerja AI & Ekosistem Kolaborasi

**Palalloi Integrate Gravity Orchestra (v13.3 Enterprise + Academic Collaboration)** | Sistem Pengendalian Agen AI & Model Kolaborasi Riset/Projek Dosen & Mahasiswa

[![Version](https://img.shields.io/badge/version-13.3%20Enterprise-blue)](https://github.com/ipalalloi/model-kerja-ai)
[![Security](https://img.shields.io/badge/security-production--hardened-red)]()
[![Collaboration](https://img.shields.io/badge/collaboration-academic--ready-orange)](COLLABORATION_GUIDE.md)
[![Audit Status](https://img.shields.io/badge/audit-passed--90%2B-brightgreen)]()

---

## Apa itu PiGO Framework?

PiGO Framework adalah sistem pedoman arsitektur, model kerja otonom (`AGENTS.md`), dan standar kolaborasi tim yang berfungsi sebagai **sistem saraf dan batasan integritas** bagi pengembang (Dosen, Mahasiswa, Peneliti) serta agen AI (Google Antigravity, Gemini, Claude, OpenRouter) saat bekerja pada proyek perangkat lunak.

Framework ini memastikan:
1. **Agen AI Bekerja Mandiri & Aman**: Otonom pada tugas rutin (*Zero-Friction*), terkunci dari tindakan perusakan database (*Hard Boundaries*), dan tidak membocorkan kredensial (*Pre-Commit Secret Scanner*).
2. **Kolaborasi Tim Akademik Teratur**: Dosen dan mahasiswa dapat berbagi peran secara jelas tanpa risiko merusak kode utama sistem atau membocorkan data produksi.

---

## 👥 Ekosistem Kolaborasi Dosen & Mahasiswa (Academic Collaboration)

Repositori ini kini dilengkapi dengan panduan dan template kolaborasi terpadu di folder root dan `.github/`:

### 1. [Panduan Kolaborasi Lengkap (`COLLABORATION_GUIDE.md`)](COLLABORATION_GUIDE.md)
- **Matriks Peran (Role Matrix)**:
  - **Project Lead / Tech Architect (Dosen Penanggung Jawab)**: Pemegang kendali branch `main`, approval Pull Request, dan manajemen environment server.
  - **Co-Architect / Core Reviewer (Dosen Rekan)**: Pengawas logika bisnis, instrumen asesmen, dan luaran penelitian.
  - **Feature Developer (Mahasiswa)**: Pengembang modul di branch fitur mandiri dengan database development lokal (data dummy).
- **Alur Kerja Git 5 Langkah**: Standarisasi pembuatan branch `feat/<nama>-<modul>` $\rightarrow$ coding dengan panduan PiGO AI $\rightarrow$ pengajuan Pull Request ke branch `staging`.
- **Isolasi Database**: Mahasiswa dilarang keras memegang koneksi database server production; seluruh pengembangan lokal wajib menggunakan `.env.example`.

### 2. Template GitHub Terintegrasi
- **Pull Request Template (`.github/PULL_REQUEST_TEMPLATE.md`)**: Setiap PR wajib mencentang checklist kepatuhan PiGO Framework (Uji sintaks lokal, Anti-IDOR, Zero-Leakage, target ke branch `staging`).
- **Issue Task Template (`.github/ISSUE_TEMPLATE/task-template.md`)**: Format terstandar bagi Dosen untuk membagikan tugas modul/fitur ke mahasiswa lengkap dengan sasaran alur dan tenggat waktu.

---

## 🛡️ Fitur Pertahanan Enterprise v13.3

### 1. Pertahanan Aplikasi Menyeluruh (Defense-in-Depth)
- **Validasi Skema Sisi Server (Server-Side Schema Validation)**: Input request wajib divalidasi tipe data, batas panjang, dan regex di controller.
- **Proteksi CSRF Wajib**: Setiap request mutasi data (`POST`/`PUT`/`DELETE`) wajib memvalidasi token CSRF acak berbasis sesi selain cookie `SameSite=Strict`.
- **Role-Aware Anti-IDOR**: Kueri manipulasi data terikat kepemilikan pengguna: `WHERE id = :id AND (user_id = :current_user OR :role = 'admin')`.
- **Rate-Limiting Komprehensif**: Pembatasan frekuensi pada login, OTP, pencarian masif, dan upload file.
- **Sanitasi Ganda XSS & Integritas CDN (SRI)**: Parser aman (*DOMPurify*) untuk input rich-text, `htmlspecialchars()` di view, dan hash `integrity="sha384-..."` pada CDN publik.

### 2. Pemindaian Otomatis Anti-Kebocoran (Automated Pre-Commit Scan)
- Pemindaian otomatis `git diff --cached` terhadap pola regex secret:
  `(?i)(api[_-]?key|secret|password|bearer|auth[_-]?token)\s*=\s*['\"][^'\"]{8,}['\"]`
- Commit otomatis dibatalkan jika ditemukan kredensial mentah di dalam kode sumber.

### 3. Manajemen File Lock Subagen (`.lock`)
- Penanda file `.lock` sementara (auto-timeout 5 menit) untuk mencegah tabrakan edit (*race condition*) antar subagen paralel tanpa dependensi Redis.

### 4. Kontinuitas Sesi & Anti-Stuck Escalation
- Verifikasi wajib `working.md` di awal sesi untuk menyambung tugas tertunda (*Orphaned Tasks*).
- Eskalasi otomatis ke manusia jika percobaan perbaikan gagal $\ge 5$ kali atau macet $> 10$ menit.

---

## Riwayat Evolusi

| Versi | Highlight Utama | Catatan Audit |
|-------|-----------------|---------------|
| v1.0–v2.0 | Fondasi Batasan & Security Hardening | Perlindungan OWASP Top 10 |
| v6.0–v7.0 | Clean MVC & Anti-Bypass Checklist | Standarisasi validasi & sintaks |
| v8.0–v10.0 | Autonomous Goal-Pursuing & Zero-Friction | Eksekusi otonom terpandu & Branding PiGO |
| v11.0–v12.0 | Antigravity 2.0 & Dual-Tier Token Budgeting | Workhorse Tier 1 (Flash) + Frontier Tier 2 |
| v13.0 | Resilience Engine (RRE) & Stack Adaptation | Audit awal via Claude Haiku 4.5 |
| v13.1 | Session Continuity & File-Based Concurrency | Konsensus Multi-Agent (Gemini, Haiku, Opus) |
| v13.2 | Production Security Hardening & Zero-Leakage | Anti-IDOR, Rate-Limiting, Idempotency |
| v13.3 | Enterprise Production Grade | Automated Pre-Commit Scanner, CSRF, Server-Side Input Schema, Role-Aware IDOR, & File Locking |
| **v13.3 + Collab** | **Academic Collaboration & Multi-User Workflow** | **Panduan Kolaborasi Dosen-Mahasiswa, PR Template, Issue Task Template, & Branch Isolation** |

---

## ⚡ Pintasan Perintah PiGO (PiGO Shortcuts)

| Perintah | Deskripsi Tindakan Agen |
|---|---|
| `pigo run` | Jalankan instruksi dengan kepatuhan penuh framework v13.3 |
| `pigo fix` | Analisis error log, perbaiki kode, dan uji sintaks otonom |
| `pigo test` | Lakukan validasi sintaks dan cek anti-regresi pada berkas yang disentuh |
| `pigo sync` | Perbarui status checklist `working.md` dan `task.md` |
| `pigo audit` | Jalankan checklist Anti-Bypass, Pre-Commit Secret Scan, dan Anti-IDOR |
| `pigo pack` | Bersihkan artefak dan kemas rilis live production (`build_upload.ps1`) |

---

## 📦 Verifikasi Integritas Arsip Rilis

| Rilis | Berkas Arsip | Hash SHA256 |
|---|---|---|
| **v13.3 + Collab** | `model_kerja_v13.3_with_collaboration.zip` | `BDCB3B2FF75921122616AD68DEB34823BAA06BA1697E1071D4AC87B7CD7E0B7F` |
| v13.3 | `model_kerja_v13.3_enterprise_production.zip` | `580DE45132DFBDA305FF7F4E665BEE4A3F9029397715D3BDC848DDD31C497B98` |
| v13.2 | `model_kerja_v13.2_production_hardened.zip` | `2D518C105C3B19F6863E8C5B1B43BA5D4D61C937E1E0B0C2A5CE33F43D371D5D` |
| v13.1 | `model_kerja_v13.1_battle_tested.zip` | `FDD69A81791FA804FD115A9F9FE6E8894AE4D3EDF4268D0CF061D7A5B8960E18` |

---
*Dikelola dan dikembangkan oleh [@ipalalloi](https://github.com/ipalalloi)*
