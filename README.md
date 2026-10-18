# PiGO Framework — Model Kerja AI

**Palalloi Integrate Gravity Orchestra (v13.3)** | Enterprise Production Grade Model Kerja AI untuk Pengembangan Web & Aplikasi

[![Version](https://img.shields.io/badge/version-13.3-blue)](https://github.com/ipalalloi/model-kerja-ai)
[![Security](https://img.shields.io/badge/security-enterprise--production--grade-red)]()
[![Audit Status](https://img.shields.io/badge/audit-passed--90%2B-brightgreen)]()

---

## Apa itu PiGO Framework?

PiGO Framework adalah pedoman arsitektur dan model kerja otonom (AGENTS.md) yang berfungsi sebagai **sistem saraf dan batasan integritas** bagi agen AI (Google Antigravity, Gemini, Claude, OpenRouter) saat bekerja pada proyek perangkat lunak.

Framework ini memastikan agen AI bekerja secara mandiri dan cepat pada tugas rutin (*Zero-Friction*), namun terkunci dari tindakan destruktif (*Hard Boundaries*), kebal kegagalan berulang (*Resilience Engine*), tidak membocorkan kredensial (*Automated Pre-Commit Scanner*), dan menghasilkan kode aplikasi yang tangguh terhadap eksploitasi produksi (*Defense-in-Depth*).

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
| **v13.3** | **Enterprise Production Grade** | **Automated Pre-Commit Scanner, CSRF, Server-Side Input Schema, Role-Aware IDOR, & File Locking** |

---

## Fitur Pertahanan Enterprise v13.3

### 1. 🛡️ Pertahanan Aplikasi Menyeluruh (Defense-in-Depth)
- **Validasi Skema Sisi Server (Server-Side Schema Validation)**: Seluruh input request wajib divalidasi tipe data, batas panjang, dan regex di controller sebelum masuk database.
- **Proteksi CSRF Wajib**: Setiap formulir dan request mutasi (POST/PUT/DELETE) wajib memvalidasi token CSRF acak berbasis sesi selain cookie SameSite=Strict.
- **Role-Aware Anti-IDOR**: Pengecekan kepemilikan data mengikat user_id aktif dengan dukungan otorisasi hierarki administratif ((user_id = :current_user OR :role = 'admin')).
- **Rate-Limiting Komprehensif**: Pembatasan frekuensi pada endpoint autentikasi, pencarian masif, dan upload file.
- **Sanitasi Ganda XSS & Integritas CDN (SRI)**: Parser aman (*DOMPurify*) untuk input rich-text, htmlspecialchars() mutlak di view, dan hash integrity="sha384-..." pada CDN eksternal.

### 2. 🔐 Pemindaian Otomatis Anti-Kebocoran (Automated Pre-Commit Scan)
- Pemeriksaan otomatis git diff --cached terhadap pola regex secret:
  (?i)(api[_-]?key|secret|password|bearer|auth[_-]?token)\s*=\s*['\"][^'\"]{8,}['\"]
- Commit otomatis dibatalkan jika ditemukan kredensial mentah di dalam kode sumber.

### 3. 🔒 Manajemen File Lock Subagen (.lock)
- Penanda file .lock sementara (dengan auto-timeout 5 menit) untuk mencegah tabrakan edit (*race condition*) antar subagen paralel tanpa membutuhkan daemon/Redis eksternal.

### 4. 🔄 Kontinuitas Sesi & Anti-Stuck Escalation
- Verifikasi wajib working.md di awal setiap sesi untuk menyambung tugas tertunda (*Orphaned Tasks*).
- Eskalasi otomatis ke manusia jika percobaan perbaikan gagal $\ge 5$ kali atau macet $> 10$ menit.

---

## Pintasan Perintah PiGO (PiGO Shortcuts)

| Perintah | Deskripsi Tindakan Agen |
|---|---|
| pigo run | Jalankan instruksi dengan kepatuhan penuh framework v13.3 |
| pigo fix | Analisis error log, perbaiki kode, dan uji sintaks otonom |
| pigo test | Lakukan validasi sintaks dan cek anti-regresi pada berkas yang disentuh |
| pigo sync | Perbarui status checklist working.md dan 	ask.md |
| pigo audit | Jalankan checklist Anti-Bypass, Pre-Commit Secret Scan, dan Anti-IDOR |
| pigo pack | Bersihkan artefak dan kemas rilis live production (uild_upload.ps1) |

---

## Verifikasi Integritas Arsip

| Rilis | Berkas Arsip | Hash SHA256 |
|---|---|---|
| **v13.3** | model_kerja_v13.3_enterprise_production.zip | 580DE45132DFBDA305FF7F4E665BEE4A3F9029397715D3BDC848DDD31C497B98 |
| v13.2 | model_kerja_v13.2_production_hardened.zip | 2D518C105C3B19F6863E8C5B1B43BA5D4D61C937E1E0B0C2A5CE33F43D371D5D |
| v13.1 | model_kerja_v13.1_battle_tested.zip | FDD69A81791FA804FD115A9F9FE6E8894AE4D3EDF4268D0CF061D7A5B8960E18 |

---
*Dikelola dan dikembangkan oleh [@ipalalloi](https://github.com/ipalalloi)*
