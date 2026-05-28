# Arcane Frontiers

A family Minecraft modpack for **NeoForge 1.21.1** — magic, technology, exploration, and a colony to call home.

This repository tracks the pack's configuration, quest files, and scripts. Mod JARs are not included; install them via Modrinth or CurseForge as described below.

---

## What's in the Pack

| Pillar | Mods |
|--------|------|
| **Magic** | Ars Nouveau, Ars Creo, Ars Elemental |
| **Technology** | Create, Create: New Age, Steam 'n' Rails, Create: Connected |
| **Colony** | MineColonies |
| **Exploration** | Twilight Forest, Terralith, Alex's Mobs, Alex's Caves, YUNG's mods, Dungeons & Taverns |
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
| **Launcher** | Prism Launcher, MultiMC, or ATLauncher (recommended) |

> **Java 21 download:** https://adoptium.net/temurin/releases/?version=21

---

## Installation

### 1. Create a new instance

In your launcher, create a new instance:
- Minecraft version: **1.21.1**
- Mod loader: **NeoForge** (select the latest 1.21.1 build)
- Allocate at least **6 GB RAM** (8 GB recommended)

### 2. Install mods

Download all mods from Modrinth or CurseForge and place them in the instance's `mods/` folder. Refer to `SERVER_LINKS.md` for the exact mod list and download links.

### 3. Apply pack configuration (this repo)

Clone or download this repository, then copy the tracked folders into your instance directory, **merging** with any existing files — do not replace the whole folder:

```
config/          →  <instance>/config/
defaultconfigs/  →  <instance>/defaultconfigs/
kubejs/          →  <instance>/kubejs/
server/          →  <instance>/  (server only — see below)
```

> **Client players:** copy `config/`, `defaultconfigs/`, and `kubejs/` only.  
> **Server operators:** copy all four folders, then rename/edit `server/server.properties` as needed.

### 4. Launch

Start the instance. On first launch NeoForge will generate additional files. The FTB Quests book will appear in your inventory automatically.

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
