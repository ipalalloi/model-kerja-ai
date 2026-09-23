---
name: pigo-shortcuts
description: >-
  Mendeteksi dan mengeksekusi pintasan instruksi singkat PiGO (pigo run, pigo fix, pigo pack, pigo test, pigo sync, pigo audit).
  Aktifkan skill ini ketika pengguna mengetik kata kunci singkat seperti "pigo", "pigo run", "pigo fix", "pigo pack", "pigo test", "pigo sync", "pigo audit", "lanjutkan", atau perintah semi-otonom lainnya.
---

# PiGO Shortcuts & Semi-Autonomous Command Engine

Dokumen ini memetakan kata kunci pintasan (*shortcuts*) singkat pengguna menjadi tindakan teknis otonom penuh berdasarkan pedoman PiGO Framework v10.0.

---

## ⚡ Daftar Pintasan Cepat (Shortcuts Mapping)

Jika pengguna mengetik kata kunci berikut, agen AI WAJIB langsung mengeksekusi alur kerjanya secara mandiri:

### 1. `pigo run` atau `lanjut`
* **Artinya**: Lanjutkan pekerjaan terakhir yang belum selesai.
* **Tindakan Otonom AI**:
  1. Baca `working.md` pada blok `<in_progress>`.
  2. Lanjutkan langkah berikutnya tanpa bertanya ulang.
  3. Lakukan pengujian sintaks (`php -l`) dan verifikasi fungsionalitas.
  4. Perbarui status `working.md` di akhir giliran.

### 2. `pigo fix [isu/pesan error]`
* **Artinya**: Perbaiki bug atau error tertentu secara mandiri (*Loop-Resolution*).
* **Tindakan Otonom AI**:
  1. Cari lokasi file penyebab error (gunakan grep_search / view_file).
  2. Perbaiki kode dengan prinsip *Zero-Regression* (tidak merusak fungsi yang sudah ada).
  3. Uji ulang sampai error hilang.
  4. Laporkan perbaikan secara ringkas kepada pengguna.

### 3. `pigo pack`
* **Artinya**: Buat paket rilis live bersih untuk deployment server.
* **Tindakan Otonom AI**:
  1. Jalankan script `build_upload.ps1`.
  2. Ambil hash SHA256 dari paket ZIP yang dihasilkan.
  3. Catat versi rilis baru dan SHA256 tersebut ke dalam `RELEASE_MANIFEST.md`.
  4. Laporkan nama file zip rilis dan hash-nya ke pengguna.

### 4. `pigo test`
* **Artinya**: Jalankan inspeksi dan pengujian menyeluruh pada kode proyek.
* **Tindakan Otonom AI**:
  1. Lakukan audit sintaks pada seluruh file PHP yang baru diubah (`php -l`).
  2. Verifikasi tidak ada variabel yang belum diinisialisasi (seperti `$approvalRows`).
  3. Pastikan penanganan error PDO terlindungi dalam `try-catch`.
  4. Laporkan hasil audit: apakah sistem siap produksi atau ada yang perlu diperbaiki.

### 5. `pigo sync`
* **Artinya**: Sinkronkan status memori proyek saat ini.
* **Tindakan Otonom AI**:
  1. Periksa file apa saja yang baru dimodifikasi.
  2. Sinkronkan dan perbarui blok `<completed_tasks>` dan `<in_progress>` di `working.md`.
  3. Tampilkan ringkasan singkat status proyek saat ini.

### 6. `pigo audit`
* **Artinya**: Pemeriksaan kepatuhan keamanan dan standar arsitektur 6 pilar PiGO.
* **Tindakan Otonom AI**:
  1. Periksa ketiadaan hardcoded kredensial di kode.
  2. Periksa keberadaan `.htaccess` di folder `uploads/` dan folder sensitif.
  3. Periksa validasi upload file (apakah sudah menggunakan `finfo_file()`).
  4. Berikan checklist kepatuhan PiGO v10.0.
