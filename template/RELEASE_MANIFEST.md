# Release Manifest — [Nama Proyek]

---

## [v0.1.0] — YYYY-MM-DD
### Perubahan
- Rilis perdana / setup awal

### File yang Berubah
- (semua file)

### Migrasi Wajib Dijalankan
- [YYYYMMDD-001] Skema Awal

### Checksum Paket Upload
- File: dist_upload_YYYYMMDD_HHmm.zip
- SHA256: [jalankan: Get-FileHash .\dist_upload_*.zip | Select Hash]

### Rollback Plan
- DB: restore dari backup sebelum deploy
- File: revert ke Git commit awal
