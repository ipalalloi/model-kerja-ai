# Kaidah akademik (artikel, bab, disertasi)

Kaidah ini milik pemilik dan dirawat terus-menerus, terintegrasi dengan **Palalloi Research Flow (PRF v1.0)** dan **PICO v4.2**. Untuk pemilihan jenis *Literature Review* (01–11), standar PRISMA/SANRA/PRIOR/ENTREQ/JBI, dan *Claim–Evidence Matrix*, baca juga `riset-dan-literatur.md`.

## 1. Urutan prioritas
Bila aturan bertentangan, yang di atas menang:
1. hukum dan etika (termasuk UU No. 27/2022 PDP & izin komite etik);
2. integritas akademik;
3. kebijakan institusi / jurnal sasaran;
4. PICO & PRF v1.0;
5. preferensi pengguna.

## 2. Sitasi & Keterlacakan Klaim (Claim–Evidence Traceability)
- **Gaya:** APA (edisi terbaru) sebagai bawaan; IEEE bila jurnal atau prodi memintanya. Zotero menjadi *source of truth* metadata referensi.
- **Jangan membuat sitasi (Zero Hallucination).** Setiap sitasi dicek saat ditulis, bukan di akhir:
  1. DOI dibuka di doi.org atau Crossref, lalu judul, penulis, tahun, dan jurnalnya dicocokkan;
  2. scite (bila tersedia) dipakai untuk memeriksa apakah klaim didukung (*supporting*) atau dibantah (*contrasting*);
  3. halaman penerbit dipakai bila DOI tidak ada.
- Sitasi yang tidak lolos ditandai **[BELUM TERVERIFIKASI]** dan tidak boleh masuk naskah final.
- **Bukti bertentangan wajib dicatat:** jangan hanya memilih literatur yang mendukung hipotesis (*cherry-picking*); bahas juga studi yang bertentangan dan batas generalisasinya.
- **Kebaruan (*Novelty*):** dilarang mengklaim kebaruan semata-mata karena perbedaan lokasi/instansi objek; tunjukkan kontribusi teoretis, metodologis, atau empiris pada matriks kebaruan.
- **Tinjauan mata segar:** sebelum diserahkan, bab, artikel, dan proposal melewati peninjau berkonteks segar yang mencocokkan setiap sitasi dengan sumbernya dan setiap angka dengan tabel atau skripnya.
- **Scopus:** dipakai manual oleh peneliti yang berhak; yang dibawa ke agen hanya DOI atau ekspor metadata yang diizinkan.

## 3. Penulisan disertasi dan artikel
- **Status draf AI:** setiap keluaran AI berstatus awal `AI_DRAFT` $\rightarrow$ `HUMAN_REVIEWED` $\rightarrow$ `APPROVED_FOR_USE` $\rightarrow$ `LOCKED`. Jangan menimpa master naskah final tanpa persetujuan penulis.
- **Per bab:** satu bab dikerjakan dalam satu dokumen dengan glosarium istilah yang konsisten antarbab.
- **Analisis data terireproduksi (*Reproducible*):** hanya lewat skrip yang tersimpan di repo/folder proyek (`05_ANALYSIS/`). Data mentah bersifat *immutable* (tidak boleh ditimpa), dan setiap angka di naskah wajib dapat dihitung ulang dari skrip tersebut.
- **Suntingan tidak menambah fakta:** nama, angka, tanggal, kutipan, atau sitasi baru hanya boleh datang dari sumber terverifikasi atau dari penulis.

## 4. Klasifikasi & Kerahasiaan Data Riset
Data berikut berstatus terbatas dan **tidak dikirim** ke agen/model eksternal tanpa izin eksplisit pemilik:
- identitas/data mentah responden (wajib anonimisasi lebih dulu);
- draf naskah yang belum terbit;
- hasil unduhan mentah Scopus.

## 5. Catatan penggunaan AI (wajib di bab dan artikel)
Catatan ini memuat secara transparan:
- bagian yang dibantu AI (misal penataan bahasa, skrip analisis, atau pemetaan matriks awal);
- alat dan model (misalnya Claude, Gemini 4 Carbon, atau ChatGPT);
- tanggal;
- verifikasi ilmiah yang dilakukan penulis.

## 6. Kebahasaan (bahasa Indonesia baku)
Rujukan: EYD V, KBBI, dan terbitan Badan Bahasa (diadaptasi dari `apissaj/humanizer-id`, MIT).
- **Pleonasme dan kata depan:** "demi untuk" $\rightarrow$ "untuk"; "selain daripada itu" $\rightarrow$ "selain itu"; "pada saat ini" $\rightarrow$ "kini" atau "saat ini"; "yang mana" sebagai penghubung $\rightarrow$ "yang", atau pecah kalimatnya.
- **Kalimat bersubjek jelas:** hindari "Dalam penelitian ini melakukan…". Tulis "Penelitian ini menganalisis…".
- **Nominalisasi bertumpuk:** "melakukan analisis terhadap" $\rightarrow$ "menganalisis"; "memberikan pengaruh terhadap" $\rightarrow$ "memengaruhi".
- **Bebas kalke terjemahan:** hindari pola Inggris kata per kata seperti "di mana" sebagai penghubung relatif atau klise pembuka AI ("Di era digital yang berkembang pesat saat ini…").
- **Batas suntingan:** perbaikan bahasa dilarang menambah klaim, angka, atau penilaian yang tidak ada di draf.
