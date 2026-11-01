# PiGO Framework - Enterprise AI & Multi-Tier Collaboration

**Palalloi Integrate Gravity Orchestra (v13.4 Enterprise + CI-Ready)** | Production AI Agent Governance & Team Engineering Ecosystem

[![Version](https://img.shields.io/badge/version-13.4%20Enterprise-blue)](https://github.com/ipalalloi/model-kerja-ai)
[![Security](https://img.shields.io/badge/security-production--hardened-red)]()
[![CI Pipeline](https://img.shields.io/badge/ci-php--lint%20%7C%20gitleaks-brightgreen)](.github/workflows/ci.yml)
[![Team Governance](https://img.shields.io/badge/team%20governance-lead%20%7C%20supervisor%20%7C%20contributor-orange)](COLLABORATION_GUIDE.md)
[![Audit Status](https://img.shields.io/badge/audit-passed--90%2B-brightgreen)]()

---

## Apa itu PiGO Framework?

PiGO Framework adalah sistem pedoman arsitektur, tata kelola model kerja otonom AI (`AGENTS.md`), dan standar kolaborasi rekayasa perangkat lunak yang berfungsi sebagai **sistem saraf dan batasan integritas** bagi pengembang lintas peran (**Project Leads, System Supervisors, Module Contributors**) serta agen AI (Google Antigravity, Gemini, Claude, OpenRouter).

Framework ini menjamin:
1. **Otonomi Agen AI Terkendali**: Mandiri pada pekerjaan rutin (*Zero-Friction*), terkunci dari tindakan destruktif (*Hard Boundaries*), kebal kegagalan (*Resilience Engine*), dan memindai kebocoran kredensial secara otomatis (*Automated Secret Scanner & Gitleaks CI*).
2. **Rekayasa Tim Bertingkat (Multi-Tier Collaboration)**: Memisahkan kewenangan rilis produksi dengan lingkungan pengembangan modular secara aman dan terstruktur.
3. **Produksi Tanpa Kebocoran (Zero-Leakage & Defense-in-Depth)**: Dilengkapi proteksi HTTP Security Headers, parser `.env` kebal error, Anti-IDOR, dan CSRF token.

---

## Ekosistem Kolaborasi & Tata Kelola Tim (Team Governance)

Repositori ini menerapkan tata kelola kolaborasi modern berstandar enterprise yang diuraikan lengkap pada [**COLLABORATION_GUIDE.md**](COLLABORATION_GUIDE.md):

### 1. Matriks Peran Profesional (Role Matrix)
- **Principal Architect & Project Lead** *(Supervisory Authority)*: Pemegang kewenangan penuh atas branch `main`, pengesah rilis produksi, penanggung jawab keamanan, dan pengelola rahasia environment.
- **System Supervisor & Core Reviewer** *(Review Authority)*: Pengawas kesesuaian arsitektur, reviewer kode tingkat pertama, pembimbing teknis modul, dan penilai kualitas Pull Request.
- **Module Contributor & Feature Developer** *(Implementation Team)*: Pengembang fitur mandiri pada branch terisolasi, pelaksana pengujian lokal, dan inisiator Pull Request terstandar.

### 2. Standar Alur Kerja 5 Tahap (5-Stage Pipeline)

```mermaid
flowchart TD
    A["Branch: main<br/>(Production Release)"] --- B["Branch: staging<br/>(Supervisory Testing & Staging)"]
    B -->|git checkout -b| C["Branch: feat/module<br/>(Contributor Workspace)"]
    C -->|Submit Pull Request| B
    B -->|Supervisory Approval & Merge| A
```

### 3. Otomasi Template GitHub & CI/CD
- **Pull Request Template (`.github/PULL_REQUEST_TEMPLATE.md`)**: Checklist kepatuhan wajib bagi Contributor (validasi lokal, Anti-IDOR, Zero-Leakage, target ke branch `staging`).
- **Issue Task Template (`.github/ISSUE_TEMPLATE/task-template.md`)**: Penugasan modul terstruktur dari Supervisor kepada Contributor dengan rincian spesifikasi teknis dan target milestone.
- **GitHub Actions CI Workflow (`.github/workflows/ci.yml`)**: Otomasi pengujian sintaks seluruh berkas PHP (`php -l`) dan pemindaian kebocoran kredensial rahasia (*Gitleaks*).
- **Code Ownership (`.github/CODEOWNERS`)**: Menetapkan peninjau wajib otomatis pada berkas-berkas arsitektur inti dan migrasi database.

---

## Fitur Pertahanan Enterprise v13.4

### 1. Pertahanan Aplikasi Menyeluruh (Defense-in-Depth)
- **Validasi Skema Sisi Server (Server-Side Schema Validation)**: Validasi tipe data, batas panjang, dan regex di controller sebelum menyentuh database.
- **Proteksi CSRF Wajib**: Setiap request mutasi data (`POST`/`PUT`/`DELETE`) wajib memvalidasi token CSRF acak berbasis sesi selain cookie `SameSite=Strict`.
- **Role-Aware Anti-IDOR**: Kueri manipulasi data terikat kepemilikan pengguna: `WHERE id = :id AND (user_id = :current_user OR :role = 'admin')`.
- **HTTP Security Headers Lengkap**: CSP, X-Frame-Options, X-Content-Type-Options, Referrer-Policy, dan Permissions-Policy pada `.htaccess`.
- **Parser `.env` Kebal Error**: Fungsi pemuat environment yang aman dari baris kosong/cacat serta sinkron dengan `getenv()`, `$_ENV`, dan `$_SERVER`.

### 2. Pemindaian Otomatis Anti-Kebocoran (Automated Secret Scanner)
- Pemindaian regex berlapis (`api_key`, `secret`, `password`, `define()`, `mysql://`) dan validasi pipeline CI Gitleaks di GitHub.
- Commit otomatis dibatalkan jika ditemukan kredensial mentah di dalam kode sumber.

### 3. Manajemen File Lock Subagen (`.lock`) & Registry Tugas
- Penanda file `.lock` sementara (auto-timeout 5 menit) untuk mencegah tabrakan edit (*race condition*) antar subagen paralel tanpa dependensi Redis.
- Dokumen registry tugas resmi di `.agents/task.md` dan memori kerja di `.agents/working.md`.

---

## Riwayat Evolusi

| Versi | Highlight Utama | Catatan Audit |
|---|---|---|
| v1.0 - v2.0 | Fondasi Batasan & Security Hardening | Perlindungan OWASP Top 10 |
| v6.0 - v7.0 | Clean MVC & Anti-Bypass Checklist | Standarisasi validasi & sintaks |
| v8.0 - v10.0 | Autonomous Goal-Pursuing & Zero-Friction | Eksekusi otonom terpandu & Branding PiGO |
| v11.0 - v12.0 | Antigravity 2.0 & Dual-Tier Token Budgeting | Workhorse Tier 1 (Flash) + Frontier Tier 2 |
| v13.0 | Resilience Engine (RRE) & Stack Adaptation | Audit awal via Claude Haiku 4.5 |
| v13.1 | Session Continuity & File-Based Concurrency | Konsensus Multi-Agent (Gemini, Haiku, Opus) |
| v13.2 | Production Security Hardening & Zero-Leakage | Anti-IDOR, Rate-Limiting, Idempotency |
| v13.3 | Enterprise Production Grade & Governance | Role Matrix (Lead, Supervisor, Contributor), PR/Issue Template |
| **v13.4** | **Production Hardened & CI-Ready Edition** | **Evaluasi Komprehensif Claude: .env.example, task.md, ci.yml, CODEOWNERS, Parser Fix, Security Headers, Relative Packaging** |

---

## Pintasan Perintah PiGO (PiGO Shortcuts)

| Perintah | Deskripsi Tindakan Agen |
|---|---|
| `pigo run` | Jalankan instruksi dengan kepatuhan penuh framework v13.4 |
| `pigo fix` | Analisis error log, perbaiki kode, dan uji sintaks otonom |
| `pigo test` | Lakukan validasi sintaks dan cek anti-regresi pada berkas yang disentuh |
| `pigo sync` | Perbarui status checklist `.agents/working.md` dan `.agents/task.md` |
| `pigo audit` | Jalankan checklist Anti-Bypass, Pre-Commit Secret Scan, dan Anti-IDOR |
| `pigo pack` | Bersihkan artefak dan kemas rilis live production (`build_upload.ps1`) |

---

## Verifikasi Integritas Arsip Rilis

| Rilis | Berkas Arsip | Hash SHA256 |
|---|---|---|
| **v13.4** | `model_kerja_v13.4_production_ci_ready.zip` | `4897033A1EDA97B90DDE80AE436FF09CABC9B0C086810FCF3D3FBF105B2FD030` |
| v13.3 + Collab | `model_kerja_v13.3_enterprise_collaboration.zip` | `9EAE679AA078A6ECDD253EC986BEBB61CA4DBB0471A14392D89633069FE09A6F` |
| v13.3 | `model_kerja_v13.3_enterprise_production.zip` | `580DE45132DFBDA305FF7F4E665BEE4A3F9029397715D3BDC848DDD31C497B98` |
| v13.2 | `model_kerja_v13.2_production_hardened.zip` | `2D518C105C3B19F6863E8C5B1B43BA5D4D61C937E1E0B0C2A5CE33F43D371D5D` |

---
*Dikelola dan dikembangkan oleh [@ipalalloi](https://github.com/ipalalloi)*
