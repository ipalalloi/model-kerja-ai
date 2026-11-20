# Migrasi proyek lama ke versi PICO terbaru

Dipakai pada tugas pertama di proyek yang sudah berjalan, setelah aturan PICO diperbarui. Cukup dijalankan sekali per proyek. Setelah selesai, catat `PICO: v<versi>` di instruksi proyek.

## 1. Kenali tanda aturan lama
Proyek perlu dimigrasi bila menemukan salah satu tanda berikut:
- instruksi Project atau berkas repo menyebut versi PICO lama, "Model Kerja AI v1.x", "MODEL-KERJA.md" sebagai aturan utama, atau nama alur lama (Alur Bangun, Alur Telaah, bundle/seal);
- `CLAUDE.md` tidak berisi "Ikuti skill pico";
- `AGENTS.md` mewajibkan agen lain mengikuti seluruh model kerja, padahal sejak v3.1 agen lain cukup memakai aturan tamu;
- kode proyek masih berada di chat atau zip lama, belum di repo;
- wadah proyek belum tercatat.

## 2. Ajukan satu PR "migrasi PICO" di repo proyek
| Berkas | Tindakan |
| --- | --- |
| `CLAUDE.md` | "Ikuti skill pico." + `Wadah: repo <owner/nama>` + aturan khusus proyek yang masih berlaku (struktur, data, keputusan). Hapus aturan umum yang sudah diatur PICO. |
| `AGENTS.md` | Aturan tamu PICO (`core/PICO-TAMU.md`) + aturan khusus repo (cabang, perintah tes). |
| `MODEL-KERJA.md` (versi lama) | Salin dulu ke `docs/arsip/` (jangan dihapus tanpa izin). Bila tidak ada skrip yang membacanya, cukup pindahkan ke arsip. Bila ada skrip yang membacanya: cari setiap field yang dibaca skrip (misalnya `bundle.py` membaca `Versi:`), ganti isinya dengan aturan tamu, lalu **pertahankan field itu** dengan nilai versi PICO yang baru. Setelah itu jalankan skrip dan tesnya untuk membuktikan tetap berjalan. Bila field tidak bisa dipertahankan, perbarui skripnya di PR yang sama. |
| Pedoman agen lain (misalnya `app/AGENTS.md` untuk Antigravity) | Jangan diubah. Itu model kerja milik agen tersebut. |
| Kode yang masih di chat atau zip | Dimasukkan lewat PR yang sama atau PR terpisah, dengan uji dijalankan. |

- Jalankan tes yang ada di repo sebelum dan sesudah perubahan.
- Cantumkan tautan PR di penutup.
- PR migrasi di-merge oleh pemilik, bukan oleh Claude.

## 3. Bila proyek tidak punya repo
- Tulis teks instruksi Project baru: tujuan, "Ikuti skill pico.", dan `Wadah: <...>`. Minta pengguna menempelkannya.
- Untuk tugas dokumen, dokumen Claude Docs sudah dihitung sebagai wadah (inti bagian 2).

## 4. Catat
Migrasi dikerjakan di belakang layar dan tidak dilaporkan panjang. Cukup sebut di baris jejak (`migrasi v<lama>→v<baru>: PR <tautan>`), lalu kirim log ke monitoring.
