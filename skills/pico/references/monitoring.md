# Monitoring PICO

Tempat bawaan monitoring adalah Project Claude "PICO Monitor". Evaluasi boleh dijalankan dari chat mana pun bila pemilik memintanya, karena kotak masuk dasbor bisa dibaca dari mana saja. Cakupannya tetap seluruh aktivitas di Claude, karena setiap chat kerja mengirim catatan tugas ke kotak masuk dasbor secara diam-diam.

## Alur data
1. **Chat kerja** (Project mana pun, di luar Project, atau Claude Code) menyimpan catatan tugas (baris jejak dan buktinya) ke koleksi `inbox` di dasbor, tanpa menampilkannya. Rinciannya ada di adaptor Claude.
2. **Platform lain** (ChatGPT, Codex, Antigravity, Gemini, DeepSeek) menutup tugas dari PICO dengan baris Log. Pengguna menempelkannya ke kegiatan monitoring.
3. **Kegiatan monitoring** memindahkan isi kotak masuk ke log dasbor, lalu menganalisisnya.

## Perintah "evaluasi PICO"
0. **Terapkan rencana tertunda.** Bila Project PICO Monitor punya dokumen `claude/evaluasi-pico-<tanggal>.md` yang belum ditandai "sudah diterapkan", terapkan isinya lebih dulu, lalu tandai dokumen itu.
1. **Baca kotak masuk.** Ambil koleksi `inbox` di dasbor dengan `ArtifactData` `list`, ditambah baris Log yang ditempel pengguna.
2. **Cari celah.** Hanya baris berisi `log: belum terkirim` yang dicari lewat pencarian chat "PICO v" dan "Log PICO". Pencarian itu terbatas pada lingkup tempat perintah diketik, jadi celah dari lingkup lain dilaporkan sebagai "belum tercakup", bukan ditebak.
3. **Tambahkan ke log.** Baca dataset `log` dan `perbaikan` beserta CSV-nya, lalu tambahkan baris baru tanpa duplikat, dengan nomor lanjutan.
   - `baris_penugasan` diisi "ya" bila ada field `jejak` (v4.0) atau field `pembuka` yang berisi baris Penugasan (v3.x). `versi_aturan` diambil dari field `versi`.
   - `kategori_masalah` memakai nilai baku, dipisah titik koma.
   - Samakan dulu nilai yang tidak baku (waktu, versi, surface, jenis) dengan nilai baku di adaptor Claude. Catatan lama yang menulis "Claude Code (cloud)" untuk sesi di aplikasi Claude dipetakan ke `ruang kerja`.
   - Field `menunggu` (v4.1) dipindah apa adanya. Butir yang hanya menunggu data pengguna tidak dihitung sebagai kekurangan verifikasi.
4. **Nilai ulang verifikasi** dengan definisi lolos (inti bagian 6), berdasarkan field `bukti`. Contoh: coding tanpa tautan PR berarti "sebagian". Tautan PR di field itu dicek dengan GitHub API bila repo bisa diakses.
5. **Perbarui dasbor.** Unggah CSV baru, perbarui dataset (url, name, updated), lalu hapus dokumen kotak masuk yang sudah dipindahkan. Evaluasi baru dianggap selesai setelah langkah ini berhasil dan kotak masuk kosong; sesi evaluasi itu sendiri dicatat sebagai satu baris di log.
   - **Bila dasbor tidak bisa ditulis:** jangan mencoba jalur lain. Simpan rencananya sebagai dokumen Project `claude/evaluasi-pico-<tanggal>.md` (baris yang akan ditambahkan, penilaian ulang, temuan, dan dokumen inbox yang akan dihapus). Laporkan verifikasi `belum` dengan `log: belum terkirim`, dan sarankan membuka evaluasi dari halaman dasbor.
6. **Cari pola:** masalah berulang, verifikasi yang sering "belum", wadah yang hilang, versi yang tertinggal, log yang belum terkirim, dan **lubang cakupan**: proyek yang tercatat aktif (di memori, instruksi Project, atau repo dengan commit baru) tetapi tidak punya catatan pada periode laporan, baik di kotak masuk maupun di dataset `log` (catatan yang sudah dipindah dihapus dari kotak masuk di langkah 5). Setiap pola menjadi satu baris temuan beserta usulannya.
7. **Kumpulkan usulan aturan** sebagai temuan berstatus "usulan". Usulan tidak langsung dijadikan PR, tetapi dirilis bersama paling sering sebulan sekali (`rilis.md`). Pengecualian: perbaikan keamanan, kesalahan yang menghambat kerja, atau permintaan langsung pemilik.
   - Ukur juga **beban pengguna**: berapa kali pengguna harus merge, mengunggah skill, menjawab pertanyaan teknis, atau membaca laporan teknis. Ukuran ini menjadi angka utama, karena tujuan PICO adalah pengguna cukup menerima hasil.
8. **Laporkan:** jumlah aktivitas baru per lingkup dan per platform, angka utama (kepatuhan baris jejak, wadah, lolos per jenis, dan butir yang menunggu pengguna), tiga temuan teratas, dan usulan.

## Bila dijalankan di luar Project "PICO Monitor"
Jalankan seperti biasa. Pencarian chat (langkah 2) hanya menjangkau lingkup tempat perintah diketik, jadi sebutkan lingkup itu di laporan.
