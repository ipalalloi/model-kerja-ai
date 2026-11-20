# Wadah proyek (repo dan folder)

## Proyek baru
Bila pengguna menulis "Proyek baru: <nama>, jenis <coding/riset/disertasi/lainnya>, tujuan <satu kalimat>":

1. **Instruksi proyek.** Tulis teks Instructions: 1–3 kalimat tujuan, ditambah "Ikuti skill pico." dan "Wadah: <repo/folder/tidak>".
2. **Pilih wadah sendiri** (inti bagian 4), tanpa bertanya.
3. **Catat wadah** di teks Instructions Project (`Wadah: ...`). Izin merge tidak perlu ditulis per proyek bila sudah ada di preferensi pengguna; agen tidak menulisnya sendiri.
4. **Jalankan sendiri:**
   - folder Drive `<nama>` dengan subfolder `kajian/`, dibuat lewat konektor;
   - tautan repo privat: `https://github.com/new?owner=ipalalloi&name=<nama>&visibility=private`;
   - setelah repo dibuat dan GitHub App diberi akses: isi awal, cabang kerja, dan PR.
5. **Daftar periksa penutup.** Pisahkan apa yang sudah jadi dari apa yang masih perlu diklik pengguna, misalnya membuat Project atau menempel Instructions.

## Isi awal repo
- `README.md`: tujuan proyek dan cara menjalankan.
- `CLAUDE.md`: "Ikuti skill pico." Claude memuat aturan lengkap dari skill akun.
- `AGENTS.md`: salinan aturan tamu dari `dist/antigravity/AGENTS.md` (atau `dist/chatgpt/AGENTS.md` untuk Codex). Ini hanya diperlukan bila proyek dikerjakan juga di Antigravity atau Codex dan aturan global belum dipasang. Rujukan satu baris tidak cukup, karena agen itu tidak bisa membaca repo PICO yang privat.
- `.gitignore`: minimal `.env`, `*.key`, `vendor/`, `node_modules/`, `uploads/`, `dist/`.
- **Folder sesuai jenis proyek:**
  - coding: `src/` (atau struktur bawaan framework) dan `tests/`;
  - riset atau disertasi: `data/` (tanpa data responden), `analisis/`, dan `naskah/`.

## Akses kolaborator
- **Drive:** satu folder per proyek, dengan akses per orang (Viewer, Commenter, atau Editor).
- **GitHub:** satu repo privat per proyek. Kolaborator mendapat Read, Triage, atau Write, dan perubahan masuk lewat PR.
- **Repo PICO:** hanya pemilik yang boleh menulis.
