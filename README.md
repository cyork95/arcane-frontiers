<p align="center">
  <img src="assets/arcane-frontiers-border-image.png" alt="Arcane Frontiers banner" width="100%"/>
</p>

# Arcane Frontiers

A family Minecraft modpack for **NeoForge 1.21.1** — magic, technology, exploration, and a colony to call home.

This repository tracks the pack's configuration, quest files, and scripts. Mod JARs are not included; install them via Modrinth or CurseForge as described below.

---

## What's in the Pack

| Pillar | Mods |
|--------|------|
| **Magic** | Ars Nouveau, Ars Creo, Ars Elemental |
| **Technology** | Create, Create: New Age, Create: Diesel Generators, Create: Mechanical Botany, Create: Deco, Create: Enchantment Industry, Steam 'n' Rails |
| **Colony** | MineColonies |
| **Exploration** | Terralith, Alex's Mobs, Alex's Caves, YUNG's mods, When Dungeons Arise, Dungeons & Taverns |
| **Food & Home** | Farmer's Delight, Cooking for Blockheads, Supplementaries, Decorative Blocks, CopyCats+ |
| **Quests** | FTB Quests (9 chapters + bonus) |

Full mod list and wiki links: see [SERVER_LINKS.md](SERVER_LINKS.md).  
Design document and progression guide: see [ARCANE_FRONTIERS.md](ARCANE_FRONTIERS.md).

---

## Prerequisites

| Requirement | Version |
|-------------|---------|
| **Java** | 21 (Temurin / Eclipse recommended) |
| **Minecraft** | 1.21.1 |
| **Mod loader** | NeoForge 1.21.1 (latest stable) |
| **Launcher** | Modrinth App (recommended), Prism Launcher, or ATLauncher |

> **Java 21 download:** https://adoptium.net/temurin/releases/?version=21

---

## Installation

### Option A — Modrinth App (easiest)

1. Download `Arcane Frontiers 1.0.0.mrpack` from the [latest release](https://github.com/cyork95/arcane-frontiers/releases/latest)
2. Open Modrinth App → click **+** → **Import** → select the `.mrpack` file
3. Modrinth downloads all mods automatically
4. Allocate at least **6 GB RAM** (8 GB recommended) in the profile settings
5. Launch — the FTB Quests book appears in your inventory on first world load

### Option B — Manual install

1. Create a new instance (Minecraft 1.21.1, NeoForge latest stable, 6–8 GB RAM)
2. Download all mods from Modrinth/CurseForge — see `SERVER_LINKS.md` for the full list
3. Clone or download this repository, then copy these folders into your instance directory:

```
config/          →  <instance>/config/
defaultconfigs/  →  <instance>/defaultconfigs/
kubejs/          →  <instance>/kubejs/
```

4. Launch — NeoForge will generate additional files on first start

---

## Connecting to the Family Server

1. Open Minecraft → **Multiplayer → Add Server**
2. Enter the server address (ask the server host)
3. Join — your quest progress syncs to the server automatically

If you see "Connection refused", check that the server is running and that your Minecraft version matches exactly.

---

## Updating the Pack

When a new version is pushed to this repository:

```bash
# Pull the latest changes
git pull

# Copy updated folders to your instance (same paths as installation)
# config/, defaultconfigs/, kubejs/
```

Then **restart your Minecraft instance** — KubeJS and FTB Quests pick up changes on launch.

> If a quest chapter was updated, FTB Quests will reflect the new quests automatically. Quest progress already earned is not lost.

---

## Server Operators

### Starting the server

```bat
# Windows
server\start.bat

# Adjust memory in server\user_jvm_args.txt (-Xmx and -Xms)
```

### First-time setup

1. Run `start.bat` once — it will exit and ask you to accept the EULA
2. Edit `eula.txt`: change `eula=false` to `eula=true`
3. Run `start.bat` again — the server will finish generating

### Op commands used by the pack

| Command | Purpose |
|---------|---------|
| `/ftbquests` | Reload quests after a config update |
| `/reload` | Reload KubeJS scripts |
| `/minecolonies` | Colony admin commands |

---

## Repository Structure

```
OurMinecraftModpack/
├── config/                  mod configuration files
├── defaultconfigs/
│   └── ftbquests/quests/    FTB Quests chapters (9 chapters + bonus)
├── kubejs/
│   ├── client_scripts/      tooltips, JEI hints
│   ├── server_scripts/      custom recipes, item caps
│   └── startup_scripts/     early init checks
├── server/
│   ├── server.properties
│   ├── start.bat
│   └── user_jvm_args.txt
├── ARCANE_FRONTIERS.md      master design document
├── SERVER_LINKS.md          mod wiki reference
└── README.md                this file
```

---

## Version History

| Tag | Notes |
|-----|-------|
| `v1.0.0` | Initial release — all 9 quest chapters complete |

---

*Built with love for the family. Questions? Check `ARCANE_FRONTIERS.md` first — it probably has the answer.*
