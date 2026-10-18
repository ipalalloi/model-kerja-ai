# PiGO Framework — Model Kerja AI

**Palalloi Integrate Gravity Orchestra** | Sistem Pengendalian Agen AI untuk Pengembangan Web

[![Version](https://img.shields.io/badge/version-13.0-blue)](https://github.com/ipalalloi/model-kerja-ai)
[![Analyzed by](https://img.shields.io/badge/analyzed%20by-Claude%20Haiku%204.5-orange)](https://openrouter.ai)
[![Robustness](https://img.shields.io/badge/robustness-%2B65%25-green)]()
[![Flexibility](https://img.shields.io/badge/flexibility-%2B50%25-green)]()

---

## Apa itu PiGO Framework?

PiGO adalah dokumen AGENTS.md yang menjadi **sistem saraf** bagi agen AI (Google Antigravity / Gemini) saat bekerja di proyek pengembangan web. Framework ini mendefinisikan:
- Apa yang boleh dilakukan agen secara otonom
- Apa yang harus diminta izin dulu
- Bagaimana mengelola token secara efisien
- Bagaimana memulihkan diri saat terjadi kegagalan

---

## Riwayat Evolusi

| Versi | Highlight | Tanggal |
|-------|-----------|---------|
| v1.0 | Fondasi awal | 2026-07 |
| v2.0 | Security hardening | 2026-07 |
| v6.0 | MVC + Anti-Bypass | 2026-08 |
| v8.0 | Autonomous Goal-Pursuing | 2026-09 |
| v10.0 | Zero-Friction + PiGO Branding | 2026-09 |
| v11.0 | Antigravity 2.0 + Multi-Model Mesh | 2026-10 |
| v12.0 | Dual-Tier Token Optimization | 2026-10 |
| **v13.0** | **Resilience Engine + Conflict Resolution + Onboarding** | **2026-10** |

---

## Fitur Utama v13.0

### 🛡️ Resilience & Recovery Engine (RRE) — NEW
- **Graduated Failure Response** L1-L4: dari retry sederhana hingga isolasi sistem total
- **Transaction Wrapper**: pre-snapshot → rollback script → execute → validate
- **Escalation Trigger**: agen wajib eskalasi ke manusia jika macet > 10 menit atau retry ≥ 5 kali gagal

### 🔀 Conflict Resolution & Subagent Orchestration (ICRO) — NEW
- **Conflict Matrix**: Write-Write, Write-Read, Dependency, Resource — masing-masing punya strategi resolusi
- **DAG Scheduling**: subagen dijalankan sesuai urutan dependensi
- **Naming Lock**: mencegah race condition saat 2 subagen menulis file yang sama

### 🚀 Project Onboarding Protocol (POSAP) — NEW
- **Auto-profiling** tech stack (PHP, Node.js, Python, dll)
- **Stack Adaptation Rules**: aturan berbeda per stack terdeteksi
- **Dry Run Validation**: verifikasi akses resource sebelum operasi penuh

### ⚡ Hard Boundaries + Autonomous Execution
- **Stop & Ask** untuk: DROP/TRUNCATE DB, breaking changes, fitur skala besar
- **Zero-Friction Execution** untuk: SELECT, file edit, CLI testing, debug loop

### 🎯 Dual-Tier Token Orchestration
- **Tier 1 (Flash 90%)**: coding, refactor, debug harian
- **Tier 2 (Frontier 10%)**: arsitektur besar & audit keamanan
- **Token Budget Alert**: eskalasi otomatis jika kuota Frontier > 85%

### 🏗️ 6 Architecture Pillars
Aman | Responsif | Dinamis | Moderen | Bersih | Mobile Ready

---

## Cara Penggunaan

### 1. Pasang di Proyek Baru
\\\ash
mkdir .agents
cp AGENTS.md .agents/AGENTS.md
\\\
Atau gunakan pigo run di Antigravity IDE jika skill PiGO sudah terpasang.

### 2. Pasang sebagai Global Rule
Salin ke:
\\\
C:\Users\<nama>\\.gemini\config\rules\global-compliance-checker.md
\\\

### 3. PiGO Shortcuts (via Antigravity IDE)
| Perintah | Fungsi |
|---------|--------|
| pigo run | Jalankan tugas dengan model kerja aktif |
| pigo fix | Perbaiki bug yang ditemukan |
| pigo pack | Kemas rilis production (build_upload.ps1) |
| pigo test | Uji sintaks semua file yang disentuh |
| pigo sync | Sinkronkan working.md & task.md |
| pigo audit | Jalankan Anti-Bypass Checklist |

---

## Arsip Versi

| File | Versi | SHA256 |
|------|-------|--------|
| model_kerja_v12.0_autonomous_compliance.zip | v12.0 | 18B4E8F0A5535F534A5164811B16B419BBB5B350676BABF28D3B08C53E35BE22 |
| model_kerja_v13.0_resilience_orchestration.zip | v13.0 | C62DF41C844244024E6C6FD813F89FC6E27EBC778FCCB37617EEF3B067994080 |

---

## Kontributor Analisis

- **v13.0 Analysis**: Claude Haiku 4.5 via OpenRouter (Oktober 2026)
  - Temuan kritis: No Rollback on Autonomous Failure, No Conflict Resolution, No Onboarding Protocol
  - Impact estimasi: +65% Robustness, +40% Dynamism, +50% Flexibility

---

*PiGO Framework dikembangkan dan dikelola oleh [@ipalalloi](https://github.com/ipalalloi)*
