# Panduan Kolaborasi Proyek (Dosen & Mahasiswa)
*PiGO Framework Collaboration Standard — Pedoman Kerja Tim Terpadu (Oktober 2026)*

Selamat datang di tim pengembang proyek! Panduan ini dirancang agar Dosen dan Mahasiswa dapat berkolaborasi secara rapi, produktif, dan aman tanpa risiko merusak kode utama sistem.

---

## 👥 1. Pembagian Peran (Role & Responsibility)

| Peran | Pelaksana | Tanggung Jawab Utama |
|---|---|---|
| **Project Lead / Tech Architect** | Anda (Dosen Penanggung Jawab) | Mengelola branch `main`, approval Pull Request, kredensial production, dan arsitektur inti. |
| **Co-Architect / Core Reviewer** | Dosen Kolaborator | Mereview kesesuaian alur bisnis/riset, validasi instrumen, dan pengujian fitur. |
| **Feature Developer** | Mahasiswa | Mengembangkan modul/fitur spesifik di branch masing-masing, menulis kode bersih, dan mengajukan Pull Request. |

---

## 🌿 2. Alur Kerja Git (Git Workflow 5 Langkah)

Setiap pengembang **DILARANG KERAS** melakukan commit langsung ke branch `main`. Seluruh pengerjaan fitur wajib melalui alur berikut:

```
[main] ───────────────────────────┬ (Hanya Project Lead yang merge)
                                  │
[staging] ──────┬─────────────────┴ (Area Uji Integrasi Tim)
                │ (checkout -b)
[feat/modul] ───┴─── (Mahasiswa ngoding di sini) ───► [Buka Pull Request]
```

### Langkah 1: Ambil Kode Terbaru
Sebelum mulai membuat fitur baru, pastikan branch lokal Anda sinkron dengan server:
```bash
git checkout staging
git pull origin staging
```

### Langkah 2: Buat Branch Fitur Mandiri
Gunakan format nama branch: `feat/<nama-panggilan>-<nama-fitur>` atau `fix/<nama-panggilan>-<nama-bug>`.
```bash
git checkout -b feat/budi-modul-kuisioner
```

### Langkah 3: Kerjakan Fitur & Gunakan Database Lokal
- Gunakan database development lokal (XAMPP/Docker).
- **Dilarang keras** menghubungkan laptop ke database server production.
- Manfaatkan AI Assistant (Antigravity/Cursor/VSCode) yang mematuhi pedoman `.agents/AGENTS.md`.

### Langkah 4: Uji Coba & Periksa Mandiri (Pre-Commit Check)
Sebelum commit, pastikan:
1. Tidak ada file `.env`, kredensial, atau password asli yang ikut ter-stage (`git status`).
2. Kode bebas dari error sintaks (misal via terminal: `php -l nama_file.php`).
3. Kueri data personal sudah mengikat hak milik pengguna (`WHERE id = :id AND user_id = :current_user_id` / Anti-IDOR).

Lakukan commit dengan pesan yang jelas:
```bash
git add .
git commit -m "feat: tambah form input kuisioner mahasiswa"
```

### Langkah 5: Push ke GitHub & Buka Pull Request (PR)
Kirim branch fitur Anda ke GitHub:
```bash
git push -u origin feat/budi-modul-kuisioner
```
Buka repositori di GitHub, lalu klik tombol **"Compare & pull request"**:
- **Base repository**: `staging` (bukan langsung ke `main`).
- **Head repository**: `feat/budi-modul-kuisioner`.
- Isi formulir deskripsi PR dan centang seluruh checklist yang tersedia.

---

## 🔒 3. Aturan Ketat Keamanan (Zero-Leakage & Safety Rules)

1. **Kerahasiaan Kredensial**:
   - Seluruh password database, token rahasia, dan API key wajib berada di file `.env`.
   - File `.env` sudah masuk `.gitignore` dan tidak boleh dipaksa di-commit (`git add -f`).
   - Gunakan `.env.example` sebagai contoh variabel yang dibutuhkan.
2. **Anti-IDOR (Insecure Direct Object Reference)**:
   - Dilarang membuat kueri baca/ubah yang hanya mengandalkan ID dari URL (`?id=5`) tanpa memastikan data tersebut milik user yang sedang login.
3. **Pencegahan SQL Injection & XSS**:
   - Wajib menggunakan *Prepared Statements* (PDO dengan parameter `:bind`).
   - Seluruh variabel yang dicetak ke HTML wajib melalui `htmlspecialchars()`.
4. **File Upload Aman**:
   - Upload berkas wajib memverifikasi tipe MIME asli (bukan hanya ekstensi), nama file diacak (*hash*), dan disimpan di luar folder kode eksekusi.

---

## 💡 4. Tips Menggunakan Asisten AI Bersama PiGO Framework

Jika Anda menggunakan asisten koding AI (Google Antigravity, Cursor, GitHub Copilot, atau Claude Code):
- Di folder proyek sudah tersedia file `.agents/AGENTS.md`. File ini adalah "pengawas otomatis" standar kualitas tim kita.
- Anda dapat mengetik instruksi singkat di terminal/chat AI:
  - `pigo test` : Untuk meminta AI menguji sintaks berkas yang baru saja Anda edit.
  - `pigo fix` : Jika menemukan error, minta AI mencari log dan memperbaikinya.
  - `pigo audit` : Meminta AI memvalidasi apakah kode Anda sudah memenuhi standar keamanan sebelum membuat Pull Request.

---

## ❓ 5. Bantuan & Pertanyaan Kendala
Jika Anda mengalami kebuntuan atau menemukan *conflict branch* saat git merge:
1. Diskusikan di kanal tim / grup komunikasi riset.
2. Tag Dosen Penanggung Jawab pada Issue atau Pull Request di GitHub.
3. Jangan pernah melakukan `git push --force` ke branch bersama!
