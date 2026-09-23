# 🚀 PiGO Framework
### **Palalloi Integrate Gravity Orchestra (v10.0)**
> *Autonomous, Self-Healing, Strict Compliance, Zero-Friction & Zero-Regression AI Engineering Governance Framework*

[![PiGO Version](https://img.shields.io/badge/PiGO_Core-v10.0-blue.svg)](https://github.com/ipalalloi/model-kerja-ai)
[![AI Architecture](https://img.shields.io/badge/Architecture-Antigravity_%7C_Gemini_Spark-orange.svg)](https://github.com/ipalalloi/model-kerja-ai)
[![Zero-Regression](https://img.shields.io/badge/Policy-Zero--Regression-green.svg)](https://github.com/ipalalloi/model-kerja-ai)
[![License](https://img.shields.io/badge/License-MIT-purple.svg)](LICENSE)

**PiGO (Palalloi Integrate Gravity Orchestra)** adalah framework tata kelola (*AI governance engine*) dan spesifikasi runtime (*runtime specification*) yang mentransformasi agen AI (Google Gemini, Claude, OpenAI, OpenRouter) dari sekadar "chatbot penjawab prompt" menjadi **insinyur perangkat lunak otonom yang berdisiplin tinggi, patuh aturan, dan berorientasi pada penyelesaian sasaran (*Goal-Pursuing*)**.

---

## 🌟 Mengapa PiGO Framework Diciptakan?

Dalam era kolaborasi pengembang dan AI, terdapat 5 masalah kritis klasik di lapangan:
1. **Kehilangan Memori / Konteks (*Context Drift*)**: Saat kuota habis atau ganti akun, AI melupakan tugas sebelumnya dan merusak pekerjaan yang sudah ada.
2. **Halusinasi Konfigurasi Lingkungan**: AI menimpa konfigurasi lokal atau server (`database.php`) hingga menyebabkan error 500 fatal.
3. **Regresi Kode (*Breaking Changes*)**: Memperbaiki 1 bug kecil tetapi mematahkan 3 fungsi utama yang sebelumnya stabil.
4. **Sampah Produksi**: Berkas percakapan, file backup manual (`*.old`), dan dump SQL ikut terunggah ke hosting live.
5. **Kelelahan Konfirmasi (*Prompt Fatigue*)**: Terlalu sering diminta menyetujui kueri baca atau perintah terminal rutin.

**PiGO Framework** menyelesaikan seluruh masalah tersebut dengan mengubah instruksi santai menjadi **Spesifikasi Mesin (*Runtime Specification*)** dengan penegakan di level global komputer pengembang.

---

## 🏛️ 4 Pilar Filosofis Akronim PiGO

| Huruf | Komponen | Makna Filosofis & Relevansi Teknis |
|:---:|---|---|
| **P** | **Palalloi** | **Identitas Arsitek & Signature Standar**: Orisinalitas dan rekam jejak pengalaman nyata dari proyek-proyek produksi (SIMPEL, simulasi_al, spmi_pemetaan_app). |
| **I** | **Integrate** | **Keterpaduan Sistem**: Mengintegrasikan perlindungan *Zero-Regression*, *Self-Healing*, *Session Sync*, proteksi webroot, dan kontinuitas memori state (`working.md`). |
| **G** | **Gravity** | **Fondasi Lingkungan**: Berakar pada platform mutakhir **Google Antigravity & ekosistem Gemini (3.8 Flash / Spark)**, menarik agen agar tidak melayang bebas tanpa aturan (*grounded by strict rules*). |
| **O** | **Orchestra** | **Harmoni Multi-Model**: Mengorkestrasi berbagai agen spesialis dan multi-LLM (Gemini Flash, Pro, Claude, OpenRouter) layaknya orkestra simfoni yang selaras. |

---

## 🗺️ Peta Evolusi Model Kerja (v1.0 → v10.0)

| Versi | Milestone Evolusi | Celah Lapangan yang Diatasi |
|---|---|---|
| **v1.0 – v2.0** | *Security Baseline* | Sanitasi input, cegah SQL injection PDO, validasi MIME sesungguhnya via `finfo_file()`. |
| **v3.0** | *Real-World Simulation Gap* | Kunci file `config/database.php` (anti-overwrite), inisiasi `working.md`, dan `build_upload.ps1`. |
| **v4.0** | *Universal Domain Decoupling* | Generalisasi aturan: Hapus aturan khusus akademik agar fleksibel untuk semua jenis aplikasi (SIM, POS, E-Commerce). |
| **v5.0** | *Multi-Project Real Insights* | *Session Hardening*, sinkronisasi status akun live, dan auto-kompresi gambar upload. |
| **v6.0** | *MVC & Anti-Bypass Protocol* | Arsitektur MVC, integrasi AG Orchestra (multi-agent), pembersihan ketat ZIP live dari file `.sql` dan `.old`. |
| **v7.0** | *Machine-Readable Enforcer* | Tagging XML (`<system_directive>`, `<hard_boundaries>`) dan injeksi `.cursorrules`. |
| **v8.0** | *Autonomous & Goal-Pursuing* | Integrasi Gemini 3.8 Flash (*Works Harder* & *Loop-Resolution*) dan Zero-Regression. |
| **v9.0** | *Self-Healing & Defensive Delivery* | *Defensive Normalization* (anti string matching kaku) dan *Self-Healing Delivery* (perlindungan MIME type di server LiteSpeed/cPanel). |
| **v10.0 (PiGO)** | *Zero-Friction & Spark Integration* | **Zero-Friction Execution** (inspeksi database & skrip CLI tanpa popup manual), kuncian mutlak *Hard Boundaries*, dan integrasi Gemini Spark cloud 24/7. |

---

## 📁 Struktur Repositori PiGO

```
model-kerja-ai/
├── docs/
│   ├── panduan_penyusunan_model_kerja.md   # Panduan lengkap langkah penyusunan dari nol
│   ├── kajian_model_kerja_v9.md            # Kajian arsitektur & temuan lapangan
│   └── penetapan_model_kerja_v10.md        # Dokumen penetapan resmi standar PiGO v10.0
├── global-rules/
│   └── global-compliance-checker.md        # Aturan global level mesin (~/.gemini/config/rules/)
├── releases/                               # Arsip ZIP rilis master (v3.1 s.d v10.0)
│   ├── model_kerja_v8.0_autonomous_compliance.zip
│   ├── model_kerja_v9.0_autonomous_compliance.zip
│   └── model_kerja_v10.0_autonomous_compliance.zip
├── template/                               # Template master proyek siap pakai (PiGO v10.0)
│   ├── .agents/
│   │   └── AGENTS.md                       # Runtime specification PiGO v10.0
│   ├── config/
│   │   └── database.php                    # Static loader (terisolasi)
│   ├── migrations/
│   │   └── MIGRATION_LOG.md                # Ledger pencatatan perubahan database
│   ├── uploads/
│   │   └── .htaccess                       # Blokir eksekusi PHP pada upload
│   ├── .cursorrules                        # Enforcer wajib baca aturan
│   ├── .gitignore                          # Daftar abaikan file internal/sensitif
│   ├── .htaccess                           # Proteksi root & webroot
│   ├── build_upload.ps1                    # Script automasi pengemas ZIP live clean
│   ├── RELEASE_MANIFEST.md                 # Ledger rilis, checksum SHA256 & rollback plan
│   └── working.md                          # External memory state AI
├── .gitignore
└── README.md
```

---


---

## ⚡ PiGO Quick Shortcuts (Perintah Pintasan Semi-Otonom)

Agar pengembang tidak perlu mengetik atau menghafal prompt panjang, PiGO Framework menyediakan **Pintasan Cepat (Command Shortcuts)**. Cukup ketik kata kunci 1-2 kata ini di chat:

| Pintasan (*Shortcut*) | Aksi Otonom AI yang Dijalankan Otomatis |
|---|---|
| **pigo run** / **lanjut** | Membaca `working.md`, melanjutkan tugas `<in_progress>`, mengetes kode, dan mengupdate state secara mandiri. |
| **pigo fix [isu/error]** | Mencari sumber error, memperbaiki kode dengan *Zero-Regression*, dan menguji ulang sampai tuntas. |
| **pigo pack** | Mengemas rilis live bersih via `build_upload.ps1`, mengambil SHA256, dan mencatatnya ke `RELEASE_MANIFEST.md`. |
| **pigo test** | Menguji sintaks (`php -l`), memeriksa inisialisasi variabel, dan memverifikasi proteksi `try-catch`. |
| **pigo sync** | Mengaudit berkas yang baru diubah dan menyinkronkan status memori `working.md`. |
| **pigo audit** | Memeriksa kepatuhan 6 pilar (keamanan upload MIME, `.htaccess`, sesi, OWASP). |

---
## 🚀 Cara Mengadopsi PiGO Framework

### 1. Inisialisasi Proyek Baru
Salin seluruh isi folder `template/` ke root direktori proyek Anda. Agen AI akan langsung mengenali identitas PiGO v10.0 dan bekerja secara otonom tanpa gangguan popup persetujuan rutin.

### 2. Penegakan Global di Komputer (*Global Enforcer*)
Pasang `global-rules/global-compliance-checker.md` ke folder konfigurasi global AI mesin Anda:
- Windows: `C:\Users\<Username>\.gemini\config\rules\`
- Linux/Mac: `~/.gemini/config/rules/`

Setiap kali Anda membuka proyek lama atau baru yang belum memiliki `.agents/AGENTS.md`, sistem akan otomatis menawarkan inisiasi PiGO secara instan.

---

## 📜 Lisensi & Kontribusi
PiGO Framework bersifat terbuka untuk pembelajaran, adopsi, dan standardisasi komunitas pengembang AI. Diskusi dan kontribusi terbuka melalui *Pull Requests* atau *Issues*.

