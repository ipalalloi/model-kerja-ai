# Penetapan Resmi: Model Kerja Versi 10.0
*Zero-Friction Autonomous Execution, Hard Boundaries, Multi-Model Orchestration & Spark Integration (September 2026)*

Dokumen ini menyatakan bahwa **Model Kerja Versi 10.0** telah resmi ditetapkan sebagai **Standar Baku Operasional (Standard Operating Procedure)** untuk seluruh pengembangan aplikasi di lingkungan pengembang.

---

## 🌟 Pilar Penetapan Model Kerja v10.0

1. **Zero-Friction Autonomous Execution**:
   - Agen AI mengeksekusi perintah CLI inspeksi, kueri database non-destruktif (`SELECT`, `SHOW TABLES`, `DESCRIBE`), manipulasi berkas, dan uji sintaks secara mandiri tanpa popup izin berulang.
2. **Kuncian Batasan Kritis (Hard Boundaries - Stop & Ask)**:
   - Agen AI **wajib berhenti dan meminta persetujuan manual pengguna** HANYA jika menghadapi:
     - Operasi destruktif database produksi (`DROP`, `TRUNCATE`, perombakan skema tabel live).
     - Perubahan alur yang berisiko merusak stabilitas sistem (*Anti-Regression*).
     - Perubahan logika otorisasi peran (*Breaking Changes*).
     - Perancangan arsitektur fitur besar (*Implementation Plan*).
3. **Integrasi Gemini Spark (Cloud 24/7 Autonomy)**:
   - Sinergi pemantauan server dan pencatatan state berkesinambungan melalui blok `<context_memory>` di `working.md`.
4. **Pembersihan Bersih Berkas Deployment (`build_upload.ps1`)**:
   - Menjamin paket rilis ZIP bebas dari berkas internal AI, backup lama, dan file `.sql` mentah.
5. **Pengawas Global Terpadu (`global-compliance-checker.md`)**:
   - Menjamin setiap proyek lama maupun baru di mesin lokal secara otomatis terikat dengan standar v10.0.

---

## 📦 Lokasi Berkas Master & Arsip

- **Repositori Resmi GitHub**: [https://github.com/ipalalloi/model-kerja-ai](https://github.com/ipalalloi/model-kerja-ai)
- **Paket Rilis Master**: `D:\AI-Work-Teams\antigravity\model_kerja_v10.0_autonomous_compliance.zip`
- **Template Proyek Baru**: `D:\Data_web\spmi_pemetaan_app\_project_template\`
- **Aturan Global Mesin**: `C:\Users\IPalalloi\.gemini\config\rules\global-compliance-checker.md`
- **Proyek Aktif Terikat**:
  - `D:\Data_web\SIMPEL\`
  - `D:\Data_web\simulasi_al\`
  - `D:\Data_web\spmi_pemetaan_app\`
