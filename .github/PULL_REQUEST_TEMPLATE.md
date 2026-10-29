## 📝 Deskripsi Perubahan
*Jelaskan secara ringkas fitur apa yang ditambahkan atau perbaikan apa yang dilakukan:*
- 

## 🔗 Tautan Issue / Tugas
*Sebutkan nomor Issue terkait (contoh: Closes #12):*
- Closes #

## 🏷️ Tipe Perubahan
*Pilih tipe perubahan berikut dengan tanda [x]:*
- [ ] Fitur Baru (`feat`)
- [ ] Perbaikan Bug (`fix`)
- [ ] Refactoring / Pembersihan Kode (`refactor`)
- [ ] Dokumentasi (`docs`)
- [ ] Pengujian / Unit Test (`test`)

---

## 🛡️ Checklist Kepatuhan PiGO Framework (Wajib Dicentang Semua)
Sebelum mengajukan Pull Request ini, kontributor wajib memverifikasi:
- [ ] **Uji Coba Mandiri**: Fitur sudah diuji dan berjalan normal di lingkungan lokal.
- [ ] **Zero-Regression**: Tidak ada fitur lama yang rusak akibat penambahan kode ini.
- [ ] **Validasi Sintaks**: Seluruh berkas yang disentuh lolos uji sintaks CLI (`php -l` / `tsc --noEmit`).
- [ ] **Anti-IDOR**: Kueri manipulasi/pembacaan data personal telah terikat hak milik pengguna (`user_id = :current_user`).
- [ ] **Zero-Leakage**: Tidak ada password, API key, atau berkas `.env` yang ikut ter-commit dalam PR ini.
- [ ] **Input & Output Sanitization**: Input telah divalidasi dan output HTML aman dari XSS (`htmlspecialchars`).
- [ ] **Target Branch Benar**: Target merger diarahkan ke branch `staging` (bukan langsung ke `main`).

---

## 📸 Bukti Pengujian (Tangkapan Layar / GIF)
*Sertakan tangkapan layar tampilan antarmuka atau hasil terminal pengujian:*
- *(Tempel gambar di sini)*
