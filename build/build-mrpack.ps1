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
#
# After building, install mods listed in build\manual-mods.md manually.
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
# Slugs taken directly from modrinth.com/mod/<slug>
# Mods not on Modrinth are in build\manual-mods.md
# env: required / optional / unsupported  (client vs server side)
$MODS = @(

    # ── Magic ────────────────────────────────────────────────────
    # NOTE: Ars Elemental is manually installed — see manual-mods.md
    @{ slug="ars-nouveau";                              client="required"; server="required" }
    @{ slug="ars-creo";                                 client="required"; server="required" }
    @{ slug="ars-additions";                            client="required"; server="required" }
    @{ slug="arsdelight";                               client="required"; server="required" }

    # ── Technology ───────────────────────────────────────────────
    @{ slug="create";                                   client="required"; server="required" }
    @{ slug="create-new-age";                           client="required"; server="required" }
    @{ slug="create-steam-n-rails-1.21.1";              client="required"; server="required" }
    @{ slug="create-connected";                         client="required"; server="required" }
    @{ slug="create-central-kitchen";                   client="required"; server="required" }
    @{ slug="create-dragons-plus";                      client="required"; server="required" }
    @{ slug="create-mechanical-botany";                 client="required"; server="required" }
    @{ slug="create-deco";                              client="required"; server="required" }
    @{ slug="create-enchantment-industry";              client="required"; server="required" }
    @{ slug="create-diesel-generators";                 client="required"; server="required" }
    @{ slug="bellsandwhistles";                         client="required"; server="required" }

    # ── Equipment — Silent Gear ───────────────────────────────────
    @{ slug="silent-gear";                              client="required"; server="required" }
    @{ slug="silent-lib";                               client="required"; server="required" }
    # silentgearjei removed — requires "ali" library with no available NeoForge 1.21.1 build

    # ── Colony ───────────────────────────────────────────────────
    # NOTE: MineColonies + Structurize + BlockUI + Domum Ornamentum
    #       may need manual install — see manual-mods.md
    @{ slug="minecolonies";                             client="required"; server="required" }
    @{ slug="structurize";                              client="required"; server="required" }
    @{ slug="domum-ornamentum";                         client="required"; server="required" }
    @{ slug="blockui";                                  client="required"; server="required" }
    @{ slug="multi-piston";                             client="required"; server="required" }
    @{ slug="byzantine-styles-pack-for-minecolonies";   client="required"; server="required" }
    @{ slug="colonyrank";                               client="required"; server="required" }
    @{ slug="minecolonies-jade-crops-addon";            client="required"; server="required" }
    @{ slug="friends-and-foes-forge";                   client="required"; server="required" }
    @{ slug="friends-and-foes-beekeeper-hut-forge";     client="required"; server="required" }

    # ── Storage ───────────────────────────────────────────────────
    @{ slug="sophisticated-core";                       client="required"; server="required" }
    @{ slug="sophisticated-storage";                    client="required"; server="required" }
    @{ slug="sophisticated-storage-create-integration"; client="required"; server="required" }
    @{ slug="sophisticated-backpacks";                  client="required"; server="required" }
    @{ slug="sophisticated-backpacks-create-integration";client="required"; server="required" }

    # ── Water Transit ─────────────────────────────────────────────
    @{ slug="small-ships";                              client="required"; server="required" }

    # ── World & Exploration ───────────────────────────────────────
    @{ slug="terralith";                                client="required"; server="required" }
    @{ slug="nullscape";                                client="required"; server="required" }
    @{ slug="incendium";                                client="required"; server="required" }
    @{ slug="deeperdarker";                             client="required"; server="required" }
    @{ slug="when-dungeons-arise";                      client="required"; server="required" }
    @{ slug="when-dungeons-arise-seven-seas";           client="required"; server="required" }
    @{ slug="dungeons-and-taverns";                     client="required"; server="required" }
    @{ slug="the-bumblezone";                           client="required"; server="required" }
    @{ slug="alexs-mobs";                               client="required"; server="required" }
    @{ slug="alexs-caves";                              client="required"; server="required" }

    # ── YUNG's Structure Suite ────────────────────────────────────
    @{ slug="yungs-api";                                client="required"; server="required" }
    @{ slug="yungs-better-caves";                       client="required"; server="required" }
    @{ slug="yungs-cave-biomes";                        client="required"; server="required" }
    @{ slug="yungs-better-dungeons";                    client="required"; server="required" }
    @{ slug="yungs-better-strongholds";                 client="required"; server="required" }
    @{ slug="yungs-better-mineshafts";                  client="required"; server="required" }
    @{ slug="yungs-better-desert-temples";              client="required"; server="required" }
    @{ slug="yungs-better-jungle-temples";              client="required"; server="required" }
    @{ slug="yungs-better-witch-huts";                  client="required"; server="required" }
    @{ slug="yungs-better-nether-fortresses";           client="required"; server="required" }
    @{ slug="yungs-better-ocean-monuments";             client="required"; server="required" }
    @{ slug="yungs-better-end-island";                  client="required"; server="required" }
    @{ slug="yungs-bridges";                            client="required"; server="required" }
    @{ slug="yungs-extras";                             client="required"; server="required" }
    @{ slug="yungs-menu-tweaks";                        client="required"; server="unsupported" }

    # ── Farming, Food & Home ──────────────────────────────────────
    @{ slug="farmers-delight";                          client="required"; server="required" }
    @{ slug="chefs-delight";                            client="required"; server="required" }
    @{ slug="ends-delight";                             client="required"; server="required" }
    @{ slug="expanded-delight";                         client="required"; server="required" }
    @{ slug="cooking-for-blockheads";                   client="required"; server="required" }
    @{ slug="straw-golem-rebaled-updated";              client="required"; server="required" }

    # ── Building & Decoration ─────────────────────────────────────
    @{ slug="copycats";                                 client="required"; server="required" }
    @{ slug="supplementaries";                          client="required"; server="required" }
    @{ slug="supplementaries-squared";                  client="required"; server="required" }
    @{ slug="chipped";                                  client="required"; server="required" }
    @{ slug="athena-ctm";                               client="required"; server="required" }
    @{ slug="prickle";                                  client="required"; server="required" }

    # ── Macaw's Suite ─────────────────────────────────────────────
    @{ slug="macaws-furniture";                         client="required"; server="required" }
    @{ slug="macaws-bridges";                           client="required"; server="required" }
    @{ slug="macaws-doors";                             client="required"; server="required" }
    @{ slug="macaws-fences-and-walls";                  client="required"; server="required" }
    @{ slug="macaws-holidays";                          client="required"; server="required" }
    @{ slug="macaws-lights-and-lamps";                  client="required"; server="required" }
    @{ slug="macaws-paintings";                         client="required"; server="required" }
    @{ slug="macaws-paths-and-pavings";                 client="required"; server="required" }
    @{ slug="macaws-roofs";                             client="required"; server="required" }
    @{ slug="macaws-stairs";                            client="required"; server="required" }
    @{ slug="macaws-trapdoors";                         client="required"; server="required" }
    @{ slug="macaws-windows";                           client="required"; server="required" }

    # ── Enigmatic Legacy ──────────────────────────────────────────
    @{ slug="enigmaticlegacy+";                         client="required"; server="required" }

    # ── Utilities & Navigation ────────────────────────────────────
    @{ slug="jei";                                      client="required"; server="optional" }
    @{ slug="jade";                                     client="required"; server="optional" }
    @{ slug="jade-addons-forge";                        client="required"; server="optional" }
    @{ slug="xaeros-minimap";                           client="required"; server="optional" }
    @{ slug="xaeros-world-map";                         client="required"; server="optional" }
    @{ slug="xaeros-minimap-world-map-waystones-compatibility-forge"; client="required"; server="optional" }
    @{ slug="compass-to-map-xaeros";                    client="required"; server="optional" }
    @{ slug="waystones";                                client="required"; server="required" }
    @{ slug="natures-compass";                          client="required"; server="optional" }
    @{ slug="explorers-compass";                        client="required"; server="optional" }
    @{ slug="travelers-compass";                        client="required"; server="optional" }
    @{ slug="appleskin";                                client="required"; server="optional" }
    @{ slug="comforts";                                 client="required"; server="required" }
    @{ slug="lootr";                                    client="required"; server="required" }
    @{ slug="carry-on";                                 client="required"; server="required" }
    @{ slug="chat-heads";                               client="required"; server="optional" }
    @{ slug="inventory-profiles-next";                  client="required"; server="optional" }
    @{ slug="enchantment-descriptions";                 client="required"; server="optional" }

    # ── Performance ───────────────────────────────────────────────
    @{ slug="sodium";                                   client="required"; server="unsupported" }
    @{ slug="immediatelyfast";                          client="required"; server="unsupported" }
    @{ slug="modernfix";                                client="required"; server="required" }
    @{ slug="ferrite-core";                             client="required"; server="required" }
    @{ slug="entityculling";                            client="required"; server="unsupported" }
    @{ slug="clumps";                                   client="required"; server="required" }
    @{ slug="sound-physics-remastered";                 client="required"; server="unsupported" }

    # ── FTB Suite ─────────────────────────────────────────────────
    @{ slug="ftb-quests";                               client="required"; server="required" }
    @{ slug="ftb-library";                              client="required"; server="required" }
    @{ slug="ftb-teams";                                client="required"; server="required" }

    # ── Core Libraries ────────────────────────────────────────────
    @{ slug="balm";                                     client="required"; server="required" }
    @{ slug="geckolib";                                 client="required"; server="required" }
    @{ slug="moonlight";                                client="required"; server="required" }
    @{ slug="patchouli";                                client="required"; server="required" }
    @{ slug="curios";                                   client="required"; server="required" }
    @{ slug="kotlin-for-forge";                         client="required"; server="required" }
    @{ slug="citadel";                                  client="required"; server="required" }
    @{ slug="botarium";                                 client="required"; server="required" }
    @{ slug="resourceful-lib";                          client="required"; server="required" }
    @{ slug="bookshelf-lib";                            client="required"; server="required" }
    @{ slug="caelus";                                   client="required"; server="required" }
    @{ slug="libipn";                                   client="required"; server="optional" }
    @{ slug="architectury-api";                         client="required"; server="required" }
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
