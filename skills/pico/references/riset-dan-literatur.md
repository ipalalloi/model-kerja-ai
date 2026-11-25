# Metodologi Riset, PRF v1.0 & 11 Jenis Literature Review

Panduan operasional terpadu untuk aktivitas riset, disertasi, dan artikel ilmiah dengan memadukan **Palalloi Research Flow (PRF v1.0)**, **PICO v4.2**, dan standar pelaporan internasional terkini.

---

## 1. Prinsip Inti Riset Terkendali (Integrasi PRF v1.0)
1. **Source Before Synthesis**: Sumber wajib ditemukan, dibuka, dan diverifikasi metadatanya (DOI/Crossref) sebelum disintesis menjadi paragraf.
2. **Zotero as Source of Truth**: Referensi final dikelola melalui Zotero; placeholder sementara menggunakan format `[CITE: SRC-xxxx, p. xx]` dan dilarang masuk naskah final sebelum disinkronkan.
3. **Smart Citation & Contradictory Evidence Wajib**: Klaim utama, kebaruan (*novelty*), dan hubungan kausal wajib diperiksa konteks dukungannya (*supporting vs contrasting*) melalui Scite.ai / pembacaan teks penuh. Bukti yang bertentangan **wajib dicatat dan dibahas**, bukan disembunyikan.
4. **Novelty Bukan Sekadar Beda Lokasi**: Kebaruan ilmiah tidak boleh hanya diklaim karena perbedaan objek/daerah; wajib memetakan celah teori, metode, variabel, atau mekanisme pada *Novelty Matrix*.
5. **Status Siklus Naskah AI**: Seluruh draf keluaran AI berstatus awal `AI_DRAFT` $\rightarrow$ `HUMAN_REVIEWED` $\rightarrow$ `APPROVED_FOR_USE` $\rightarrow$ `LOCKED`. Peneliti memegang otoritas ilmiah penuh.

---

## 2. Matriks 11 Jenis Literature Review, Standar Pelaporan & Instrumen

Saat memulai telaah pustaka (`pigo riset`), agen memilih atau merekomendasikan jenis review yang tepat berdasarkan tujuan penelitian:

| Kode & Jenis Review | Fungsi Utama & Kapan Dipilih | Kerangka Pertanyaan | Standar Pelaporan & Penilaian Mutu |
|---|---|---|---|
| **01. Narrative Review** | Menjelaskan & mengkritisi literatur secara fleksibel dan interpretatif untuk latar belakang bab/pemahaman luas. | Topik / Tema Konseptual | **SANRA** (*Scale for the Assessment of Narrative Review Articles*) |
| **02. Systematic Review** | Menjawab pertanyaan riset terfokus dengan kriteria inklusi/eksklusi eksplisit dan pencarian komprehensif yang transparan. | **PICO / PICOS / PEO** | **PRISMA 2020** · Protokol PROSPERO/OSF · Bias: **RoB 2 / ROBINS-I / JBI** |
| **03. Scoping Review** | Memetakan keluasan bukti, definisi konsep kunci, jenis studi, dan celah riset (*research gap*) di bidang baru/luas. | **PCC** (*Population, Concept, Context*) | **PRISMA-ScR** · Metodologi Arksey & O'Malley / JBI Scoping |
| **04. Integrative Review** | Menggabungkan literatur empiris (kuantitatif/kualitatif) dan teoretis untuk membangun model/kerangka konseptual baru. | Konsep & Konstruk Teori | **Whittemore & Knafl (2005)** (5 tahap) / **Torraco (2016)** |
| **05. Critical Review** | Mengevaluasi asumsi dasar, kekuatan argumen, dan kelemahan metodologis literatur guna menantang gagasan/memajukan teori. | Klaim Teori vs Bukti Kritis | **Grant & Booth (2009) SALSA** · Matriks Kritik Asumsi & Kontra-Bukti |
| **06. Rapid Review** | Menyederhanakan tahapan tinjauan sistematis secara terukur untuk mendukung keputusan kebijakan/praktis yang mendesak waktu. | **PICO** Terfokus | **Cochrane Rapid Reviews Guidance** / **PRISMA-RR** (batas penyederhanaan wajib dideklarasikan) |
| **07. Umbrella Review** | Mensintesis dan membandingkan temuan tingkat tinggi antar-*Systematic Review* / *Meta-Analysis* yang sudah terbit. | **PICO** Tingkat Tinjauan | **PRIOR** (*Preferred Reporting Items for Overviews of Reviews*) · Mutu: **AMSTAR 2 / ROBIS** |
| **08. Qualitative Evidence Synthesis (QES)** | Menggabungkan temuan studi kualitatif tentang pengalaman hidup, makna, persepsi, dan konteks sosial. | **SPIDER** / **PerSPEcTiF** | **ENTREQ** (atau **eMERGe** untuk meta-etnografi) · Keyakinan bukti: **GRADE-CERQual** |
| **09. Mixed Methods Review** | Mengintegrasikan bukti efektivitas kuantitatif dan pengalaman kualitatif untuk memahami dampak sekaligus mekanisme konteks. | **PICO + SPIDER** (*Convergent*) | **JBI MMSR** (*Convergent Integrated / Segregated*) · Mutu: **MMAT** (*Mixed Methods Appraisal Tool*) |
| **10. State-of-the-Art (SotA) Review** | Mengkaji perkembangan paling mutakhir, perdebatan aktif saat ini, dan arah masa depan (*frontier*) suatu bidang. | Evolusi Kronologis & Garda Depan | **Barry et al. (2022)** (6 tahap SotA) — fokus literatur 3–5 tahun terakhir + tonggak pergeseran paradigma |
| **11. Thematic Review** | Mengorganisasi literatur berdasarkan pola tema berulang, membandingkan persamaan, kontradiksi, dan celah antarstudi. | Matriks Konsep–Tema | **Thomas & Harden (2008)** (*Thematic Synthesis*) / **Braun & Clarke** + Matriks Sintesis Konsep (Webster & Watson) |

