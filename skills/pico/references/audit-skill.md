# Audit skill, plugin, hook, dan MCP pihak ketiga

Hook dan skrip menjalankan kode di mesin pengguna. Karena itu, tidak ada yang dipasang sebelum audit ini selesai dan pemilik menyetujuinya.

## Langkah
1. **Clone hanya-baca.** Clone dangkal ke folder terpisah. Jangan menjalankan installer, `npm install`, `pip install`, atau skrip apa pun dari repo itu.
2. **Catat identitas:** URL repo, lisensi, versi, tanggal commit terakhir, dan jumlah skill. Ukur juga ukurannya dalam jumlah kata.
3. **Baca setiap hook dan skrip.** Catat pemicunya (SessionStart, PreToolUse, dan lainnya), perintah yang dijalankan, proses anak, serta akses jaringan dan berkas.
4. **Cari tanda bahaya:** URL keluar, telemetri, penulisan ke konfigurasi global (`~/.claude`, `~/.gemini`, `~/.codex`), dan perintah git destruktif.
5. **Putuskan: adopsi, adaptasi, atau tolak.** Sertakan alasan, kategori masalah di log yang dijawab, risiko, dan biayanya (kata tambahan atau langkah tambahan).

## Tolak bila memenuhi salah satu kriteria
- butuh hook atau shell yang tidak tersedia di platform tempat ia akan dipakai;
- mengubah aturan atau dirinya sendiri tanpa persetujuan;
- mengirim data ke luar;
- menambah beban tanpa menjawab masalah yang tercatat;
- lisensinya tidak jelas, atau tidak cocok dengan pemakaian;
- tidak dirawat (tidak ada commit lebih dari 6 bulan);
- mengirim telemetri secara bawaan dan tidak bisa dimatikan lewat konfigurasi yang kita kendalikan;
- fungsinya sudah tersedia di skill atau plugin yang terpasang.

**Adaptasi lebih diutamakan daripada pemasangan.** Teks yang berguna disalin ke `references/` dengan atribusi lisensi.

**Catat hasilnya** di `katalog-skill.md`: nama, sumber, tanggal audit, keputusan, dan alasan satu baris. Sebelum mengaudit, cek katalog itu dulu.
