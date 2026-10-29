# ==============================================================================
# PiGO Framework Auto-Sync & Release Tool
# Menjamin seluruh template lokal, repositori GitHub, deskripsi About, dan hash SHA256
# selalu sinkron 100% tanpa risiko ketinggalan versi manual.
# ==============================================================================

param(
    [string]$Version = "v13.3",
    [string]$ReleaseTitle = "Enterprise Production & Multi-Tier Collaboration"
)

Write-Host ">>> Memulai Sinkronisasi PiGO Framework $Version ($ReleaseTitle)..." -ForegroundColor Cyan

$baseDir = "D:\AI-Work-Teams\antigravity\model-kerja-ai"
$templateDir = "D:\Data_web\spmi_pemetaan_app\_project_template"
$zipPath = "D:\AI-Work-Teams\antigravity\model_kerja_${Version}_release.zip"

# 1. Kompresi Master Template
Write-Host ">>> Membuat arsip ZIP rilis master..." -ForegroundColor Yellow
Compress-Archive -Path "$templateDir\*" -DestinationPath $zipPath -Force
$sha256 = (Get-FileHash $zipPath -Algorithm SHA256).Hash
Write-Host ">>> SHA256 Hash: $sha256" -ForegroundColor Green

# 2. Sinkronisasi ke Proyek Lokal
$projects = @("D:\Data_web\spmi_pemetaan_app", "D:\Data_web\SIMPEL", "D:\Data_web\simulasi_al")
foreach ($p in $projects) {
    if (Test-Path $p) {
        $agentsDir = Join-Path $p ".agents"
        $githubDir = Join-Path $p ".github"
        $issueDir = Join-Path $githubDir "ISSUE_TEMPLATE"
        
        if (-not (Test-Path $agentsDir)) { New-Item -ItemType Directory -Path $agentsDir -Force | Out-Null }
        if (-not (Test-Path $issueDir)) { New-Item -ItemType Directory -Path $issueDir -Force | Out-Null }
        
        Copy-Item "$templateDir\.agents\AGENTS.md" -Destination (Join-Path $agentsDir "AGENTS.md") -Force
        Copy-Item "$templateDir\COLLABORATION_GUIDE.md" -Destination (Join-Path $p "COLLABORATION_GUIDE.md") -Force
        Copy-Item "$templateDir\.github\PULL_REQUEST_TEMPLATE.md" -Destination (Join-Path $githubDir "PULL_REQUEST_TEMPLATE.md") -Force
        Copy-Item "$templateDir\.github\ISSUE_TEMPLATE\task-template.md" -Destination (Join-Path $issueDir "task-template.md") -Force
        Write-Host "    [OK] Proyek tersinkronisasi: $p" -ForegroundColor Gray
    }
}

# 3. Sinkronkan Global Rule Enforcer
$globalRule = "C:\Users\IPalalloi\.gemini\config\rules\global-compliance-checker.md"
Copy-Item "$templateDir\.agents\AGENTS.md" -Destination $globalRule -Force
Write-Host "    [OK] Global Enforcer tersinkronisasi: $globalRule" -ForegroundColor Gray

# 4. Sinkronkan Repositori Git & Commit
cd $baseDir
Copy-Item "$templateDir\.agents\AGENTS.md" -Destination "$baseDir\AGENTS.md" -Force
Copy-Item "$templateDir\COLLABORATION_GUIDE.md" -Destination "$baseDir\COLLABORATION_GUIDE.md" -Force
Copy-Item "$templateDir\.github\PULL_REQUEST_TEMPLATE.md" -Destination "$baseDir\.github\PULL_REQUEST_TEMPLATE.md" -Force
Copy-Item "$templateDir\.github\ISSUE_TEMPLATE\task-template.md" -Destination "$baseDir\.github\ISSUE_TEMPLATE\task-template.md" -Force

git add -A
git commit -m "chore(sync): automated sync for PiGO Framework $Version ($ReleaseTitle) - SHA256: $sha256"
git push origin main

# 5. Update GitHub Metadata (About & Topics)
$desc = "PiGO Framework $Version Enterprise — Multi-Tier AI Agent Governance, Production Security Hardening & Collaborative Team Engineering Ecosystem (Lead, Supervisor, Contributor)"
gh repo edit ipalalloi/model-kerja-ai --description "$desc" --add-topic "ai-agents" --add-topic "ai-governance" --add-topic "software-engineering" --add-topic "team-collaboration" --add-topic "antigravity" --add-topic "gemini" --add-topic "claude" --add-topic "pigo-framework"

Write-Host ">>> Selesai! Seluruh ekosistem PiGO Framework $Version telah sinkron 100%!" -ForegroundColor Green
