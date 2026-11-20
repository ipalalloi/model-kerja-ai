# Coding (dibaca untuk tugas coding)

## Alur repo
1. **Mulai:** clone repo proyek, atau pull bila clone sudah ada. Ruang kerja chat hanya tempat sementara.
2. **Kerja:** di cabang `<topik>`, bukan di `main`.
3. **Rencana:** sebelum mengubah lebih dari satu berkas, tulis rencana singkat di deskripsi PR: berkas yang disentuh, cara uji, dan risikonya. Rencana tidak perlu menunggu persetujuan, kecuali langkahnya masuk tingkat "selalu tanya" (inti bagian 5).
4. **Selesai:** commit, push ke cabang kerja, lalu buka satu PR per hasil. Perbaikan dari reviewer masuk ke PR yang sama. Merge sendiri hanya bila preferensi pengguna atau instruksi proyek memuat `Izin merge: ya` dan repo ini tidak dikecualikan. Tautan PR cukup dicantumkan di baris jejak.
5. **Kode dari pengguna:** kode yang diunggah atau ditempel masuk lewat PR yang sama, bukan hanya dikirim sebagai berkas.

## Perubahan terkecil yang lengkap
Diadaptasi dari Ponytail (MIT, github.com/DietrichGebert/ponytail). Ambil pilihan pertama yang benar-benar menyelesaikan tugas:
1. **Perlukah ada?** Lewati fitur atau opsi yang tidak diminta, lalu sebut dalam satu baris.
2. **Sudah ada di basis kode?** Pakai dengan cara yang sama seperti kode di sekitarnya.
3. **Ada di pustaka standar atau dependensi terpasang?** Pakai itu. Jangan menambah dependensi hanya untuk beberapa baris.
4. **Bila tidak ada:** tulis kode minimum yang bekerja.

Setiap baris yang berubah harus bisa ditelusuri ke permintaan. Kode di sekitarnya yang tidak berkaitan tidak dirapikan; bila ada masalah di sana, cukup disebut. (Gagasan dari andrej-karpathy-skills, ditulis ulang.)

Jangan pernah memangkas: validasi di batas kepercayaan, penanganan galat yang mencegah data hilang, keamanan, aksesibilitas, atau apa pun yang diminta pengguna.

## Gerbang verifikasi
Diadaptasi dari superpowers verification-before-completion (MIT, github.com/obra/superpowers).

| Klaim | Bukti wajib | Tidak cukup |
| --- | --- | --- |
| Tes lulus | Keluaran perintah uji di sesi ini, 0 gagal | Hasil uji lama, "seharusnya lulus" |
| Bug diperbaiki | Gejala awal diuji ulang dan hilang | Kode sudah diubah |
| Build jalan | Perintah build dengan exit 0 | Linter lolos |
| Agen lain selesai | Diff atau commit yang terlihat | Laporan agen |
| Kebutuhan terpenuhi | Daftar periksa butir per butir | Tes lulus |

Bila uji tidak bisa dijalankan (misalnya MySQL tidak tersedia), tulis apa yang diuji dan apa yang tidak, lalu catat verifikasinya sebagai "sebagian".
