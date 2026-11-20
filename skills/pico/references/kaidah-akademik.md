# Kaidah akademik (artikel, bab, disertasi)

Kaidah ini milik pemilik dan dirawat terus-menerus. Setiap perubahan masuk lewat PR ke repo PICO. Dasarnya adalah model kerja v1.1 (1 Nov 2026) dan keputusan sesudahnya.

## 1. Urutan prioritas
Bila aturan bertentangan, yang di atas menang:
1. hukum dan etika;
2. integritas akademik;
3. kebijakan institusi;
4. PICO;
5. preferensi pengguna.

## 2. Sitasi
- **Gaya:** APA (edisi terbaru) sebagai bawaan; IEEE bila jurnal atau prodi memintanya.
- **Jangan membuat sitasi.** Setiap sitasi dicek saat ditulis, bukan di akhir:
  1. DOI dibuka di doi.org atau Crossref, lalu judul, penulis, tahun, dan jurnalnya dicocokkan;
  2. scite (konektor bila tersedia) dipakai untuk memeriksa apakah klaimnya didukung atau dibantah;
  3. halaman penerbit dipakai bila DOI tidak ada.
- Sitasi yang tidak lolos ditandai **[BELUM TERVERIFIKASI]** dan tidak boleh masuk naskah final.
- **Sebelum diserahkan,** bab, artikel, dan proposal melewati tinjauan mata segar (inti bagian 6). Peninjau mencocokkan setiap sitasi dengan sumbernya dan setiap angka dengan tabel atau skripnya.
- **Scopus:** dipakai manual oleh anggota yang berhak, dan yang dibawa ke agen hanya DOI-nya. Integrasi otomatis menunggu izin tertulis.

## 3. Penulisan disertasi dan artikel
- **Per bab.** Satu bab dikerjakan dalam satu dokumen. Glosarium istilah dijaga agar istilah konsisten antarbab.
- **Draf di Docs,** di folder proyek. Argumen dan simpulan harus disetujui penulis.
- **Analisis data** hanya lewat skrip yang tersimpan di repo atau folder proyek. Angka di naskah harus bisa dihitung ulang dari skrip itu, dan data asli tidak diubah.
- **Suntingan tidak menambah fakta.** Nama, angka, tanggal, kutipan, atau sitasi baru hanya boleh datang dari sumber atau dari penulis.

## 4. Data
Data berikut tidak dikirim ke agen atau model lain tanpa izin pemilik untuk tugas tersebut:
- data responden;
- draf yang belum terbit;
- hasil Scopus.

## 5. Catatan penggunaan AI (wajib di bab dan artikel)
Catatan ini memuat:
- bagian yang dibantu AI;
- alat dan model, misalnya Claude, ChatGPT, atau Gemini;
- tanggal;
- verifikasi yang dilakukan penulis.

Penggunaan AI dinyatakan terbuka dan tidak disamarkan.

## 6. Kebahasaan (bahasa Indonesia)
Bagian ini memuat kaidah baku, bukan gaya. Rujukannya adalah EYD V, KBBI, dan terbitan Badan Bahasa. Polanya diadaptasi dari apissaj/humanizer-id (MIT).
- **Pleonasme dan kata depan:** "demi untuk" menjadi "untuk"; "selain daripada itu" menjadi "selain itu"; "pada saat ini" cukup "kini" atau "saat ini"; "yang mana" sebagai penghubung diganti "yang", atau kalimatnya dipecah.
- **Kalimat bersubjek:** hindari "Dalam penelitian ini melakukan…". Tulis "Penelitian ini menganalisis…".
- **Nominalisasi bertumpuk:** "melakukan analisis terhadap" menjadi "menganalisis"; "memberikan pengaruh terhadap" menjadi "memengaruhi".
- **Kalke terjemahan:** hindari pola Inggris yang diterjemahkan kata per kata, misalnya "di mana" sebagai penghubung relatif.
- **Batas suntingan:** perbaikan bahasa tidak boleh menambah klaim, angka, atau penilaian yang tidak ada di draf (bagian 3).
