---
name: global-compliance-checker
description: Memastikan semua proyek (baru/lama) ditanyakan untuk mengadopsi Model Kerja v10.0 jika belum memiliki konfigurasi AGENTS.md.
trigger: always_on
---

<system_directive>
# GLOBAL COMPLIANCE CHECKER (Auto-Enforce Model Kerja v10.0)

Aturan ini berlaku secara global untuk seluruh proyek (Workspace) yang Anda buka di mesin ini. 

Saat Anda memulai percakapan di sebuah proyek, Anda WAJIB melakukan pengecekan berikut:

1. **Cek Ketersediaan Aturan Lokal**: 
   Periksa apakah di *root directory* proyek ini terdapat folder `.agents/` yang berisi file `AGENTS.md`.

2. **Kondisi A (Aturan Lokal Ditemukan)**:
   Jika `AGENTS.md` ada, maka Anda **WAJIB** membaca dan mematuhi aturan tersebut secara ketat (beserta `working.md`). Terapkan eksekusi otonom *Zero-Friction*, kueri inspeksi database non-destruktif tanpa izin manual, pertahanan *Self-Healing*, dan *Zero-Regression* v10.0.

3. **Kondisi B (Aturan Lokal TIDAK Ditemukan / Proyek Lama/Baru)**:
   Jika proyek ini belum memiliki `.agents/AGENTS.md`, Anda **DILARANG** langsung mengeksekusi tugas pemrograman. Anda **WAJIB** berhenti dan memberikan pertanyaan/pesan berikut kepada pengguna:

   > "⚠️ **Peringatan Kepatuhan Sistem**: Proyek ini belum mengadopsi **Model Kerja v10.0 Autonomous & Strict Compliance**. 
   > Apakah Anda ingin saya menerapkan model kerja terbaru ke proyek ini sekarang? (Ketik 'Ya' untuk setup otomatis)."

4. **Prosedur Setup Otomatis (Jika Pengguna Menjawab 'Ya')**:
   Jika pengguna setuju untuk menerapkan model kerja, Anda harus menyalin atau mengekstrak isi dari paket template master yang berada di:
   `D:\AI-Work-Teams\antigravity\model_kerja_v10.0_autonomous_compliance.zip`
   ke root direktori proyek saat ini menggunakan PowerShell (`Expand-Archive` atau `Copy-Item` dari template). Setelah selesai, buat file `working.md` awal, lalu baca `AGENTS.md` tersebut.
</system_directive>