---

## 3. Artefak Minimum Telaah Pustaka di Proyek Riset
Setiap penugasan review literatur menghasilkan artefak terstruktur (disimpan di folder `02_LITERATURE/` atau `kajian/`):
1. **Protokol Pencarian Ringkas**: Jenis review (01–11), kerangka pertanyaan (PICO/PCC/SPIDER), basis data (Scopus/Crossref/Google Scholar/PubMed), string Boolean, rentang tahun, dan kriteria inklusi/eksklusi.
2. **Log Penapisan (*Screening Log*)**: Jumlah kandidat awal $\rightarrow$ duplikat dihapus $\rightarrow$ lolos judul/abstrak $\rightarrow$ lolos teks penuh + alasan eksklusi.
3. **Claim–Evidence Matrix (Standar PRF)**:
   `| Claim ID | Pernyataan Klaim | Source ID & DOI | Lokasi (Hlm/Bagian) | Jenis Bukti | Status Dukungan (Supported/Mixed/Contested) | Kontra-Bukti / Keterbatasan | Verifikasi Peneliti |`
4. **Novelty & Gap Matrix** (khusus disertasi/artikel baru): Membandingkan studi terdahulu pada dimensi Fokus, Teori, Metode, Konteks, Temuan, Keterbatasan, dan Celah Spesifik yang dijawab penelitian ini.

---

## 4. Orkestrasi Agen Otomatis untuk Riset di Antigravity
Ketika mengerjakan telaah pustaka atau analisis naskah di Antigravity:
1. **Orchestrator (`Gemini 4 Carbon`)**: Merumuskan protokol review (01–11), merancang matriks sintesis, menyusun argumen akademik sesuai EYD V (`kaidah-akademik.md`), dan menjaga koherensi antarbab.
2. **Subagen `research` / Python `run_workflow` (`parallel`)**: Mengekstrak metadata, populasi, metode, dan temuan dari banyak berkas PDF/ekspor Zotero lokal secara paralel dengan skema JSON ketat tanpa membanjiri jendela konteks utama.
3. **Fresh-Eyes Reviewer (`research` terisolasi)**: Memeriksa draf akhir terhadap *Claim–Evidence Matrix* dan memastikan nol sitasi fiktif serta kesesuaian seluruh angka dengan keluaran skrip analisis.
4. **Cross-Model Red-Team (`PAKET KAJIAN` / OpenRouter Claude & DeepSeek)**: Menguji kelemahan metodologi, potensi *confirmation bias*, dan *overclaim* sebelum diserahkan ke promotor atau jurnal.
