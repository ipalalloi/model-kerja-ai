# build_upload.ps1 — Script Otomatis Pengemasan Paket Upload Rilis Live Clean (v6.0)

$date = Get-Date -Format "yyyyMMdd_HHmm"
$output = "dist_upload_$date.zip"

# RegEx Exclusion: Menyingkirkan semua berkas AI, berkas dev, backup, zip/rar lama, SQL, CSV sampel, dan OS junk
$excludePatterns = "(?i)working\.md|task\.md|implementation_plan\.md|walkthrough\.md|_ai_context|\.ai_draft|Thumbs\.db|\.DS_Store|\.vscode|\.idea|node_modules|vendor|dist_upload.*\.zip|\.rar$|\.old$|\.bak$|\.tmp$|\.sql$|\.csv$|\.env$|\.env\.local$|\.cursorrules|\\logs\\|\\migrations\\|\\scratch\\"

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "  MEMBUAT PAKET RELEASE LIVE CLEAN: $output" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "Mengecualikan berkas AI, backup (*.old/*.rar/*.zip), SQL dump, dan kredensial..." -ForegroundColor Yellow

$filesToZip = Get-ChildItem -Path "." -Recurse -File | Where-Object { $_.FullName -notmatch $excludePatterns }

if ($filesToZip.Count -eq 0) {
    Write-Host "❌ Tidak ada berkas yang memenuhi syarat untuk dikemas." -ForegroundColor Red
    exit
}

Write-Host "Memproses $($filesToZip.Count) berkas..." -ForegroundColor Gray

# Kompresi menggunakan Compress-Archive
$filesToZip | ForEach-Object { $_.FullName } | Compress-Archive -DestinationPath $output -Update -ErrorAction SilentlyContinue

if (Test-Path $output) {
    $item = Get-Item $output
    $hash = (Get-FileHash $output -Algorithm SHA256).Hash
    Write-Host ""
    Write-Host "✅ PAKET RILIS SELESAI & BERSIH!" -ForegroundColor Green
    Write-Host "Berkas   : $($item.Name)" -ForegroundColor Green
    Write-Host "Ukuran   : $([math]::Round($item.Length / 1KB, 2)) KB ($($item.Length) bytes)" -ForegroundColor Green
    Write-Host "SHA256   : $hash" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "📌 Jangan lupa mencatat SHA256 ini di RELEASE_MANIFEST.md!" -ForegroundColor Yellow
} else {
    Write-Host "❌ Gagal membuat paket rilis." -ForegroundColor Red
}
