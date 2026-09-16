# Migration Log — [Nama Proyek]

Dokumen ini adalah satu-satunya sumber kebenaran tentang semua perubahan skema database.
Setiap entry WAJIB diisi oleh agen AI atau developer sebelum melakukan perubahan skema.

---

## Format Entry Wajib

```
## [YYYYMMDD-NNN] Nama Singkat Migrasi
- **Tanggal**: YYYY-MM-DD
- **Tujuan**: Mengapa perubahan ini dilakukan.
- **File SQL**: `migrations/YYYYMMDD_NNN_nama.sql`
- **Status Dev**: ✅ Applied / ⬜ Pending
- **Status Production**: ⬜ Pending / ✅ Applied [tanggal applied]
- **Rollback**: `migrations/YYYYMMDD_NNN_rollback.sql` (jika ada)
```

---

## [YYYYMMDD-001] Skema Awal
- **Tanggal**: YYYY-MM-DD
- **Tujuan**: Instalasi skema database awal proyek.
- **File SQL**: `migrations/YYYYMMDD_001_skema_awal.sql`
- **Status Dev**: ⬜ Pending
- **Status Production**: ⬜ Pending
- **Rollback**: -
