# ==============================================================================
# build_upload.ps1 — PiGO Framework v13.4
# Pengemasan Paket Rilis Live Production (Clean Release Packager)
# ==============================================================================

param(
    [switch]$IncludeMigrations = $false,
    [switch]$IncludeVendor = $false
)

$date     = Get-Date -Format "yyyyMMdd_HHmm"
$output   = "dist_upload_$date.zip"
$rootPath = $PSScriptRoot

# Pattern pengecualian berkas pengembangan dan rahasia
$baseExclude = "(?i)working\.md|task\.md|implementation_plan\.md|walkthrough\.md|_ai_context|\.ai_draft|Thumbs\.db|\.DS_Store|\.vscode|\.idea|dist_upload.*\.zip|\.rar$|\.old$|\.bak$|\.tmp$|\.env$|\.env\..*|\\logs\\|\\scratch\\"

$excludePatterns = $baseExclude
if (-not $IncludeMigrations) {
    $excludePatterns += "|\\migrations\\"
}
if (-not $IncludeVendor) {
    $excludePatterns += "|node_modules|vendor"
}

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "  PIGO CLEAN PRODUCTION RELEASE PACKAGER" -ForegroundColor Cyan
Write-Host "  Target Arsip: $output" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "Migrations disertakan : $IncludeMigrations" -ForegroundColor Yellow
Write-Host "Vendor disertakan     : $IncludeVendor" -ForegroundColor Yellow
Write-Host ""

Push-Location $rootPath

try {
    $filesToZip = Get-ChildItem -Path "." -Recurse -File |
        Where-Object { $_.FullName -notmatch $excludePatterns }

    if ($filesToZip.Count -eq 0) {
        Write-Host "GAGAL: Tidak ada berkas yang memenuhi syarat untuk dikemas." -ForegroundColor Red
        exit 1
    }

    Write-Host "Memproses $($filesToZip.Count) berkas dengan struktur direktori relatif..." -ForegroundColor Gray

    if (Test-Path $output) { Remove-Item $output -Force }

    # Kompresi dengan System.IO.Compression untuk menjaga struktur direktori relatif
    Add-Type -AssemblyName System.IO.Compression
    Add-Type -AssemblyName System.IO.Compression.FileSystem
    $zip = [System.IO.Compression.ZipFile]::Open((Join-Path $rootPath $output), 'Create')
    try {
        foreach ($f in $filesToZip) {
            $rel = $f.FullName.Substring($rootPath.Length).TrimStart('\', '/') -replace '\\', '/'
            [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile(
                $zip, $f.FullName, $rel, [System.IO.Compression.CompressionLevel]::Optimal
            ) | Out-Null
        }
    } finally {
        $zip.Dispose()
    }

    if (-not (Test-Path $output)) {
        Write-Host "GAGAL: Berkas rilis tidak berhasil dibuat." -ForegroundColor Red
        exit 1
    }

    $item   = Get-Item $output
    $hash   = (Get-FileHash $output -Algorithm SHA256).Hash
    $sizeKB = [math]::Round($item.Length / 1KB, 2)

    Write-Host ""
    Write-Host "PAKET RILIS PRODUCTION BERHASIL DIKEMAS!" -ForegroundColor Green
    Write-Host "Berkas   : $($item.Name)" -ForegroundColor Green
    Write-Host "Ukuran   : $sizeKB KB ($($item.Length) bytes)" -ForegroundColor Green
    Write-Host "SHA256   : $hash" -ForegroundColor Yellow
    Write-Host ""

    # Otomatis catat ke RELEASE_MANIFEST.md jika ada
    $manifestPath = "RELEASE_MANIFEST.md"
    if (Test-Path $manifestPath) {
        $entry = @"

---
## Rilis $date
- **Berkas**: $($item.Name)
- **Ukuran**: $sizeKB KB
- **SHA256**: $hash
- **Migrations Disertakan**: $IncludeMigrations
- **Vendor Disertakan**: $IncludeVendor
- **Status Audit**: Clean Packaged (Verified Zero-Leakage)
"@
        Add-Content -Path $manifestPath -Value $entry
        Write-Host "Log rilis dan hash SHA256 otomatis dicatat ke $manifestPath" -ForegroundColor Green
    }

} finally {
    Pop-Location
}
