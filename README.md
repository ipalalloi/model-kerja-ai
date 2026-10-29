# PiGO Framework â€” Enterprise AI & Multi-Tier Collaboration

**Palalloi Integrate Gravity Orchestra (v13.3 Enterprise + Multi-Tier Collaboration)** | Production AI Agent Governance & Team Engineering Ecosystem

[![Version](https://img.shields.io/badge/version-13.3%20Enterprise-blue)](https://github.com/ipalalloi/model-kerja-ai)
[![Security](https://img.shields.io/badge/security-production--hardened-red)]()
[![Team Governance](https://img.shields.io/badge/team%20governance-lead%20%7C%20supervisor%20%7C%20contributor-orange)](COLLABORATION_GUIDE.md)
[![Audit Status](https://img.shields.io/badge/audit-passed--90%2B-brightgreen)]()

---

## Apa itu PiGO Framework?

PiGO Framework adalah sistem pedoman arsitektur, tata kelola model kerja otonom AI (`AGENTS.md`), dan standar kolaborasi rekayasa perangkat lunak yang berfungsi sebagai **sistem saraf dan batasan integritas** bagi pengembang lintas peran (**Project Leads, System Supervisors, Module Contributors**) serta agen AI (Google Antigravity, Gemini, Claude, OpenRouter).

Framework ini menjamin:
1. **Otonomi Agen AI Terkendali**: Mandiri pada pekerjaan rutin (*Zero-Friction*), terkunci dari tindakan destruktif (*Hard Boundaries*), kebal kegagalan (*Resilience Engine*), dan memindai kebocoran kredensial secara otomatis (*Automated Pre-Commit Scanner*).
2. **Rekayasa Tim Bertingkat (Multi-Tier Collaboration)**: Memisahkan kewenangan rilis produksi dengan lingkungan pengembangan modular secara aman dan terstruktur.

---

## ðŸ‘¥ Ekosistem Kolaborasi & Tata Kelola Tim (Team Governance)

Repositori ini menerapkan tata kelola kolaborasi modern berstandar enterprise yang diuraikan lengkap pada [**COLLABORATION_GUIDE.md**](COLLABORATION_GUIDE.md):

### 1. Matriks Peran Profesional (Role Matrix)
- **Principal Architect & Project Lead** *(Supervisory Authority)*: Pemegang kewenangan penuh atas branch `main`, pengesah rilis produksi, penanggung jawab keamanan, dan pengelola rahasia environment.
- **System Supervisor & Core Reviewer** *(Review Authority)*: Pengawas kesesuaian arsitektur, reviewer kode tingkat pertama, pembimbing teknis modul, dan penilai kualitas Pull Request.
- **Module Contributor & Feature Developer** *(Implementation Team)*: Pengembang fitur mandiri pada branch terisolasi, pelaksana pengujian lokal, dan inisiator Pull Request terstandar.

### 2. Standar Alur Kerja 5 Tahap (5-Stage Pipeline)
```
[main] â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”¬ (Solely merged by Principal Architect)
                                  â”‚
[staging] â”€â”€â”€â”€â”€â”€â”¬â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”´ (Supervisory Testing & Staging)
                â”‚ (git checkout -b)
[feat/module] â”€â”€â”´â”€â”€â”€ (Contributor Workspace) â”€â”€â”€â–º [Submit Pull Request]
```

### 3. Otomasi Template GitHub
- **Pull Request Template (`.github/PULL_REQUEST_TEMPLATE.md`)**: Checklist kepatuhan wajib bagi Contributor (validasi lokal, Anti-IDOR, Zero-Leakage, target ke branch `staging`).
- **Issue Task Template (`.github/ISSUE_TEMPLATE/task-template.md`)**: Penugasan modul terstruktur dari Supervisor kepada Contributor dengan rincian spesifikasi teknis dan target milestone.

---

## ðŸ›¡ï¸ Fitur Pertahanan Enterprise v13.3

### 1. Pertahanan Aplikasi Menyeluruh (Defense-in-Depth)
- **Validasi Skema Sisi Server (Server-Side Schema Validation)**: Validasi tipe data, batas panjang, dan regex di controller sebelum menyentuh database.
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
| v1.0â€“v2.0 | Fondasi Batasan & Security Hardening | Perlindungan OWASP Top 10 |
| v6.0â€“v7.0 | Clean MVC & Anti-Bypass Checklist | Standarisasi validasi & sintaks |
| v8.0â€“v10.0 | Autonomous Goal-Pursuing & Zero-Friction | Eksekusi otonom terpandu & Branding PiGO |
| v11.0â€“v12.0 | Antigravity 2.0 & Dual-Tier Token Budgeting | Workhorse Tier 1 (Flash) + Frontier Tier 2 |
| v13.0 | Resilience Engine (RRE) & Stack Adaptation | Audit awal via Claude Haiku 4.5 |
| v13.1 | Session Continuity & File-Based Concurrency | Konsensus Multi-Agent (Gemini, Haiku, Opus) |
| v13.2 | Production Security Hardening & Zero-Leakage | Anti-IDOR, Rate-Limiting, Idempotency |
| v13.3 | Enterprise Production Grade | Automated Pre-Commit Scanner, CSRF, Server-Side Input Schema, Role-Aware IDOR, & File Locking |
| **v13.3 + Enterprise Collab** | **Professional Multi-Tier Collaboration** | **Role Matrix (Lead, Supervisor, Contributor), PR Template, Issue Work Item Template, & Staging Isolation** |

---

## âš¡ Pintasan Perintah PiGO (PiGO Shortcuts)

| Perintah | Deskripsi Tindakan Agen |
|---|---|
| `pigo run` | Jalankan instruksi dengan kepatuhan penuh framework v13.3 |
| `pigo fix` | Analisis error log, perbaiki kode, dan uji sintaks otonom |
| `pigo test` | Lakukan validasi sintaks dan cek anti-regresi pada berkas yang disentuh |
| `pigo sync` | Perbarui status checklist `working.md` dan `task.md` |
| `pigo audit` | Jalankan checklist Anti-Bypass, Pre-Commit Secret Scan, dan Anti-IDOR |
| `pigo pack` | Bersihkan artefak dan kemas rilis live production (`build_upload.ps1`) |

---

## ðŸ“¦ Verifikasi Integritas Arsip Rilis

| Rilis | Berkas Arsip | Hash SHA256 |
|---|---|---|
| **v13.3 + Enterprise Collab** | `model_kerja_v13.3_enterprise_collaboration.zip` | `9EAE679AA078A6ECDD253EC986BEBB61CA4DBB0471A14392D89633069FE09A6F` |
| v13.3 | `model_kerja_v13.3_enterprise_production.zip` | `580DE45132DFBDA305FF7F4E665BEE4A3F9029397715D3BDC848DDD31C497B98` |
| v13.2 | `model_kerja_v13.2_production_hardened.zip` | `2D518C105C3B19F6863E8C5B1B43BA5D4D61C937E1E0B0C2A5CE33F43D371D5D` |
| v13.1 | `model_kerja_v13.1_battle_tested.zip` | `FDD69A81791FA804FD115A9F9FE6E8894AE4D3EDF4268D0CF061D7A5B8960E18` |

---
*Dikelola dan dikembangkan oleh [@ipalalloi](https://github.com/ipalalloi)*
