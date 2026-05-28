# ================================================================
# build-mrpack.ps1 — Arcane Frontiers Pack Builder
#
# Queries the Modrinth API for every mod, finds the correct
# NeoForge 1.21.1 version, and packages everything into a
# .mrpack file importable by Prism Launcher, ATLauncher, or MultiMC.
#
# Usage:
#   cd <repo root>
#   .\build\build-mrpack.ps1
#
# Output:
#   arcane-frontiers-v<VERSION>.mrpack  (in repo root)
#
# Prerequisites:
#   PowerShell 5.1+ (built into Windows)
#   Internet connection (Modrinth API)
# ================================================================

param(
    [string]$Version = "1.0.0"
)

$PACK_NAME      = "Arcane Frontiers"
$MC_VERSION     = "1.21.1"
$LOADER         = "neoforge"
# Check https://neoforged.net for the latest 1.21.1 build and update here
$NEOFORGE_VER   = "21.1.172"
$OUTPUT         = "arcane-frontiers-v$Version.mrpack"
$TMP_DIR        = ".\build\_tmp_mrpack"

# ── Mod list ─────────────────────────────────────────────────────
# Modrinth slugs only. Mods not on Modrinth are listed in
# build\manual-mods.md — install those by hand after importing.
# env: required/optional/unsupported (client vs server)
$MODS = @(

    # ── Magic ────────────────────────────────────────────────────
    @{ slug="ars-nouveau";             client="required"; server="required" }
    @{ slug="ars-creo";                client="required"; server="required" }
    @{ slug="ars-elemental";           client="required"; server="required" }
    @{ slug="ars-additions";           client="required"; server="required" }
    @{ slug="enchantment-descriptions";client="required"; server="optional" }

    # ── Technology ───────────────────────────────────────────────
    @{ slug="create";                  client="required"; server="required" }
    @{ slug="create-new-age";          client="required"; server="required" }
    @{ slug="create-steam-and-rails";  client="required"; server="required" }
    @{ slug="create-connected";        client="required"; server="required" }
    @{ slug="create-central-kitchen";  client="required"; server="required" }
    @{ slug="bells-and-whistles";      client="required"; server="required" }
    @{ slug="little-logistics";        client="required"; server="required" }

    # ── Colony & Storage ─────────────────────────────────────────
    @{ slug="minecolonies";            client="required"; server="required" }
    @{ slug="stylecolonies";           client="required"; server="required" }
    @{ slug="sophisticated-storage";   client="required"; server="required" }
    @{ slug="sophisticated-backpacks"; client="required"; server="required" }

    # ── Equipment & Progression ──────────────────────────────────
    @{ slug="tetra";                   client="required"; server="required" }
    @{ slug="tetra-pak";               client="required"; server="required" }
    @{ slug="enigmatic-legacy";        client="required"; server="required" }

    # ── World & Exploration ──────────────────────────────────────
    @{ slug="terralith";               client="required"; server="required" }
    @{ slug="nullscape";               client="required"; server="required" }
    @{ slug="incendium";               client="required"; server="required" }
    @{ slug="deeperdarker";            client="required"; server="required" }
    @{ slug="twilightforest";          client="required"; server="required" }
    @{ slug="alexs-mobs";              client="required"; server="required" }
    @{ slug="alexs-caves";             client="required"; server="required" }
    @{ slug="yungs-better-dungeons";   client="required"; server="required" }
    @{ slug="yungs-better-mineshafts"; client="required"; server="required" }
    @{ slug="yungs-better-strongholds";client="required"; server="required" }
    @{ slug="dungeons-and-taverns";    client="required"; server="required" }

    # ── Farming, Food & Home ─────────────────────────────────────
    @{ slug="farmers-delight";         client="required"; server="required" }
    @{ slug="cooking-for-blockheads";  client="required"; server="required" }
    @{ slug="straw-golem-rebaledported";client="required";server="required" }
    @{ slug="copycats";                client="required"; server="required" }
    @{ slug="supplementaries";         client="required"; server="required" }
    @{ slug="decorative-blocks";       client="required"; server="required" }
    @{ slug="framedblocks";            client="required"; server="required" }
    @{ slug="chipped";                 client="required"; server="required" }
    @{ slug="macaws-furniture";        client="required"; server="required" }

    # ── Utilities & UI ───────────────────────────────────────────
    @{ slug="jei";                     client="required"; server="optional" }
    @{ slug="jade";                    client="required"; server="optional" }
    @{ slug="xaeros-minimap";          client="required"; server="optional" }
    @{ slug="xaeros-world-map";        client="required"; server="optional" }
    @{ slug="waystones";               client="required"; server="required" }
    @{ slug="natures-compass";         client="required"; server="optional" }
    @{ slug="comforts";                client="required"; server="required" }
    @{ slug="lootr";                   client="required"; server="required" }

    # ── FTB Suite ────────────────────────────────────────────────
    @{ slug="ftb-quests";              client="required"; server="required" }
    @{ slug="ftb-library";             client="required"; server="required" }
    @{ slug="ftb-teams";               client="required"; server="required" }

    # ── Core Libraries ───────────────────────────────────────────
    @{ slug="balm";                    client="required"; server="required" }
    @{ slug="geckolib";                client="required"; server="required" }
    @{ slug="moonlight";               client="required"; server="required" }
    @{ slug="patchouli";               client="required"; server="required" }
    @{ slug="curios";                  client="required"; server="required" }
    @{ slug="structurize";             client="required"; server="required" }
    @{ slug="domum-ornamentum";        client="required"; server="required" }
    @{ slug="multi-piston";            client="required"; server="required" }
    @{ slug="yungs-api";               client="required"; server="required" }
    @{ slug="architectury-api";        client="required"; server="required" }
)

