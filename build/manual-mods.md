# Manual Mod Installs

These mods are **not on Modrinth** and will not be included by `build-mrpack.ps1`.
Download them separately and drop the JAR into your instance's `mods/` folder.

| Mod | Download |
|-----|----------|
| **Essential** | https://essential.gg/download — click "Forge/NeoForge", pick 1.21.1 |

---

## If the build script reports a mod as "not found"

Some slugs may be wrong or the mod may not have a NeoForge 1.21.1 build yet.

1. Search for the mod at https://modrinth.com
2. Check that a **NeoForge** + **1.21.1** version exists
3. Copy the slug from the URL (e.g. `modrinth.com/mod/THIS-PART`)
4. Update the slug in `build/build-mrpack.ps1` and re-run

---

## Updating the NeoForge version

The NeoForge version in `build-mrpack.ps1` (`$NEOFORGE_VER`) controls which
loader version Prism will install. Check https://neoforged.net for the latest
stable 1.21.1 build and update the variable if needed.
