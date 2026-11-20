# Katalog skill pihak ketiga yang sudah diaudit

Cek katalog ini sebelum mengaudit. Audit ulang hanya bila repo berganti versi besar, atau bila ada masalah baru di log yang mungkin dijawabnya. Prosedurnya ada di `audit-skill.md`.

Keputusan: **adopsi** (dipasang), **adaptasi** (gagasan atau teks diambil ke PICO dengan atribusi), **pakai yang terpasang**, **tolak**, **tunda** (butuh data).

| Kandidat | Sumber | Audit | Keputusan | Alasan |
| --- | --- | --- | --- | --- |
| Elephant-Goldfish Model | github.com/google/elephant-goldfish-model (Apache-2.0) | 2026-11-20 | adaptasi | Tinjauan mata segar (inti bagian 6). Plugin tidak dipasang: alurnya berhenti per bagian untuk masukan |
| humanizer-id | github.com/apissaj/humanizer-id (MIT) | 2026-11-20 | adaptasi | Kaidah kebahasaan di `kaidah-akademik.md` bagian 6. Tidak dipasang: besar, installer menulis ke konfigurasi global, contoh suntingannya menambah klaim |
| andrej-karpathy-skills | github.com/forrestchang/andrej-karpathy-skills | 2026-11-20 | adaptasi | Satu prinsip di `coding.md`. Tidak dipasang: tanpa berkas LICENSE, tidak ada commit sejak April 2026 |
| superpowers | github.com/obra/superpowers (MIT) | 2026-11-07 | adaptasi | Gerbang verifikasi di `coding.md` |
| Ponytail | github.com/DietrichGebert/ponytail (MIT) | 2026-11-07 | adaptasi | Perubahan terkecil di `coding.md` |
| konoha | github.com/andycungkrinx91/konoha (MIT) | 2026-11-07 | adaptasi | Daftar perintah yang wajib ditanyakan. Tidak dipasang: menulis konfigurasi global, hook PreToolUse, bot Telegram |
| design-critique, accessibility-review, ux-copy | plugin `design` yang terpasang di akun | 2026-11-20 | pakai yang terpasang | Gerbang antarmuka di adaptor Claude |
| anti-slop (/antislop) | github.com/miqdadbadjuber/anti-slop (MIT) | 2026-11-20 | tolak | Daftar periksa gaya antislop dihapus atas keputusan pemilik di v3.1; installer menulis penunjuk yang dimuat setiap sesi |
| unslop | github.com/heydamir/unslop (CC BY 4.0) | 2026-11-20 | tolak | Belum ada masalah tampilan di log. Kandidat bila proyek UI butuh perbaikan tampilan |
| jakubkrehel/skills | github.com/jakubkrehel/skills (MIT) | 2026-11-20 | tolak | Risiko rendah (tanpa skrip), tetapi belum ada masalah UI di log. Kandidat pertama bila gerbang antarmuka diperluas |
| ui-ux-pro-max | github.com/nextlevelbuilder/ui-ux-pro-max-skill (MIT) | 2026-11-20 | tolak | Sangat besar dan bergantung pada skrip; tumpang tindih dengan `frontend-design` |
| uxuiprinciples agent-skills | github.com/uxuiprinciples/agent-skills | 2026-11-20 | tolak | Tanpa berkas LICENSE; README menawarkan API berbayar |
| chrome-devtools-mcp | github.com/ChromeDevTools/chrome-devtools-mcp (Apache-2.0) | 2026-11-20 | tolak | Statistik pemakaian aktif secara bawaan; alat browser yang ada sudah cukup. Bila dipakai di Claude Code lokal, wajib `--no-usage-statistics` |
| paper-orchestra | github.com/google-research/paper-orchestra (Apache-2.0) | 2026-11-20 | tolak | Menulis makalah otomatis dan mengirim bahan mentah ke model lain lewat API key |
| dream-loop, MengTo/Skills, hairline, skill Emil Kowalski, REA, fil.design | berbagai | 2026-11-20 | tolak | Untuk demo visual, 3D, dan animasi; jenis tugas ini tidak ada di log |
| AutoGPT, prompts.chat, cc-switch, system-prompts-and-models-of-ai-tools | berbagai | 2026-11-20 | tolak | Platform otonom, kumpulan prompt umum, pengelola kredensial, dan instruksi sistem yang bocor |
| design-taste-frontend | belum diketahui | 2026-11-20 | tunda | Butuh tautan repo |