# ── Main ─────────────────────────────────────────────────────────

Write-Host ""
Write-Host "  Arcane Frontiers — mrpack builder" -ForegroundColor Magenta
Write-Host "  Pack: $PACK_NAME v$Version  |  MC: $MC_VERSION  |  $LOADER" -ForegroundColor Gray
Write-Host ""

$files  = [System.Collections.ArrayList]@()
$failed = [System.Collections.ArrayList]@()

Write-Host "Resolving $($MODS.Count) mods from Modrinth..." -ForegroundColor Cyan

foreach ($mod in $MODS) {
    $slug = $mod.slug
    Write-Host "  $slug" -NoNewline

    try {
        $encodedVersions = [Uri]::EscapeDataString("[`"$MC_VERSION`"]")
        $encodedLoader   = [Uri]::EscapeDataString("[`"$LOADER`"]")
        $apiUrl = "https://api.modrinth.com/v2/project/$slug/version?game_versions=$encodedVersions&loaders=$encodedLoader"

        $versions = Invoke-RestMethod -Uri $apiUrl -Method Get -ErrorAction Stop

        if (-not $versions -or $versions.Count -eq 0) {
            Write-Host " — not found (NeoForge 1.21.1)" -ForegroundColor Yellow
            [void]$failed.Add($slug)
            continue
        }

        $latest = $versions[0]
        $primaryFile = $latest.files | Where-Object { $_.primary -eq $true } | Select-Object -First 1
        if (-not $primaryFile) { $primaryFile = $latest.files | Select-Object -First 1 }

        [void]$files.Add(@{
            path      = "mods/$($primaryFile.filename)"
            hashes    = @{
                sha1   = $primaryFile.hashes.sha1
                sha512 = $primaryFile.hashes.sha512
            }
            env       = @{
                client = $mod.client
                server = $mod.server
            }
            downloads = @($primaryFile.url)
            fileSize  = [int]$primaryFile.size
        })

        Write-Host " — $($latest.version_number)" -ForegroundColor Green
    }
    catch {
        Write-Host " — ERROR: $($_.Exception.Message)" -ForegroundColor Red
        [void]$failed.Add($slug)
    }

    Start-Sleep -Milliseconds 150   # stay polite to the API
}

Write-Host ""
Write-Host "Building package..." -ForegroundColor Cyan

# Clean temp dir
if (Test-Path $TMP_DIR) { Remove-Item $TMP_DIR -Recurse -Force }
New-Item -ItemType Directory -Path $TMP_DIR | Out-Null
New-Item -ItemType Directory -Path "$TMP_DIR\overrides" | Out-Null

# Write modrinth.index.json
$index = [ordered]@{
    formatVersion = 1
    game          = "minecraft"
    versionId     = $Version
    name          = $PACK_NAME
    summary       = "Magic, technology, and exploration for the whole family."
    files         = $files.ToArray()
    dependencies  = [ordered]@{
        minecraft = $MC_VERSION
        neoforge  = $NEOFORGE_VER
    }
}

$index | ConvertTo-Json -Depth 10 | Out-File -FilePath "$TMP_DIR\modrinth.index.json" -Encoding utf8NoBOM

# Copy config overrides into the pack
Copy-Item -Path ".\config"         -Destination "$TMP_DIR\overrides\config"         -Recurse -Force
Copy-Item -Path ".\defaultconfigs" -Destination "$TMP_DIR\overrides\defaultconfigs" -Recurse -Force
Copy-Item -Path ".\kubejs"         -Destination "$TMP_DIR\overrides\kubejs"         -Recurse -Force

# Zip into .mrpack
if (Test-Path ".\$OUTPUT") { Remove-Item ".\$OUTPUT" -Force }
Compress-Archive -Path "$TMP_DIR\*" -DestinationPath ".\$OUTPUT"
Remove-Item $TMP_DIR -Recurse -Force

# ── Summary ──────────────────────────────────────────────────────
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Built: $OUTPUT" -ForegroundColor Green
Write-Host "  Mods resolved: $($files.Count) / $($MODS.Count)" -ForegroundColor Green

if ($failed.Count -gt 0) {
    Write-Host ""
    Write-Host "  $($failed.Count) mod(s) not found on Modrinth (install manually):" -ForegroundColor Yellow
    foreach ($f in $failed) {
        Write-Host "    - $f" -ForegroundColor Yellow
    }
    Write-Host "  See build\manual-mods.md for download links." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "  Import: Prism Launcher -> Add Instance -> Import -> select $OUTPUT" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
