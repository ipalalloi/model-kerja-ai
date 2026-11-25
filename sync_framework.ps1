# ==============================================================================
# PiGO Framework Auto-Sync & Release Tool (v14.1+)
# Menjamin seluruh template lokal, proyek aktif, Global Rules/Skills, repositori GitHub,
# deskripsi About, dan hash SHA256 selalu sinkron 100%.
# ==============================================================================

param(
    [string]$Version = "v14.1",
    [string]$ReleaseTitle = "Gemini 4 Carbon Orchestrator, UU PDP & PRF 11-Review Engine"
)

$ErrorActionPreference = "Stop"
Write-Host ">>> Memulai Sinkronisasi PiGO Framework $Version ($ReleaseTitle)..." -ForegroundColor Cyan

$baseDir = "D:\AI-Work-Teams\antigravity\model-kerja-ai"
$templateDir = "D:\Data_web\spmi_pemetaan_app\_project_template"
$globalRules = "C:\Users\IPalalloi\.gemini\config\rules"
$globalSkills = "C:\Users\IPalalloi\.gemini\config\skills"
$zipPath = "D:\AI-Work-Teams\antigravity\model_kerja_${Version}_carbon_orchestrator_prf.zip"

# 1. Sinkronkan Skills & Template Internal
Copy-Item "$templateDir\AGENTS.md" -Destination "$templateDir\.agents\AGENTS.md" -Force
foreach ($sk in @("pico", "pigo-shortcuts")) {
    if (Test-Path "$templateDir\.agents\skills\$sk") { Remove-Item "$templateDir\.agents\skills\$sk" -Recurse -Force }
    Copy-Item "$globalSkills\$sk" -Destination "$templateDir\.agents\skills\$sk" -Recurse -Force
}

# 2. Kompresi Master Template
if (Test-Path $zipPath) { Remove-Item $zipPath -Force }
Compress-Archive -Path "$templateDir\*" -DestinationPath $zipPath -Force
$sha256 = (Get-FileHash $zipPath -Algorithm SHA256).Hash
Write-Host ">>> SHA256 Hash: $sha256" -ForegroundColor Green

# 3. Sinkronisasi ke Proyek Lokal Aktif
$projects = @(
    "D:\Data_web\spmi_pemetaan_app",
    "D:\Data_web\SIMPEL",
    "D:\Data_web\simulasi_al",
    "D:\Data_web\PiGO Nexus"
)
foreach ($p in $projects) {
    if (Test-Path $p) {
        $agentsDir = Join-Path $p ".agents"
        if (-not (Test-Path $agentsDir)) { New-Item -ItemType Directory -Path $agentsDir -Force | Out-Null }
        Copy-Item "$templateDir\AGENTS.md" -Destination (Join-Path $p "AGENTS.md") -Force
        Copy-Item "$templateDir\AGENTS.md" -Destination (Join-Path $agentsDir "AGENTS.md") -Force
        Copy-Item "$templateDir\.cursorrules" -Destination (Join-Path $p ".cursorrules") -Force
        Copy-Item "$templateDir\nginx.conf.example" -Destination (Join-Path $p "nginx.conf.example") -Force
        Write-Host "    [OK] Proyek tersinkronisasi: $p" -ForegroundColor Gray
    }
}

# 4. Sinkronkan Repositori Git model-kerja-ai
Push-Location $baseDir
try {
    Copy-Item "$templateDir\AGENTS.md" -Destination "$baseDir\AGENTS.md" -Force
    Copy-Item "$templateDir\.cursorrules" -Destination "$baseDir\.cursorrules" -Force
    Copy-Item "$templateDir\nginx.conf.example" -Destination "$baseDir\nginx.conf.example" -Force
    Copy-Item "$globalRules\global-compliance-checker.md" -Destination "$baseDir\rules\pigo-global.md" -Force
    Copy-Item "$globalRules\pico.md" -Destination "$baseDir\rules\pico.md" -Force
    foreach ($sk in @("pico", "pigo-shortcuts")) {
        if (Test-Path "$baseDir\skills\$sk") { Remove-Item "$baseDir\skills\$sk" -Recurse -Force }
        Copy-Item "$globalSkills\$sk" -Destination "$baseDir\skills\$sk" -Recurse -Force
    }

    $readme = Get-Content "$baseDir\README.md" -Raw -Encoding UTF8
    $readme = $readme -replace '\{\{V14_1_SHA256\}\}', $sha256
    [System.IO.File]::WriteAllText("$baseDir\README.md", $readme, (New-Object System.Text.UTF8Encoding($false)))

    git add -A
    git commit -m "feat($Version): release PiGO Framework $Version — $ReleaseTitle (SHA256: $sha256)"
    git push origin main

    $desc = "PiGO Framework $Version Enterprise (Eff: 25 Nov 2026) — Gemini 4 Carbon Multi-Agent Orchestrator, Apache/Nginx & UU PDP Security, PICO v4.2 & PRF 11-Review Academic Engine"
    gh repo edit ipalalloi/model-kerja-ai --description "$desc" --add-topic "literature-review" --add-topic "multi-agent-orchestration"
} finally {
    Pop-Location
}

Write-Host ">>> Selesai! Seluruh ekosistem PiGO Framework $Version telah sinkron 100%!" -ForegroundColor Green
