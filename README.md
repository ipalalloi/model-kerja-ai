# PiGO Framework — Model Kerja AI

**Palalloi Integrate Gravity Orchestra (v13.2)** | Sistem Pengendalian Agen AI untuk Pengembangan Web & Aplikasi

[![Version](https://img.shields.io/badge/version-13.2-blue)](https://github.com/ipalalloi/model-kerja-ai)
[![Security Hardened](https://img.shields.io/badge/security-production--hardened-red)]()
[![Status](https://img.shields.io/badge/status-production--ready-green)]()

---

## Apa itu PiGO Framework?

PiGO Framework adalah dokumen panduan arsitektur dan model kerja otonom (AGENTS.md) yang menjadi **sistem saraf dan batasan integritas** bagi agen AI (Google Antigravity, Gemini, Claude, OpenRouter) saat bekerja pada proyek perangkat lunak.

Framework ini memastikan agen AI bekerja secara mandiri dan cepat pada tugas rutin tanpa hambatan (*Zero-Friction*), terkunci dari tindakan destruktif (*Hard Boundaries*), kebal kegagalan (*Resilience Engine*), tidak membocorkan rahasia (*Zero-Leakage*), serta menghasilkan sistem aplikasi yang tangguh terhadap eksploitasi produksi (*Production Security Hardening*).

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
| **v13.2** | **Production Security Hardening & Zero-Leakage Protocol** | **Anti-IDOR, Rate-Limiting, Idempotency, SRI & Anti-Leak** |

---

## Fitur Unggulan v13.2

### 1. 🛡️ Standar Keamanan Aplikasi Produksi (Production Security) — NEW
- **Anti-IDOR (Owner-Binding)**: Setiap kueri mutasi atau pembacaan data personal wajib mengikat user aktif (WHERE id = :id AND user_id = :current_user).
- **Rate-Limiting & Anti-Bruteforce**: Wajib pembatasan frekuensi percobaan pada endpoint login, OTP, dan endpoint sensitif.
- **Sanitasi XSS & Rich-Text**: Wajib pembersihan parser aman (*DOMPurify*) dan htmlspecialchars() mutlak di view template.
- **Integritas CDN (SRI)**: Tag pemanggil CDN wajib menggunakan hash integrity="sha384-..." atau menggunakan aset *self-hosted*.

### 2. 🔐 Protokol Anti-Kebocoran Rahasia (Zero-Leakage Protocol) — NEW
- **Pemeriksaan .gitignore Ketat**: Memastikan .env, kredensial, dan sertifikat privat tidak pernah masuk staging git.
- **Larangan Hardcoding Secret**: Larangan menaruh kata sandi database atau API key di dalam kode sumber.
- **Terminal Log Masking**: Menyamarkan kata sandi pada output CLI pengujian.

### 3. ⚙️ Migrasi Idempotent & Anti-Bloat Konteks
- Skrip migrasi database otonom wajib bersifat *idempotent* (IF NOT EXISTS / cek information_schema) agar aman dieksekusi berulang.
- Efisiensi konteks agen melalui penargetan baris presisi (*Targeted Line-Range Edits*) guna mencegah respons lambat.

### 4. 🔄 Protokol Kontinuitas Sesi & Anti-Stuck Escalation
- Verifikasi wajib working.md di awal sesi untuk menyambung tugas tertunda.
- Eskalasi otomatis ke manusia jika percobaan gagal $\ge 5$ kali atau macet $> 10$ menit.

---

## Pintasan Perintah PiGO (PiGO Shortcuts)

| Perintah | Deskripsi Tindakan Agen |
|---|---|
| pigo run | Jalankan instruksi dengan kepatuhan penuh framework v13.2 |
| pigo fix | Analisis error log, perbaiki kode, dan uji sintaks otonom |
| pigo test | Lakukan validasi sintaks dan cek anti-regresi pada berkas yang disentuh |
| pigo sync | Perbarui status checklist working.md dan 	ask.md |
| pigo audit | Jalankan checklist Anti-Bypass, Anti-Leak, dan Anti-IDOR |
| pigo pack | Bersihkan artefak dan kemas rilis live production (uild_upload.ps1) |

---

## Verifikasi Integritas Arsip

| Rilis | Berkas Arsip | Hash SHA256 |
|---|---|---|
| **v13.2** | model_kerja_v13.2_production_hardened.zip | 2D518C105C3B19F6863E8C5B1B43BA5D4D61C937E1E0B0C2A5CE33F43D371D5D |
| v13.1 | model_kerja_v13.1_battle_tested.zip | FDD69A81791FA804FD115A9F9FE6E8894AE4D3EDF4268D0CF061D7A5B8960E18 |
| v13.0 | model_kerja_v13.0_resilience_orchestration.zip | C62DF41C844244024E6C6FD813F89FC6E27EBC778FCCB37617EEF3B067994080 |
| v12.0 | model_kerja_v12.0_autonomous_compliance.zip | 18B4E8F0A5535F534A5164811B16B419BBB5B350676BABF28D3B08C53E35BE22 |

---
*Dikelola dan dikembangkan oleh [@ipalalloi](https://github.com/ipalalloi)*
