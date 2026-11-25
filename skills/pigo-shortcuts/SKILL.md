---
name: pigo-shortcuts
description: >-
  Mendeteksi dan mengeksekusi pintasan instruksi singkat PiGO v14.1 (pigo run, pigo fix, pigo test, pigo audit, pigo riset, pigo kajian, pigo preflight, pigo sync, pigo pack).
  Aktifkan skill ini ketika pengguna mengetik kata kunci singkat seperti "pigo", "pigo run", "pigo fix", "pigo test", "pigo audit", "pigo riset", "pigo kajian", "pigo preflight", "pigo sync", "pigo pack", "lanjutkan", atau perintah semi-otonom lainnya.
---

# PiGO Shortcuts & Multi-Agent Command Engine (v14.1)
*Berlaku Efektif: 25 November 2026 — Gemini 4 Carbon Orchestrator · PIOM-SDCM v0.9 · PICO v4.2 · PRF v1.0*

> **WAJIB DI SETIAP RESPONS:**
> - **Header Pembuka**: `> 🛡️ **PiGO Framework v14.1** *(Berlaku: 25 November 2026)* | **Governance:** PIOM-SDCM v0.9 · PICO v4.2 · PRF v1.0`
> - **Footer Penutup**: `⚡ **PiGO v14.1 Active** *(Eff: 25 Nov 2026)* · **Verifikasi:** <Lolos/Sebagian/Belum/N/A> · **Wadah:** <Proyek> · **Status:** <Status>`

---

## ⚡ Daftar Pintasan Cepat & Orkestrasi Agen Otomatis

### 1. `pigo run [tugas]` atau `lanjut`
* **Agen Pelaksana**: `Orchestrator (Carbon)` + delegasi otomatis ke `self` (`workspace: "share"` bila paralel) & `browser` (`flash` bila ada UI).
* **Tindakan Otonom**:
  1. Baca `.agents/working.md` dan `.agents/task.md`.
  2. Eksekusi perubahan terkecil yang lengkap (*Smallest Complete Change*) & *Anti-Slop*.
  3. Terapkan keamanan Server-Agnostic (Apache + Nginx) dan kepatuhan UU PDP (gated file access, anti-IDOR, CSRF).
  4. Jalankan uji sintaks CLI sesi ini (`0 gagal`) dan perbarui memori tugas.

### 2. `pigo fix [isu/error]`
* **Agen Pelaksana**: `Orchestrator` + `research` (bila perlu telusur lintas modul).
* **Tindakan Otonom**: Diagnosis akar masalah, perbaiki tanpa merusak signature publik, dan uji ulang gejala awal hingga terbukti hilang.

### 3. `pigo riset [jenis/topik]`
* **Agen Pelaksana**: `Orchestrator (Carbon)` + `run_workflow` paralel (bila banyak PDF/sumber) + `research` (*Fresh-Eyes Reviewer*).
* **Tindakan Otonom**:
  1. Baca `C:\Users\IPalalloi\.gemini\config\skills\pico\references\riset-dan-literatur.md` dan `kaidah-akademik.md`.
  2. Pilih/terapkan satu dari **11 Jenis Literature Review** beserta kerangka pertanyaan (PICO/PCC/SPIDER) dan standar pelaporannya (PRISMA 2020, PRISMA-ScR, PRIOR, ENTREQ, SANRA, JBI, SotA).
  3. Bangun *Claim–Evidence Matrix* (DOI terverifikasi, kontra-bukti wajib dicatat, tag `[BELUM TERVERIFIKASI]` bila ragu) dengan status `AI_DRAFT`.

### 4. `pigo kajian [topik]`
* **Agen Pelaksana**: `Orchestrator` / `openrouter_chat` (Red-Team lintas-model).
* **Tindakan Otonom**: Buat atau kerjakan `PAKET KAJIAN` sesuai `paket-kajian.md` (bebas data rahasia/responden) dan akhiri dengan baris **`Log PICO`** untuk *PICO Monitor*.

### 5. `pigo test` & `pigo preflight`
* **Agen Pelaksana**: `Orchestrator` + `browser` (`flash`).
* **Tindakan Otonom**:
  - `pigo test`: Uji sintaks CLI (`php -l`, `tsc --noEmit`, `pytest`) dan anti-regresi sesi ini.
  - `pigo preflight`: Cek kesiapan sebelum live — pastikan nol password demo/default, tidak ada klaim fitur semu (misal label BSrE belum aktif), konfigurasi Apache `.htaccess` + Nginx `location` lengkap, Service Worker PWA aman, dan dokumen warga terproteksi lewat endpoint gated (UU PDP).

### 6. `pigo audit [target/url-skill]`
* **Tindakan Otonom**: Audit keamanan aplikasi (Zero-Leakage regex, Anti-IDOR, CSRF, UU PDP) atau audit skill pihak ketiga sesuai `audit-skill.md` & `katalog-skill.md`.

### 7. `pigo sync` & `pigo pack`
* `pigo sync`: Sinkronkan `.agents/working.md` & `.agents/task.md` (*Maintenance Session* — tanpa membuat ZIP baru).
* `pigo pack`: Kemas ZIP produksi bersih via `.\build_upload.ps1` (*Evidence Session*) + catat SHA256 otomatis ke `RELEASE_MANIFEST.md`.
