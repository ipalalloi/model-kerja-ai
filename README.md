# PiGO Framework — Model Kerja AI

**Palalloi Integrate Gravity Orchestra (v13.1)** | Sistem Pengendalian Agen AI untuk Pengembangan Web & Aplikasi

[![Version](https://img.shields.io/badge/version-13.1-blue)](https://github.com/ipalalloi/model-kerja-ai)
[![Review & Battle--Tested](https://img.shields.io/badge/reviewed%20by-Gemini%20%7C%20Claude%20Haiku%20%7C%20Claude%20Opus-purple)](https://github.com/ipalalloi/model-kerja-ai)
[![Status](https://img.shields.io/badge/status-production--ready-green)]()

---

## Apa itu PiGO Framework?

PiGO Framework adalah dokumen panduan arsitektur dan model kerja otonom (AGENTS.md) yang menjadi **sistem saraf dan batasan integritas** bagi agen AI (Google Antigravity, Gemini, Claude, OpenRouter) saat bekerja pada proyek perangkat lunak.

Framework ini memastikan agen AI bekerja secara mandiri dan cepat pada tugas rutin tanpa hambatan (*Zero-Friction*), namun secara mutlak terkunci dari melakukan tindakan destruktif (*Hard Boundaries*), kebal terhadap kegagalan berulang (*Resilience Engine*), dan tersambung mulus antar sesi (*Session Continuity*).

---

## Riwayat Evolusi

| Versi | Highlight Utama | Catatan Audit |
|-------|-----------------|---------------|
| v1.0–v2.0 | Fondasi Batasan & Security Hardening | Perlindungan OWASP Top 10 |
| v6.0–v7.0 | Clean MVC & Anti-Bypass Checklist | Standarisasi validasi & sintaks |
| v8.0–v10.0 | Autonomous Goal-Pursuing & Zero-Friction | Eksekusi otonom terpandu & Branding PiGO |
| v11.0–v12.0 | Antigravity 2.0 & Dual-Tier Token Budgeting | Workhorse Tier 1 (Flash) + Frontier Tier 2 |
| v13.0 | Resilience Engine (RRE) & Stack Adaptation | Audit awal via Claude Haiku 4.5 |
| **v13.1** | **Session Continuity, File-Based Concurrency & Battle-Tested Refinements** | **Konsensus Multi-Agent (Gemini, Haiku 4.5, Opus 4.6)** |

---

## Fitur Unggulan v13.1

### 1. 🔄 Protokol Kontinuitas Sesi (Session Continuity Protocol) — NEW
- **Mandatory First Step**: Agen wajib membaca status working.md dan 	ask.md di awal percakapan baru.
- **Deteksi Orphaned Tasks**: Jika ada tugas IN PROGRESS tertinggal dari sesi lama, agen langsung melaporkannya ke pengguna untuk meminta arahan sebelum memulai tugas baru.

### 2. 🛡️ Resilience & Recovery Engine (RRE)
- **Graduated Failure Response (L1–L3)**: Dari retry backoff hingga isolasi/pembatalan otomatis saat integritas terancam.
- **File & Git Transaction Snapshot**: Snapshot otomatis sebelum batch update file/query sensitif.
- **Anti-Stuck Escalation Trigger**: Agen wajib berhenti dan memanggil manusia jika percobaan gagal $\ge 5$ kali atau macet $> 10$ menit (mencegah loop tak berujung dan pemborosan kuota token).

### 3. 🔒 File-Based Concurrency Control (Anti-Tabrakan Subagen)
- **Single-Writer Rule**: Satu file hanya boleh ditulis oleh satu subagen pada satu waktu.
- **Sequential Dependency**: Alur dependensi dijalankan bergantian, bukan paralel liar.

### 4. 🌐 Project Onboarding & Stack Adaptation (POSAP)
- Profiling otomatis root direktori: PHP (composer.json), TypeScript/Node (package.json), Python (equirements.txt).
- Validasi sintaks adaptif: php -l untuk PHP, 	sc --noEmit untuk TypeScript, py_compile untuk Python.

### 5. ⚡ Hard Boundaries vs Autonomous Execution
- **Stop & Ask (Persetujuan Wajib)**: Operasi DROP, TRUNCATE, perubahan alur otorisasi/roles mayor, dan perombakan arsitektur besar.
- **Zero-Friction (Tanpa Izin)**: Query baca (SELECT), penargetan edit baris presisi, uji CLI, pengemasan ZIP rilis.

---

## Pintasan Perintah PiGO (PiGO Shortcuts)

| Perintah | Deskripsi Tindakan Agen |
|---|---|
| pigo run | Jalankan instruksi dengan kepatuhan penuh framework v13.1 |
| pigo fix | Analisis error log, perbaiki kode, dan uji sintaks otonom |
| pigo test | Lakukan validasi sintaks dan cek anti-regresi pada berkas yang disentuh |
| pigo sync | Perbarui status checklist working.md dan 	ask.md |
| pigo audit | Jalankan checklist Anti-Bypass sebelum rilis |
| pigo pack | Bersihkan artefak dan kemas rilis live production (uild_upload.ps1) |

---

## Verifikasi Integritas Arsip

| Rilis | Berkas Arsip | Hash SHA256 |
|---|---|---|
| **v13.1** | model_kerja_v13.1_battle_tested.zip | FDD69A81791FA804FD115A9F9FE6E8894AE4D3EDF4268D0CF061D7A5B8960E18 |
| v13.0 | model_kerja_v13.0_resilience_orchestration.zip | C62DF41C844244024E6C6FD813F89FC6E27EBC778FCCB37617EEF3B067994080 |
| v12.0 | model_kerja_v12.0_autonomous_compliance.zip | 18B4E8F0A5535F534A5164811B16B419BBB5B350676BABF28D3B08C53E35BE22 |

---
*Dikelola dan dikembangkan oleh [@ipalalloi](https://github.com/ipalalloi)*
