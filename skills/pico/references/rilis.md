# Daftar periksa rilis aturan PICO

Rilis dikumpulkan paling sering sebulan sekali, kecuali untuk perbaikan keamanan atau kesalahan yang menghambat kerja. Dengan begitu pengguna cukup merge dan mengunggah ulang skill satu kali per rilis.

1. **Ubah sumbernya.** Edit `core/PICO-INTI.md` atau `adapters/<platform>/KHUSUS.md`. Jangan mengedit `skills/pico/SKILL.md` langsung, karena berkas itu dibuat oleh build.
2. **Naikkan versi** di judul `core/PICO-INTI.md`, lalu catat perubahannya di `CHANGELOG.md`.
3. **Jalankan `bash build.sh`.** Pastikan tidak ada galat ukuran dan `bash build.sh --check` lolos.
4. **Ajukan lewat PR.** Merge hanya setelah pemilik menyetujui.
5. **Pasang ulang di setiap platform:**
   - Claude: unggah ulang `dist/pico.zip` di Customize > Skills;
   - ChatGPT dan Antigravity: ganti berkas dari `dist/chatgpt/` dan `dist/antigravity/`.
6. **Uji.** Di chat baru, minta tugas kecil dan pastikan baris jejak di akhir jawaban menampilkan versi baru. Lakukan di setiap platform.
7. **Catat di PICO Monitor:** rilis, tanggal, dan platform yang sudah diperbarui.
