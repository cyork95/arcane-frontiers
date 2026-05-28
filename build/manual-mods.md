# Manual Mod Installs

These mods require manual download and placement in the `mods/` folder.
They are **not returned by the Modrinth App's standard search** or are hosted elsewhere.
Download them and drop the JAR into your instance's `mods/` folder before launching.

---

## Required — Not on Modrinth App

| Mod | Where to Get It | Notes |
|-----|-----------------|-------|
| **Essential** | https://essential.gg/download | Click "Forge/NeoForge" → select 1.21.1 |
| **Ars Elemental** | https://github.com/Alexthw46/Ars-Elemental/releases | Download latest 1.21.1 JAR |
| **MineColonies** | https://www.curseforge.com/minecraft/mc-mods/minecolonies/files | If Modrinth API fails — CurseForge has current 1.21.1 builds |
| **Structurize** | https://www.curseforge.com/minecraft/mc-mods/structurize/files | MineColonies dependency |
| **BlockUI** | https://www.curseforge.com/minecraft/mc-mods/blockui/files | MineColonies dependency |
| **Domum Ornamentum** | https://www.curseforge.com/minecraft/mc-mods/domum-ornamentum/files | MineColonies dependency |

> **Note:** The build script **will attempt** to download MineColonies, Structurize, BlockUI,
> and Domum Ornamentum via the Modrinth API first. Only use the CurseForge links above
> if those slugs appear in the "not found" list after running the script.

---

## If the build script reports a mod as "not found"

Some slugs may be wrong or the mod may not have a NeoForge 1.21.1 build yet.

1. Search for the mod at https://modrinth.com
2. Confirm a **NeoForge** + **1.21.1** version exists on the versions tab
3. Copy the slug from the URL (e.g. `modrinth.com/mod/THIS-PART`)
4. Update the slug in `build/build-mrpack.ps1` and re-run

---

## Updating the NeoForge version

The NeoForge version in `build-mrpack.ps1` (`$NEOFORGE_VER`) controls which loader
version Prism will install. Check https://neoforged.net for the latest stable 1.21.1
build and update the variable if it's out of date.

---

## Full mods folder (reference)

If you need to start fresh, the complete mods folder is at:

```
C:\Users\coyof\AppData\Roaming\ModrinthApp\profiles\Arcane Frontiers\mods\
```

Copy from there as a last resort if the build script misses anything.
