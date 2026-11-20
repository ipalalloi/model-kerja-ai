---
name: pigo-shortcuts
description: >-
  Mendeteksi dan mengeksekusi pintasan instruksi singkat PiGO v14.0 (pigo run, pigo fix, pigo pack, pigo test, pigo sync, pigo audit, pigo kajian).
  Aktifkan skill ini ketika pengguna mengetik kata kunci singkat seperti "pigo", "pigo run", "pigo fix", "pigo pack", "pigo test", "pigo sync", "pigo audit", "pigo kajian", "lanjutkan", atau perintah semi-otonom lainnya.
---

# PiGO Shortcuts & Semi-Autonomous Command Engine (v14.0)
*Berlaku Efektif: 20 November 2026 — Unified PiGO x PICO v4.2 Governance*

Dokumen ini memetakan kata kunci pintasan (*shortcuts*) singkat pengguna menjadi tindakan teknis otonom penuh berdasarkan pedoman **PiGO Framework v14.0**.

> **WAJIB DI SETIAP RESPONS:**
> - **Header Pembuka**: `> 🛡️ **PiGO Framework v14.0** *(Berlaku: 20 November 2026)* | **Governance:** PIOM-SDCM v0.9 · PICO v4.2 Bridge`
> - **Footer Penutup**: `⚡ **PiGO v14.0 Active** *(Eff: 20 Nov 2026)* · **Verifikasi:** <Lolos/Sebagian/Belum> · **Wadah:** <Proyek> · **Status:** <Status>`

---

## ⚡ Daftar Pintasan Cepat (Shortcuts Mapping)

### 1. `pigo run` atau `pigo run [tugas baru]` atau `lanjut`
* **Artinya**:
  - Tanpa argumen: Lanjutkan pekerjaan aktif terakhir yang tertunda di `.agents/task.md` dan `.agents/working.md`.
  - Dengan argumen: Daftarkan ke `.agents/task.md` sebagai `<active_task>` dan langsung eksekusi dengan prinsip **Perubahan Terkecil yang Lengkap** & **Anti-Slop**.
* **Tindakan Otonom AI**:
  1. Baca `.agents/working.md` dan `.agents/task.md`.
  2. Eksekusi tugas sesuai standar v14.0 (Server-Side Schema Validation, Role-Aware Anti-IDOR, CSRF, Zero-Leakage).
  3. Jalankan Gerbang Verifikasi: uji sintaks berkas yang disentuh via CLI (`php -l` / `tsc --noEmit`) pada sesi ini hingga 0 gagal.
  4. Perbarui status tugas di `.agents/task.md` dan `.agents/working.md`.

### 2. `pigo fix [isu/pesan error]`
* **Artinya**: Perbaiki bug atau error tertentu secara mandiri (*Smallest Complete Fix*).
* **Tindakan Otonom AI**:
  1. Cari lokasi baris penyebab error secara presisi.
  2. Perbaiki logika internal tanpa merusak signature publik dan tanpa merapikan kode sekitar yang tidak berkaitan.
  3. Uji ulang gejala awal pada sesi ini hingga terbukti hilang (maksimal 5x retry sebelum eskalasi).

### 3. `pigo test`
* **Artinya**: Jalankan Gerbang Verifikasi Berbasis Bukti (*Verification Gate*).
* **Tindakan Otonom AI**:
  1. Jalankan uji sintaks CLI (`php -l`, `tsc --noEmit`, `pytest`) pada sesi ini dan tampilkan buktinya.
  2. Verifikasi ketiadaan variabel tak terinisialisasi dan kepatuhan Anti-IDOR.
  3. Nyatakan status verifikasi secara jujur (`Lolos` atau `Sebagian` jika DB lokal tidak aktif). Ingat: `GATE_CHECK: PASS != OWNER GO`.

### 4. `pigo audit`
* **Artinya**: Audit keamanan produksi, Anti-Slop, atau audit skill pihak ketiga.
* **Tindakan Otonom AI**:
  1. Pindai `git diff --cached` dengan regex Zero-Leakage (pastikan tidak ada `.env` / password / API key mentah).
  2. Periksa HTTP Security Headers di `.htaccess`, Role-Aware Anti-IDOR, dan CSRF token.
  3. Bila mengaudit skill/plugin pihak ketiga, ikuti prosedur `C:\Users\IPalalloi\.gemini\config\skills\pico\references\audit-skill.md` dan cek `katalog-skill.md`.

### 5. `pigo kajian [topik]`
* **Artinya**: Siapkan atau kerjakan **PAKET KAJIAN** lintas-agen (jembatan kolaborasi PiGO x PICO v4.2).
* **Tindakan Otonom AI**:
  1. Baca `C:\Users\IPalalloi\.gemini\config\skills\pico\references\paket-kajian.md` dan `templates\PAKET-KAJIAN.md`.
  2. Saring data sensitif (jangan sertakan kredensial, data responden, atau draf belum terbit tanpa izin).
  3. Verifikasi setiap sitasi dengan DOI/URL (tandai `[BELUM TERVERIFIKASI]` bila ragu) sesuai `kaidah-akademik.md`.
  4. Tutup respons dengan baris **`Log PICO`** untuk ditempel ke PICO Monitor.

### 6. `pigo sync`
* **Artinya**: Sinkronkan status memori proyek (*Maintenance Session* — tanpa membuat ZIP baru).
* **Tindakan Otonom AI**:
  1. Perbarui `.agents/working.md` dan `.agents/task.md` sesuai kondisi komit/berkas terbaru.
  2. Deteksi tugas yang macet $\ge 2$ sesi (`stalled=true`) untuk dilaporkan ke pengguna.

### 7. `pigo pack`
* **Artinya**: Kemas paket rilis live produksi bersih (*Evidence Session*).
* **Tindakan Otonom AI**:
  1. Jalankan `.\build_upload.ps1`.
  2. Pastikan hash SHA256 otomatis tercatat ke `RELEASE_MANIFEST.md` dan laporkan ke pengguna.
