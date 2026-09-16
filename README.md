# 🚀 AI Working Model & Governance Framework
> **Autonomous, Self-Healing, Strict Compliance & Zero-Regression AI Engineering Framework**

Framework ini adalah pedoman arsitektur, tata kelola (*governance*), dan protokol kontinuitas bagi agen AI (Google Gemini, Claude, OpenAI, OpenRouter) dalam mengembangkan aplikasi web modern (PHP, JavaScript, MySQL/MariaDB, REST API, Mobile-Ready).

---

## 🌟 Mengapa Framework Ini Dibuat?

Banyak pengembang mengalami masalah berulang saat bekerja bersama AI:
1. **Kehilangan Memori / Konteks**: Saat kuota habis atau ganti akun, AI melupakan tugas sebelumnya dan merusak pekerjaan yang sudah ada.
2. **Halusinasi Konfigurasi**: AI menimpa konfigurasi lokal atau server (`database.php`) hingga menyebabkan error 500.
3. **Regresi Kode (*Breaking Changes*)**: Memperbaiki 1 bug kecil tetapi mematahkan 3 fitur utama lainnya.
4. **Sampah Produksi**: Berkas percakapan, file backup manual (`*.old`), dan dump SQL ikut terunggah ke hosting live.

Framework ini menyelesaikan seluruh masalah tersebut dengan mengubah instruksi dari sekadar "prompt santai" menjadi **Spesifikasi Mesin (*Runtime Specification*)** dengan penegakan di level global komputer.

---

## 🗺️ Peta Evolusi Model Kerja (v1.0 → v9.0)

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

---

## 📁 Struktur Repositori

```
model-kerja-ai/
├── docs/
│   ├── panduan_penyusunan_model_kerja.md   # Panduan lengkap langkah penyusunan dari nol
│   └── kajian_model_kerja_v9.md            # Kajian arsitektur & temuan lapangan terbaru
├── global-rules/
│   └── global-compliance-checker.md        # Aturan global level mesin (~/.gemini/config/rules/)
├── releases/                               # Arsip ZIP rilis master (v3.1 s.d v9.0)
│   ├── model_kerja_v8.0_autonomous_compliance.zip
│   └── model_kerja_v9.0_autonomous_compliance.zip
├── template/                               # Template master proyek siap pakai
│   ├── .agents/
│   │   └── AGENTS.md                       # Runtime specification v9.0
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

## 🚀 Cara Menggunakan

### 1. Untuk Proyek Baru
Salin seluruh isi folder `template/` ke root direktori proyek Anda. Agen AI akan langsung mengenali aturan dan bekerja secara mandiri.

### 2. Untuk Proyek yang Sudah Ada
Pasang `global-rules/global-compliance-checker.md` ke folder konfigurasi global AI mesin Anda:
- Windows: `C:\Users\<Username>\.gemini\config\rules\`
- Linux/Mac: `~/.gemini/config/rules/`

Setiap kali Anda membuka proyek lama yang belum memiliki `.agents/AGENTS.md`, AI akan otomatis menawarkan inisiasi dan setup otomatis.

---

## 📜 Lisensi & Kontribusi
Repositori ini bersifat terbuka sebagai bahan pembelajaran, rujukan, dan standardisasi komunitas pengembang AI-assisted coding. Kontribusi, diskusi, dan penyempurnaan aturan sangat dipersilakan melalui *Pull Requests* atau *Issues*.
