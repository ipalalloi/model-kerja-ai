# 🧭 Panduan Memulai Proyek Baru dengan PiGO Framework v10.0

Panduan ini berisi langkah-langkah praktis dan visual untuk menginisialisasi proyek baru berbasis **PiGO Framework (Palalloi Integrate Gravity Orchestra)** di komputer lokal Anda.

---

## 📁 1. Lokasi Direktori Standar

Seluruh proyek web diletakkan di direktori utama web server lokal agar langsung terhubung dengan Apache/XAMPP dan database MySQL lokal:

```text
D:\Data_web\<nama_projek_baru>\
```

**Contoh Penamaan:**
- `D:\Data_web\e_arsip\`
- `D:\Data_web\klinik_app\`
- `D:\Data_web\pos_retail\`
- `D:\Data_web\simpel\`

---

## ⚡ 2. Dua Cara Memulai di Chat Antigravity

### Cara A: Perintah Langsung 1-Langkah (Paling Direkomendasikan)
Buka obrolan (*chat*) baru di Antigravity, lalu salin/ketik prompt sederhana ini:

> **"Buat proyek baru bernama `nama_projek` di `D:\Data_web\nama_projek` dan inisialisasi PiGO Framework v10.0."**

*Apa yang otomatis dikerjakan oleh AI?*
1. AI membuat folder baru di `D:\Data_web\<nama_projek>`.
2. AI langsung mengekstrak paket template master `model_kerja_v10.0_autonomous_compliance.zip` ke dalamnya.
3. Seluruh instrumen PiGO langsung terpasang dan siap digunakan tanpa konfigurasi manual.

---

### Cara B: Jika Anda Sudah Membuka Folder Kosong
Jika Anda sudah membuat folder kosong dan membukanya di Antigravity (*File > Open Folder*):

Cukup ketik salah satu pintasan di chat:
```text
pigo init
```
*(atau ketik `pigo run`)*

Sistem pengawas (**Global Compliance Checker**) akan otomatis mendeteksi bahwa proyek belum memiliki aturan PiGO dan memunculkan konfirmasi:
> *"⚠️ Proyek ini belum mengadopsi PiGO Framework. Terapkan sekarang? (Ketik 'Ya')"*

Cukup balas **"Ya"**, maka template master akan terpasang otomatis dalam hitungan detik.

---

## 📦 3. Instrumen PiGO yang Otomatis Siap Pakai

Setelah inisiasi selesai, folder proyek Anda langsung dilengkapi dengan struktur enterprise:

| Berkas / Direktori | Fungsi & Tanggung Jawab |
|---|---|
| `.agents/AGENTS.md` | *Runtime Specification* PiGO v10.0 & 6 pilar kualitas sistem. |
| `.cursorrules` | *Enforcer* yang memaksa AI selalu membaca aturan & memori sebelum koding. |
| `working.md` | Memori state AI untuk melacak tugas `<in_progress>` dan menjaga kontinuitas saat alih akun/model. |
| `build_upload.ps1` | Script pembuat paket ZIP rilis live yang otomatis membersihkan berkas sampah & file AI. |
| `config/database.php` | Static loader konfigurasi database yang aman dari overwrite AI. |
| `migrations/MIGRATION_LOG.md` | Ledger resmi pencatatan perubahan skema database. |
| `uploads/.htaccess` | Proteksi keamanan yang mematikan eksekusi script server-side pada folder upload. |
| `RELEASE_MANIFEST.md` | Log riwayat rilis produksi, SHA256 checksum paket, dan rollback plan. |

---

## 🚀 4. Pintasan Kerja Setelah Proyek Terbentuk

Setelah proyek diinisiasi, Anda tidak perlu lagi mengetik atau menghafal prompt panjang. Cukup gunakan **PiGO Shortcuts**:

- `pigo run` : Lanjutkan koding dan tugas `<in_progress>` secara otonom.
- `pigo fix [error]` : Perbaiki bug/error tertentu secara mandiri (*Loop-Resolution*).
- `pigo test` : Uji sintaks PHP (`php -l`), validasi variabel, dan proteksi `try-catch`.
- `pigo pack` : Buat paket rilis live bersih untuk deployment server.
- `pigo sync` : Sinkronkan status perubahan kode ke `working.md`.
- `pigo audit` : Periksa kepatuhan 6 pilar keamanan PiGO v10.0.

---

## 🖼️ Tampilan Visual Interaktif
Untuk melihat panduan visual interaktif berbasis kartu desain modern, buka file:
👉 [`docs/panduan_visual_projek_baru.html`](./panduan_visual_projek_baru.html)
