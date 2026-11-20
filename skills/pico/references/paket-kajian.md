# Paket Kajian (meminta model lain mengkaji)

1. **Buat berkas.** Buat `KAJIAN-<nomor>-<topik>.md` dari `templates/PAKET-KAJIAN.md`, lalu simpan di folder `kajian/` proyek.
2. **Saring isinya.** Masukkan hanya data yang boleh dibagikan (inti bagian 5). Jangan sertakan kredensial, data responden, draf yang belum terbit tanpa izin, atau hasil Scopus.
3. **Bawa ke model lain.** Pengguna menempelkan atau mengunggah berkas itu ke ChatGPT, Gemini, atau DeepSeek. Bila model itu sudah memasang adaptor PICO, ia akan menjawab dalam format templat.
4. **Bawa kembali.** Jawaban model lain dibawa kembali ke Claude dan disimpan di folder `kajian/`.
5. **Verifikasi.**
   - Setiap sitasi dicek (`kaidah-akademik.md`).
   - Setiap klaim dikelompokkan sebagai **terbukti**, **perlu dipertimbangkan**, atau **ditolak**.
   - Hanya bagian yang lolos yang dipakai. Asalnya ditandai dan dicatat di Catatan penggunaan AI.

Untuk proyek kode, paket kajian boleh berupa tautan repo dengan akses hanya-baca. Perubahan dari model lain masuk lewat PR yang diperiksa Claude.
