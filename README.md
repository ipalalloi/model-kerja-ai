# PiGO Framework — Enterprise AI & Unified PiGO x PICO v4.2 Governance

**Palalloi Integrate Gravity Orchestra (v14.0 Enterprise — Berlaku Efektif: 20 November 2026)** | Production AI Agent Governance, Cross-Platform PICO v4.2 Collaboration Bridge & Team Engineering Ecosystem

[![Version](https://img.shields.io/badge/version-14.0%20Enterprise-blue)](https://github.com/ipalalloi/model-kerja-ai)
[![Effective Date](https://img.shields.io/badge/effective-20%20Nov%202026-brightgreen)]()
[![Governance](https://img.shields.io/badge/governance-PIOM--SDCM%20v0.9%20%C2%B7%20PICO%20v4.2-purple)](AGENTS.md)
[![Engine](https://img.shields.io/badge/engine-Gemini%204%20Argon%20%7C%20Claude%20Opus%2FSonnet-orange)]()
[![CI Pipeline](https://img.shields.io/badge/ci-php--lint%20%7C%20gitleaks-brightgreen)](.github/workflows/ci.yml)

---

## Apa itu PiGO Framework v14.0?

PiGO Framework v14.0 adalah sistem pedoman arsitektur, konstitusi model kerja otonom AI (`AGENTS.md`), dan jembatan kolaborasi lintas-platform (**PiGO x PICO v4.2**) untuk rekayasa perangkat lunak serta penulisan riset akademik di **Google Antigravity 2.0**, **Gemini 4 Argon / 3.8 Flash**, **Claude**, dan **OpenRouter**.

### Pembaruan Utama v14.0 (20 November 2026):
1. **Protokol Identitas Wajib (Header & Footer Stamp)**:
   - Setiap respons agen diawali dengan **Header Info Banner** yang memuat versi aktif (`PiGO Framework v14.0`) beserta tanggal berlakunya (`20 November 2026`).
   - Setiap hasil kerja diakhiri dengan **Footer Verification Stamp** yang merangkum status verifikasi nyata (`Lolos / Sebagian / Belum`), wadah proyek, dan status penyelesaian.
2. **Jembatan Kolaborasi Dua Arah (PiGO x PICO v4.2 Bridge)**:
   - Terintegrasi langsung dengan ekosistem **PICO v4.2** (Claude). Saat menerima **`PAKET KAJIAN`** atau permintaan perbaikan lintas-agen, Antigravity bekerja di cabang terisolasi, memverifikasi sitasi DOI/URL, dan menghasilkan baris **`Log PICO`** di penutup untuk ditempel langsung ke *PICO Monitor*.
3. **Arsitektur Progressive Disclosure & Pemangkasan Bloat (<10 KB Core)**:
   - Menghilangkan komponen fiktif/tidak berperan (*Gemini Spark 24/7*, syntax `@database` palsu, dan duplikasi teks 15 KB).
   - Aturan global di `~/.gemini/config/rules/` memakai YAML frontmatter resmi (`trigger: always_on` untuk konstitusi inti dan `trigger: model_decision` untuk aturan tamu PICO), menjaga anggaran konteks di bawah batas 20.000 token Antigravity.
   - Rujukan detail dimuat *on-demand* dari [`skills/pico/references/`](skills/pico/references/).
4. **Disiplin Perubahan Terkecil, Anti-Slop & Gerbang Verifikasi Bukti**:
   - **Smallest Complete Change** (*Ponytail & Karpathy adaptation*): Hanya mengubah baris yang tertelusur ke permintaan; tidak merapikan kode sekitar secara sepihak dan tidak menambah dependensi tanpa alasan.
   - **Anti-Slop Code & UI** (*Unslop adaptation*): Bebas komentar placeholder malas (`// ... rest of code`) dan bebas tampilan "AI-vibecoded" generik.
   - **Verification Gate** (*Superpowers adaptation*): Klaim selesai wajib disertai bukti keluaran perintah uji di sesi aktif (`0 gagal`).
   - **Elephant-Goldfish Model**: Memori jangka panjang di `.agents/working.md` (*Elephant*) dipadukan dengan tinjauan mata segar tanpa bias (*Goldfish Fresh-Eyes Review*) sebelum menyerahkan PR atau naskah.

---

## Protokol Identitas Wajib (Header & Footer Stamp)

Setiap sesi dan hasil kerja agen wajib menampilkan penanda versi agar pengguna selalu mengetahui bahwa model kerja yang aktif adalah rilis terbaru:

**Pembuka Respons (Header):**
> 🛡️ **PiGO Framework v14.0** *(Berlaku: 20 November 2026)* | **Governance:** PIOM-SDCM v0.9 · PICO v4.2 Bridge

**Penutup Respons (Footer):**
```markdown
---
⚡ **PiGO v14.0 Active** *(Eff: 20 Nov 2026)* · **Verifikasi:** `<Lolos / Sebagian / Belum / N/A>` · **Wadah:** `<Nama Proyek / Global>` · **Status:** `<Selesai / In-Progress / Menunggu Keputusan>`
```
*(Bila mengerjakan tugas kolaborasi PICO / Paket Kajian, otomatis ditambahkan baris `Log PICO · proyek: ...` tepat di bawahnya).*

---

## Struktur Modular & Progressive Disclosure

```text
model-kerja-ai/
├── AGENTS.md                                 # Konstitusi utama proyek (v14.0)
├── COLLABORATION_GUIDE.md                    # Panduan kolaborasi tim (Lead, Supervisor, Contributor)
├── rules/
│   ├── pigo-global.md                        # Global rule Antigravity (trigger: always_on)
│   └── pico.md                               # Guest rule PICO v4.2 (trigger: model_decision)
├── skills/
│   ├── pigo-shortcuts/SKILL.md               # Pintasan cepat (pigo run/fix/test/audit/kajian/sync/pack)
│   └── pico/
│       ├── SKILL.md                          # Skill jembatan kolaborasi PICO v4.2
│       ├── templates/PAKET-KAJIAN.md         # Templat kajian silang antar-model AI
│       └── references/
│           ├── audit-skill.md                # Prosedur audit keamanan skill/plugin/MCP pihak ketiga
│           ├── katalog-skill.md              # Katalog 17+ skill pihak ketiga yang telah diaudit
│           ├── coding.md                     # Alur repo, perubahan terkecil, & gerbang verifikasi
│           ├── kaidah-akademik.md            # Integritas sitasi DOI, Scopus, & bahasa Indonesia EYD V
│           ├── paket-kajian.md               # Prosedur kajian silang lintas-model
│           ├── monitoring.md                 # Integrasi log dengan PICO Monitor
│           ├── wadah-proyek.md               # Standar inisialisasi repo & folder proyek
│           ├── migrasi-proyek.md             # Prosedur migrasi proyek lama
│           └── rilis.md                      # Daftar periksa rilis aturan
└── .github/
    ├── workflows/ci.yml                      # Pipeline CI otomatis (PHP Lint + Gitleaks)
    ├── CODEOWNERS                            # Peninjau wajib otomatis per direktori
    ├── PULL_REQUEST_TEMPLATE.md              # Checklist kepatuhan PR
    └── ISSUE_TEMPLATE/task-template.md       # Delegasi modul terstruktur
```

---

## Katalog Audit Skill & Referensi Eksternal (`katalog-skill.md`)

Seluruh referensi eksternal telah diaudit dengan prinsip **"Adaptasi Lebih Diutamakan daripada Pemasangan Mentah"** (mencegah bloat token, telemetri tersembunyi, dan modifikasi konfigurasi global tanpa izin):

| Sumber Referensi | Keputusan | Implementasi di PiGO v14.0 |
|---|---|---|
| **PICO v4.2 (`ipalalloi/PICO`)** | **Adopsi Penuh** | Dipasang di `rules/pico.md` (`model_decision`) & `skills/pico/` sebagai jembatan kolaborasi Claude-Antigravity. |
| **`google/elephant-goldfish-model`** | **Adaptasi Inti** | Tinjauan mata segar (*Fresh-Eyes Review*) pada kode & sitasi tanpa memasang plugin yang menghentikan alur per bagian. |
| **`obra/superpowers`** | **Adaptasi Inti** | Tabel **Gerbang Verifikasi Berbasis Bukti** (*Klaim vs Bukti Wajib vs Tidak Cukup*). |
| **`DietrichGebert/ponytail` & Karpathy** | **Adaptasi Inti** | Prinsip **Perubahan Terkecil yang Lengkap** (setiap baris berubah wajib tertelusur ke permintaan). |
| **`apissaj/humanizer-id`** | **Adaptasi Inti** | Kaidah bahasa Indonesia baku EYD V di `kaidah-akademik.md` tanpa memasang installer besar. |
| **`heydamir/unslop` & `/antislop`** | **Adaptasi Intisari** | Aturan **Anti-Slop Code & UI** langsung di konstitusi tanpa memasang CLI `npx` yang membebani sesi. |
| **`AntigravityQuotaWatcher` & `delegate-skills`** | **Adaptasi Arsitektur** | Pemangkasan rule `always_on` <10 KB & delegasi subagen native Antigravity (`research`, `browser`, `self`). |
| **`google-research/paper-orchestra`** | **Tolak** | Menulis makalah otomatis penuh & mengirim bahan mentah ke API luar (melanggar kerahasiaan draf & kaidah akademik). |
| **Skill Demo Visual 3D (`mengto`, Blender, `hairline`)** | **Tolak** | Tidak relevan dengan proyek aplikasi/riset utama dan menambah beban konteks. |

---

## Pintasan Perintah PiGO (PiGO Shortcuts v14.0)

| Perintah | Deskripsi Tindakan Otonom Agen |
|---|---|
| `pigo run [tugas]` | Lanjutkan tugas aktif di `.agents/task.md` atau eksekusi fitur baru dengan prinsip *Smallest Complete Change* |
| `pigo fix [isu]` | Diagnosis log error, perbaiki bug internal tanpa merusak signature publik, dan uji ulang hingga gejala hilang |
| `pigo test` | Jalankan Gerbang Verifikasi CLI (`php -l`, `tsc --noEmit`) pada sesi aktif dan tampilkan bukti nyata |
| `pigo audit` | Audit keamanan produksi (Zero-Leakage regex, Anti-IDOR, CSRF, Security Headers) atau audit skill pihak ketiga |
| `pigo kajian [topik]` | Buat atau kerjakan **PAKET KAJIAN** lintas-model sesuai protokol PICO v4.2 + hasilkan baris `Log PICO` |
| `pigo sync` | Sinkronkan memori `.agents/working.md` & `.agents/task.md` (*Maintenance Session* — tanpa buat ZIP baru) |
| `pigo pack` | Kemas paket rilis produksi bersih via `build_upload.ps1` (*Evidence Session*) + catat hash SHA256 otomatis |

---

## Riwayat Evolusi

| Versi | Highlight Utama | Tanggal Berlaku |
|---|---|---|
| v1.0 - v7.0 | Fondasi OWASP Top 10, Clean MVC & Anti-Bypass Checklist | Jul - Agu 2026 |
| v8.0 - v10.0 | Autonomous Goal-Pursuing, Zero-Friction & Branding PiGO | Sep 2026 |
| v11.0 - v12.0 | Antigravity 2.0 & Dual-Tier Token Budgeting | Okt 2026 |
| v13.0 - v13.3 | Resilience Engine, Session Continuity, Defense-in-Depth & Multi-Tier Collaboration | Okt 2026 |
| v13.4 | CI-Ready Edition (`ci.yml`, `CODEOWNERS`, `.env.example`, `task.md`) & PIOM DSOM-009 | 1 Nov 2026 |
| **v14.0** | **Unified PiGO x PICO v4.2, Header/Footer Stamp Wajib, Gemini 4 Argon Ready, Anti-Slop, Evidence Verification Gate & Progressive Disclosure (<10 KB)** | **20 Nov 2026** |

---

## Verifikasi Integritas Arsip Rilis

| Rilis | Berkas Arsip | Hash SHA256 |
|---|---|---|
| **v14.0** | `model_kerja_v14.0_unified_pigo_pico.zip` | `5A2447E6363E8883B03AA5767E544AC35282A046261E6611E73C411387A0F867` |
| v13.4 | `model_kerja_v13.4_production_ci_ready.zip` | `4897033A1EDA97B90DDE80AE436FF09CABC9B0C086810FCF3D3FBF105B2FD030` |
| v13.3 + Collab | `model_kerja_v13.3_enterprise_collaboration.zip` | `9EAE679AA078A6ECDD253EC986BEBB61CA4DBB0471A14392D89633069FE09A6F` |

---
*Dikelola dan dikembangkan oleh [@ipalalloi](https://github.com/ipalalloi)*
