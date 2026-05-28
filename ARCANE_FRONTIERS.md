# ✦ Arcane Frontiers ✦
### A Family-Friendly Magic × Technology × Exploration Modpack
**Minecraft 1.21.1 · NeoForge · ~78 Mods · Medium Difficulty**

> *"Where ancient spells meet clockwork gears, and every horizon hides a new wonder."*

---

## Table of Contents

1. [Overview](#1-overview)
2. [Mod List](#2-mod-list)
3. [Installation Guide](#3-installation-guide)
4. [Setup & Configuration](#4-setup--configuration)
5. [Quest System](#5-quest-system) — ~200 quests across 8 chapters, covers all 65 mods
6. [Multiplayer Setup](#6-multiplayer-setup)
7. [Progression Guide](#7-progression-guide)
8. [Integration & Balance Notes](#8-integration--balance-notes)
9. [Troubleshooting](#9-troubleshooting)
10. [Expanding the Pack](#10-expanding-the-pack)

---

## 1. Overview

### What is Arcane Frontiers?

**Arcane Frontiers** is a handcrafted family modpack built around three pillars that naturally feed into each other:

| Pillar | Mod | What it adds |
|--------|-----|--------------|
| 🔮 **Magic** | Ars Nouveau | Custom spells, rituals, magical creatures, and arcane automation |
| ⚙️ **Technology** | Create | Mechanical contraptions, gears, trains, and visual engineering |
| 🌍 **Exploration** | Terralith + Alex's series | 95+ biomes, 85+ creatures, deep caves, richer dungeons |
| 🏰 **Colony** *(optional)* | MineColonies | Build one shared family settlement — AI citizens, professions, guards, and a full town powered by your Create factory |

These four systems are designed to **talk to each other** — you'll mine magical crystals underground (Exploration), use them to power spell turrets (Magic), mount those turrets on a moving Create contraption (Technology), haul it all on a train back to base, and have your colony guards — armed with Ars Nouveau enchanted weapons — defend the warehouse where it all arrives. The Colony pillar is **fully optional**: family members who love city-building build and manage the shared town while others focus on spells and machinery. Everyone contributes how they want; the colony benefits from all of it.

### Goals & Philosophy

- **One mod for one thing.** No duplicate systems. If we have Ars Nouveau for magic, we don't add Botania. If we have Create for tech, we don't add Mekanism. This keeps the pack clean, teachable, and conflict-free.
- **Fun first, grind never.** Early game is forgiving and exploratory. Mid-game rewards clever thinking. Late-game is exciting — but never a wall.
- **Family-ready.** No permadeath. No punishing hunger death loops. The quest system guides players without hand-holding. Younger players can focus on exploration and building; older players can dive deep into magic and automation.
- **Performance matters.** Six dedicated performance mods ensure the pack runs well on family PCs that might not be cutting-edge gaming machines.

### Target Audience

| Player type | What they'll love |
|-------------|-------------------|
| Kids (8–12) | Alex's creatures, building with Create's visual contraptions, exploring biomes |
| Teens | Ars Nouveau spell crafting, Create automation chains, dungeon raiding |
| Adults | Late-game systems integration, quest completion, server management |
| Together | Collaborative base building, boss fights, railroad networks |

### Performance Expectations

- **Minimum RAM (client):** 6 GB allocated
- **Recommended RAM (client):** 8 GB allocated
- **Server RAM:** 4–6 GB for 2–4 players, 6–8 GB for 5–8 players
- With all six performance mods active, most mid-range PCs (2018+) should achieve 60+ FPS on default render distance.

### Pack Stats

- **Minecraft Version:** 1.21.1
- **Loader:** NeoForge (latest stable)
- **Mod Count:** 66 content mods + 11 required libraries
- **Dimensions:** Overworld, Nether, End (all enhanced)
- **Difficulty:** Medium (Normal mode recommended; Hard is viable for experienced players)

---

## 2. Mod List

> All mods target **Minecraft 1.21.1 + NeoForge** unless noted.
> Click any Modrinth link to download or check the latest compatible version.
> ⚠️ = Unofficial port (actively maintained but verify before updating)
> 📦 = Required library (auto-installed via Modrinth App)

---

### 🚀 Performance (6 mods)

These mods are invisible to players but make everything smoother. Install all six — they stack well and have no conflicts.

| # | Mod | Modrinth Link | What it does |
|---|-----|---------------|--------------|
| 1 | **Sodium** | [modrinth.com/mod/sodium](https://modrinth.com/mod/sodium) | Rewrites GPU rendering — the single biggest FPS booster. Officially multi-loader (NeoForge + Fabric) since v0.6.0. |
| 2 | **ImmediatelyFast** | [modrinth.com/mod/immediatelyfast](https://modrinth.com/mod/immediatelyfast) | Batches immediate-mode rendering and GUI calls — big gains in HUDs and inventories. |
| 3 | **FerriteCore** | [modrinth.com/mod/ferrite-core](https://modrinth.com/mod/ferrite-core) | Optimizes block state memory storage. Cuts RAM by 20–30% in large packs. Mandatory for 8 GB systems. |
| 4 | **Entity Culling** | [modrinth.com/mod/entityculling](https://modrinth.com/mod/entityculling) | Async path-tracing skips rendering mobs hidden behind walls. Huge gain near mob farms or villages. |
| 5 | **ModernFix** | [modrinth.com/mod/modernfix](https://modrinth.com/mod/modernfix) | Fixes dozens of long-standing performance issues — faster world load, memory leak fixes. |
| 6 | **Clumps** | [modrinth.com/mod/clumps](https://modrinth.com/mod/clumps) | Groups XP orbs into one entity. Massive TPS improvement near mob grinders. |

---

### 🗺️ UI & Quality of Life (10 mods)

Every player should have these from day one. They reduce friction and help the family stay oriented across Terralith's vast landscapes.

| # | Mod | Modrinth Link | What it does |
|---|-----|---------------|--------------|
| 7 | **Just Enough Items (JEI)** | [modrinth.com/mod/jei](https://modrinth.com/mod/jei) | Shows every recipe and crafting path in-game. Press `R` on any item to see how to make it; `U` to see what uses it. |
| 8 | **Jade** | [modrinth.com/mod/jade](https://modrinth.com/mod/jade) | Floating tooltip shows the block or entity you're looking at, plus mod-specific info (machine progress, animal hunger, etc.). |
| 9 | **Xaero's Minimap** | [modrinth.com/mod/xaeros-minimap](https://modrinth.com/mod/xaeros-minimap) | Corner minimap with waypoints, mob dots, and cave mode. Set a waypoint with `B`. |
| 10 | **Xaero's World Map** | [modrinth.com/mod/xaeros-world-map](https://modrinth.com/mod/xaeros-world-map) | Full-screen world map (`M`). Share waypoints between family members on a server. |
| 11 | **Waystones** | [modrinth.com/mod/waystones](https://modrinth.com/mod/waystones) | Craftable warp stones let players fast-travel between named waystone blocks. Essential for families spread across Terralith biomes. |
| 12 | **Nature's Compass** | [modrinth.com/mod/natures-compass](https://modrinth.com/mod/natures-compass) | Craftable compass that lets you search for any biome by name and points you toward it. Invaluable with Terralith's 95+ biomes — find that Moonlight Grove or Scarlet Mountains without wandering for hours. Very lightweight. |
| 13 | **Chat Heads** | [modrinth.com/mod/chat-heads](https://modrinth.com/mod/chat-heads) | Shows each player's Minecraft skin face next to their chat messages. Small but makes multiplayer feel personal. |
| 14 | **Patchouli** | [modrinth.com/mod/patchouli](https://modrinth.com/mod/patchouli) | Powers in-game guidebooks. Ars Nouveau uses it for the Worn Notebook. Required dependency — also useful for pack-maker custom guides. |
| 57 | **Inventory Profiles Next** | [modrinth.com/mod/inventory-profiles-next](https://modrinth.com/mod/inventory-profiles-next) | One-click inventory sort, auto-refill from backpack when a hotbar item runs out, and a lock-slot system to pin important items in place. Client-side only. Requires libIPN — see library list. ⚠️ Requires Kotlin for Forge as a dependency. |
| 58 | **Carry On** | [modrinth.com/mod/carry-on](https://modrinth.com/mod/carry-on) | Lets players pick up any tile entity — chests, machines, Sophisticated Storage units, Create vaults — and carry it in their hands without losing its contents. No more breaking and replacing machines to move them. Invaluable during base expansions and colony supply setup. Shift+right-click any block to pick it up; right-click to place. |

---

### 🎒 Inventory & Storage (2 mods + 1 library)

The Sophisticated series is the gold standard for storage in NeoForge packs. Both mods share one library and work identically.

> **Does this overlap with Create?** No — they solve different problems. Create's Vaults, Funnels, and Mechanical Arms are *item movers*: they transport materials between machines inside a contraption. Sophisticated Storage provides the *destination*: organized, filterable chests that sit in your base and accept what Create delivers. A common late-game setup is a Create Mechanical Arm sorting items into Sophisticated Storage chests by category.

| # | Mod | Modrinth Link | What it does |
|---|-----|---------------|--------------|
| 15 | **Sophisticated Backpacks** | [modrinth.com/mod/sophisticated-backpacks](https://modrinth.com/mod/sophisticated-backpacks) | Tiered backpacks (Leather → Iron → Gold → Diamond → Netherite) with upgradeable filter, sort, and auto-pickup slots. A must-have for exploration. |
| 16 | **Sophisticated Storage** | [modrinth.com/mod/sophisticated-storage](https://modrinth.com/mod/sophisticated-storage) | Same tier system for chests. Filter upgrades, compacting upgrades, and direct integration with Create item pipes. The target endpoint for your automation chains. |
| 📦 | **Sophisticated Core** | [modrinth.com/mod/sophisticated-core](https://modrinth.com/mod/sophisticated-core) | Required library for both Sophisticated mods. Install it, ignore it. |

---

### 🔮 Magic (5 mods)

Ars Nouveau is the only full magic system in the pack. It is intentionally deep — players will spend dozens of hours unlocking new glyphs and spell combinations. Three lightweight add-ons extend it without introducing a second system.

| # | Mod | Modrinth Link | What it does |
|---|-----|---------------|--------------|
| 17 | **Ars Nouveau** | [modrinth.com/mod/ars-nouveau](https://modrinth.com/mod/ars-nouveau) | **PRIMARY MAGIC SYSTEM.** Craft custom spells by combining glyphs (projectile + fire + area = flame barrage). Summon familiars (cute magical companions). Build ritual pedestals for passive automation. Harvest magical resources (Source Gems, Mana Berries). Deep, progressive, and endlessly creative. |
| 18 | **Ars Creo** | [modrinth.com/mod/ars-creo](https://modrinth.com/mod/ars-creo) | The magic–tech bridge. Adds Spell Turrets that mount on Create contraptions and fire automatically. Adds the Starbuncle Wheel — a familiar that generates Create Stress Units (SU). Connects both trees beautifully for late-game builds. |
| 19 | **Ars Elemental** | [modrinth.com/mod/ars-elemental](https://modrinth.com/mod/ars-elemental) | Adds five element-specific Spell Focuses (fire, water, earth, air, arcane) that slot into your existing Spellbook and unlock secondary effects on your current spells — fire spells apply Ignite, water spells apply Slowness, air spells add Levitation. No new progression tree to learn. Pure expansion of glyphs your family already knows, discovered naturally as spell combinations grow more complex. |
| 20 | **Ars Additions** | [modrinth.com/mod/ars-additions](https://modrinth.com/mod/ars-additions) | Quality-of-life additions built specifically for Ars Nouveau. Adds Reinforced Spellbooks (durability upgrade), Spellbook Satchels for organised carry, and dedicated storage-integration blocks that connect magical item management cleanly with Sophisticated Storage. Keeps the magical inventory tidy without requiring a separate storage system. |
| 21 | **Enchantment Descriptions** | [modrinth.com/mod/enchantment-descriptions](https://modrinth.com/mod/enchantment-descriptions) | Adds plain-English tooltips to every enchanted book and enchanted item. Hover any gear and see exactly what each enchantment does — including mod-added enchantments from Ars Nouveau, Create: New Age, and Alex's Mobs. Eliminates alt-tabbing to a wiki to decode custom enchantment parameters. Essential for younger family players discovering enchants for the first time. Client-side only — do not install on server. |

*Patchouli (#14) is also required by Ars Nouveau — the Worn Notebook runs on it.*

> **Why no Botania, Thaumcraft, or Blood Magic?** Ars Nouveau is deep enough to last the entire playthrough. Adding a second full magic system creates recipe conflicts, power balance issues, and overwhelms new players. Ars Elemental and Ars Additions extend the *existing* system — they don't replace or compete with it.

---

### ⚙️ Technology (6 mods)

Create is visual, tactile, and family-friendly. Machines move in real time — you can watch your factory work, which makes it great for kids.

| # | Mod | Modrinth Link | What it does |
|---|-----|---------------|--------------|
| 22 | **Create** | [modrinth.com/mod/create](https://modrinth.com/mod/create) | **PRIMARY TECH SYSTEM.** Mechanical gears, fans, pistons, mixers, funnels, and rotating contraptions — all driven by windmills, waterwheels, or steam engines. Everything animates in real time. Uses Stress Units (SU), not RF/FE. |
| 23 | **Create: New Age** | [modrinth.com/mod/create-new-age](https://modrinth.com/mod/create-new-age) | Adds nuclear reactors, solar panels, and wind turbines as power sources for Create. Converts SU ↔ FE for cross-mod compatibility. Late-game progression: early bases run on windmills, end-game runs on reactors. Only needs Create as a dependency on 1.21.1 — no Botarium required. |
| 24 | **Steam 'n' Rails** *(NeoForge port)* | [modrinth.com/mod/create-steam-n-rails-1.21.1](https://modrinth.com/mod/create-steam-n-rails-1.21.1) | Full locomotive trains, stations, and scheduling. Build a railroad connecting family bases across Terralith's landscapes. ⚠️ Unofficial port — actively maintained as of early 2026. |
| 25 | **Create: Connected** | [modrinth.com/mod/create-connected](https://modrinth.com/mod/create-connected) | QoL blocks that Create is missing: clutches and gearboxes (kinetic flow control), redstone diodes and transmitters (logic circuits), rotated vaults and tanks (better logistics). Highly configurable — disable anything you don't need. Pure Create addon, no new systems. |
| 26 | **Bells and Whistles** | [modrinth.com/mod/bells-and-whistles](https://modrinth.com/mod/bells-and-whistles) | Decorative detail blocks built specifically for Steam 'n' Rails train networks — station platforms, custom steps, grab rails, ornamental arches, and animated signal lights. Transforms a functional rail line into a believable piece of engineering. No new mechanics; purely aesthetic additions that make stations and overpasses look finished rather than blocky. Works alongside Macaw's Bridges and Chipped for a cohesive architectural style. |
| 27 | **Create: Central Kitchen** | [modrinth.com/mod/create-central-kitchen](https://modrinth.com/mod/create-central-kitchen) | The bridge between Create's mechanical automation and Farmer's Delight's cooking system. Lets Mechanical Arms fill Cooking Pots, Portable Storage Interfaces load Cutting Boards, and Funnels distribute finished meal portions — fully automating the Farmer's Delight recipe chain without player input. A single contraption can chop, cook, and package meals from raw crops. Scales your farming operation from Straw Golem harvesting all the way to mass meal production. |

> **Why not Mekanism or Immersive Engineering?** Create is the only tech system. Its steampunk aesthetic pairs naturally with Ars Nouveau's magical feel. Adding Mekanism creates a jarring second tech layer and massive recipe bloat.

---

### ⚔️ Equipment & Gear (3 mods)

Arcane Frontiers needed a modular gear system — the kind of deep, personalised tool-crafting that Tinkers' Construct provides in other packs. Tetra fills that role with a vanilla-plus approach that uses materials you already have. Two integration bridges extend it into the pack's other systems: Tetra Pak connects it to Create's processed metals, and Tetra's Delight connects it to Farmer's Delight's kitchen knives — so the same workbench that upgrades your sword also upgrades the knife your family uses to run their cooking chain.

| # | Mod | Modrinth Link | What it does |
|---|-----|---------------|--------------|
| 28 | **Tetra** | [modrinth.com/mod/tetra](https://modrinth.com/mod/tetra) | Modular equipment overhaul in the spirit of Tinkers' Construct but rebuilt with a vanilla-plus aesthetic. Instead of melting ores into casts, you place components on a physical Modular Workbench and use a Forge Hammer to swap individual parts — blade, hilt, tool head, binding — one at a time. Tools and weapons gain stats and levels through use, rewarding players who maintain their gear. No new ores added; uses materials you already have. |
| 29 | **Tetra Pak** | [modrinth.com/mod/tetra-pak](https://modrinth.com/mod/tetra-pak) | Integration bridge between Tetra and Create. Registers Create's processed metals — Brass, Andesite Alloy, Rose Quartz — as valid Tetra modular components with unique kinetic material traits. A Brass hilt provides speed bonuses tied to gear maintenance; an Andesite blade offers efficiency bonuses near running machinery. Perfectly adheres to the one-resource-multiple-uses philosophy: the metals you smelt for Create also upgrade your weapons and tools. |
| 66 | **Tetra's Delight** | [modrinth.com/mod/tetras-delight](https://modrinth.com/mod/tetras-delight) | Integration bridge between Tetra and Farmer's Delight. Registers Farmer's Delight Knives as valid modular tools on the Tetra Modular Workbench — the same knife used to chop vegetables on a Cutting Board can be taken to the workbench and fitted with a Brass handle, an Andesite blade edge, or any other Tetra component. Adds zero new items or progression systems; it simply unlocks an existing tool for modular upgrading. The practical result: the cooking pillar and the equipment pillar share one upgrade loop. A knife that started as a basic kitchen tool becomes a finely tuned piece of modular gear. ⚠️ Verify NeoForge 1.21.1 compatibility on Modrinth before installing. |

> **Why Tetra over Tinkers' Construct?** Tinkers' Construct does not have a stable NeoForge 1.21.1 port. Tetra fills the same modular-gear niche with a cleaner visual style that matches the pack's vanilla-plus aesthetic. Tetra Pak and Tetra's Delight ensure that the metals you smelt for Create and the knives you use for cooking both feed into the same modular upgrade loop — no separate resource grind required for either.

---

### 🌍 Exploration & World Generation (14 mods)

The world is the stage. These mods make every exploration session feel new.

| # | Mod | Modrinth Link | What it does |
|---|-----|---------------|--------------|
| 30 | **Terralith** | [modrinth.com/datapack/terralith](https://modrinth.com/datapack/terralith) | Replaces vanilla terrain with 95+ stunning biomes — canyons, floating islands, crystalline caves, moonlit forests, volcanic plateaus. No new ores. Use the NeoForge mod version (v2.6.x) on Modrinth, not the datapack zip. |
| 31 | **Alex's Mobs** *(Unofficial Port)* | [modrinth.com/mod/alexs-mobs(1.21.1)](https://modrinth.com/mod/alexs-mobs(1.21.1)) | 85+ beautifully animated creatures — ambient animals (capybaras, catfish, sharks) and dangerous foes (Endergrades, Bone Serpents, Warped Moscos). Drop tables integrate with Farmer's Delight. ⚠️ Unofficial 1.21.1 port. |
| 32 | **Alex's Caves** *(Unofficial Port)* | [modrinth.com/mod/alexs-caves-(unofficial-port)](https://modrinth.com/mod/alexs-caves-(unofficial-port)) | New underground biome types: Toxic Caves, Abyssal Chasm, Primordial Caves, Infernal Rift — each with unique mobs, blocks, and resources. Pairs perfectly with Terralith above ground. ⚠️ Unofficial port. |
| 33 | **Friends & Foes** | [modrinth.com/mod/friends-and-foes-forge](https://modrinth.com/mod/friends-and-foes-forge) | Adds mob-vote losers with vanilla-quality polish — Mooblooms (flower cows that spread blossoms as they walk), Copper Golems, Crabs, and more. Kids love Mooblooms. Optional: add [Flowery Mooblooms](https://modrinth.com/mod/friends-and-foes-flowery-mooblooms-forge) for a variant per flower type. See §4.5 to pick which mobs to enable. |
| 34 | **YUNG's Better Dungeons** | [modrinth.com/mod/yungs-better-dungeons](https://modrinth.com/mod/yungs-better-dungeons) | Completely replaces vanilla dungeons with multi-room structures: catacombs, spider dens, skeleton forts. Much more rewarding to explore. |
| 35 | **YUNG's Better Nether Fortresses** | [modrinth.com/mod/yungs-better-nether-fortresses](https://modrinth.com/mod/yungs-better-nether-fortresses) | Expands Nether Fortresses into proper strongholds with extra wings, loot rooms, and decorative detail. Makes Nether feel like a real late-game challenge. |
| 36 | **Dungeons and Taverns** | [modrinth.com/datapack/dungeons-and-taverns](https://modrinth.com/datapack/dungeons-and-taverns) | Scatters structures across Terralith biomes — desert temples, jungle shrines, abandoned houses, roadside taverns. Use the NeoForge mod version (v4.7+). See §4.8 for density tuning. |
| 37 | **Lootr** | [modrinth.com/mod/lootr](https://modrinth.com/mod/lootr) | Converts every structure chest (YUNG's dungeons, D&T temples, Bastions, End Cities — all of them) into **per-player instanced loot**. Each family member opens the same chest and gets their own full roll. No more racing to loot first, no more empty chests on arrival. Works automatically with zero config — install and forget. Multiplayer essential. |
| 38 | **Comforts** | [modrinth.com/mod/comforts](https://modrinth.com/mod/comforts) | Adds craftable **Sleeping Bags** (wool + stick) that skip the night without changing your respawn point. Place one anywhere during a long expedition — wake up, pack it up, keep going. Your bed at home stays your spawn. Also adds Hammocks for skipping the day if needed. Trivial to craft, huge quality-of-life boost for exploration trips. |
| 59 | **The Bumblezone** | [modrinth.com/mod/the-bumblezone](https://modrinth.com/mod/the-bumblezone) | A bee-themed dimension accessible via a beehive portal. Sprawling honeycomb caverns, sugar cane forests, and unique bee variants to encounter. Low combat difficulty — designed to be accessible and charming rather than punishing. Younger players love it; the biome aesthetic is unlike anything else in the pack. Drops unique honey-based materials with minor buffs. Completely self-contained: visiting it requires no progression gate and produces no resource that unbalances any other system. |
| 62 | **Deeper and Darker** | [modrinth.com/mod/deeperdarker](https://modrinth.com/mod/deeperdarker) | Expands the vanilla Deep Dark and Ancient Cities with new blocks (Sculk Stone, Gloomslate), new Ancient City structures with expanded loot rooms, and the Shattered — a new hostile mob for the deepest cave layers. No new dimension required; it builds on what's already underground. Pairs naturally with Alex's Caves — between the two, every underground biome has genuine character and real danger. |
| 63 | **Incendium** | [modrinth.com/mod/incendium](https://modrinth.com/mod/incendium) | Replaces the vanilla Nether biome generation with 8 new biome types — Volcanic Peaks, Ash Barrens, Quartz Flats, Toxic Heap — each with unique structures and mob spawns. Works seamlessly alongside YUNG's Better Nether Fortresses: YUNG's handles the fortress interiors, Incendium handles the biome landscape between them. Makes the Nether feel like a continent rather than a uniform hellscape, without adding new progression requirements. |
| 64 | **Nullscape** | [modrinth.com/mod/nullscape](https://modrinth.com/mod/nullscape) | Transforms the End's barren outer islands into a dramatic alien landscape — towering obsidian spires, floating crystalline formations, and deep void rifts scattered between End Cities. Changes zero gameplay mechanics; it's purely world generation. After the Dragon Slayer quest, the End becomes a place worth building in rather than looting and leaving. Pairs with the Void Walker exploration quest already in Ch 3.5. |
| 65 | **The Twilight Forest** | [modrinth.com/mod/twilightforest](https://modrinth.com/mod/twilightforest) | A complete parallel dimension reached through a portal ritual — a perpetually twilight forest filled with unique biomes, dozens of structured dungeons, and a mandatory boss-progression chain. Six major bosses must be defeated in sequence: Naga → Lich → Minoshroom → Hydra → Ur-Ghast → Snow Queen. Each unlocks access to the next region via a protection system tied to world-level tracking. The magic aesthetic, branching dungeon design, and family-friendly boss pacing make this the single best optional addition to the pack. Treat it as a collaborative endgame adventure, not a resource layer. ⚠️ **Official 1.21.1 NeoForge release exists but contains known edge cases** — pin your version, keep world backups before every boss fight, and see §4.11 for safe server configuration. Do not let your main-pack progression depend on any Twilight Forest items. |

| 📦 | **YUNG's API** | [modrinth.com/mod/yungs-api](https://modrinth.com/mod/yungs-api) | Required by both YUNG mods. Install it, ignore it. |
| 📦 | **GeckoLib** | [modrinth.com/mod/geckolib](https://modrinth.com/mod/geckolib) | Required for Alex's Mobs and Alex's Caves animations. Install it, ignore it. |

> **Does Friends & Foes overlap with Alex's Mobs?** They coexist cleanly. Alex's Mobs adds wildlife diversity — fish, insects, cryptids, and dangerous predators with unique AI. Friends & Foes adds vanilla-aesthetic mob-vote mobs with completely different spawns and behaviour. Different purpose, different player appeal.

---

### 🏗️ Building & Decoration (5 mods)

These fill the gap between raw construction and a truly beautiful base. All are independent — no overlap with each other or with Supplementaries.

| # | Mod | Modrinth Link | What it does |
|---|-----|---------------|--------------|
| 39 | **Macaw's Bridges** | [modrinth.com/mod/macaws-bridges](https://modrinth.com/mod/macaws-bridges) | 40+ bridge styles (rope, stone, wood, iron) that span rivers and ravines properly. Perfect for crossing Terralith gorges and building railroad overpasses with Steam 'n' Rails. |
| 40 | **Macaw's Furniture** | [modrinth.com/mod/macaws-furniture](https://modrinth.com/mod/macaws-furniture) | Chairs, tables, shelves, counters, and kitchen blocks that transform bare rooms into lived-in spaces. Pairs beautifully with Farmer's Delight kitchens and Supplementaries décor. |
| 41 | **Chipped** | [modrinth.com/mod/chipped](https://modrinth.com/mod/chipped) | Craft a Carpenter's Workbench and convert any vanilla block into thousands of textural variants — mossy, cracked, carved, weathered. Builders will spend hours here. No new resource grind; it's all variants of blocks you already have. |
| 42 | **Copycats+** | [modrinth.com/mod/copycats](https://modrinth.com/mod/copycats) | Panels, layers, slabs, and steps that copy the texture of any block you place inside them — wrap a Copycat Panel with andesite and get a smooth andesite facing; use oak planks and get an oak panel. Invaluable for hiding Create's mechanical infrastructure behind clean walls, matching cave openings to surrounding stone, and creating architectural detail around moving contraptions. One block type replaces hundreds of individual decorative variants — no inventory bloat. |
| 60 | **Macaw's Roofs** | [modrinth.com/mod/macaws-roofs](https://modrinth.com/mod/macaws-roofs) | Proper sloped, hip, and gabled roof pieces in every wood and stone material — the one shape vanilla Minecraft has always been missing. Turns any rectangular base into a house that actually looks finished. Works seamlessly alongside Macaw's Bridges and Furniture and integrates with Chipped variants for textured roof surfaces. Essential for MineColonies Stylecolonies building aesthetics and any player tired of flat-topped builds. |

---

### 🌾 Farming, Food & Immersion (6 mods)

| # | Mod | Modrinth Link | What it does |
|---|-----|---------------|--------------|
| 43 | **Farmer's Delight** | [modrinth.com/mod/farmers-delight](https://modrinth.com/mod/farmers-delight) | Cooking pots, cutting boards, new crops (tomatoes, onions, rice), and dozens of recipes with buffs. Makes feeding a family server genuinely fun. |
| 44 | **Straw Golem** | [modrinth.com/mod/straw-golem-rebaled-ported](https://modrinth.com/mod/straw-golem-rebaled-ported) | Craft from a hay bale + carved pumpkin and place in a crop field — it harvests mature crops, replants seeds, and carries surplus to a nearby chest automatically. Zero maintenance, zero performance cost, genuinely charming for younger players. Pairs perfectly with Farmer's Delight crops. |
| 45 | **AppleSkin** | [modrinth.com/mod/appleskin](https://modrinth.com/mod/appleskin) | Overlays hunger saturation directly on the HUD. Pairs perfectly with Farmer's Delight — players can finally see *why* a cooked meal is worth making. Tiny mod, zero overhead. |
| 46 | **Supplementaries** | [modrinth.com/mod/supplementaries](https://modrinth.com/mod/supplementaries) | 100+ small functional items: rope bridges, notice boards, rechargeable torches, sticky bombs, jar blocks, and more. Collectively make the world feel alive without any single item being game-breaking. |
| 47 | **Sound Physics Remastered** | [modrinth.com/mod/sound-physics-remastered](https://modrinth.com/mod/sound-physics-remastered) | Real-time reverb, echo, and absorption through blocks. Caves boom, forests muffle, your Create factory clanks with depth. Client-side only — do not install on server. |
| 61 | **Cooking for Blockheads** | [modrinth.com/mod/cooking-for-blockheads](https://modrinth.com/mod/cooking-for-blockheads) | Adds a functional kitchen block system — Cooking Tables, Sinks, Toasters, Fridges, and Tool Racks that form a multiblock kitchen counter. The Cooking Table shows only recipes you can currently make from nearby ingredients, eliminating recipe-hunting. Pairs perfectly with Farmer's Delight (the two share recipe integration) and Macaw's Furniture (countertop aesthetics). Also works as a colony food-station display for MineColonies kitchens. |

> **Straw Golem vs Create farming:** Create can automate crops with deployers and harvesters on contraptions — but that's a late-game engineering project. Straw Golem is an early-game garden tool you craft in minutes. Different scope, different player, different stage.

| 📦 | **Moonlight Lib** | [modrinth.com/mod/moonlight](https://modrinth.com/mod/moonlight) | Required by Supplementaries. Install it, ignore it. |

---

### 👨‍👩‍👧‍👦 Multiplayer (1 mod)

| # | Mod | Modrinth Link | What it does |
|---|-----|---------------|--------------|
| 48 | **Essential** | [modrinth.com/mod/essential](https://modrinth.com/mod/essential) | Host a world directly from single-player — no server setup needed. Invite family by username. Cosmetics (capes, emotes). Supports NeoForge 1.21.1. |

---

### 📜 Questing (1 mod — CurseForge exception)

| # | Mod | Source | What it does |
|---|-----|--------|--------------|
| 49 | **FTB Quests** | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/ftb-quests-forge) | The gold standard for NeoForge modpack questing. Visual quest trees, item submission tasks, reward chests, team-shared progress. Used in ATM10, Direwolf20, and hundreds of major packs. **The only mod not on Modrinth.** See [Installation Guide](#3-installation-guide) for setup alongside Modrinth mods. |

> **Why FTB Quests?** It's the only NeoForge quest mod with the full feature set needed: visual trees, item tasks, reward chests, team sync, and easy JSON editing. Heracles/Odyssey Quests hasn't been updated to NeoForge 1.21.1. The Modrinth App supports CurseForge mods natively — minor exception, not a workflow change.

---

### 🏰 Colony & Settlement — Optional Fourth Pillar (2 mods)

MineColonies is the only city-builder system with full NeoForge 1.21.1 support. It is intentionally **optional** in Arcane Frontiers — players who love automation and spells can focus there entirely, while the family shares **one central colony** that everyone contributes to. The colony becomes the living, breathing heart of the server: a town your Create factories supply, your Ars Nouveau mages enchant gear for, and your exploration trains deliver materials to. See §4.10 for the single-colony server config.

> ⚠️ **Performance note:** MineColonies is the most resource-intensive mod in the pack. The default citizen cap is 500 — that will destroy TPS on a family server. Set `maxcitizenspercolony = 150` in `minecolonies-common.toml` before your first session. See §4.10 for the full config block.

| # | Mod | Source | What it does |
|---|-----|--------|--------------|
| 50 | **MineColonies** | [modrinth.com/mod/minecolonies](https://modrinth.com/mod/minecolonies) | **OPTIONAL COLONY SYSTEM.** Place a Supply Camp to found your settlement, then direct AI Builder citizens to construct a full town from pre-designed schematics. Assign professions — Farmers, Miners, Lumberjacks, Blacksmiths, Guards, Fletchers, and more. Each profession runs independently: Farmers plant and harvest crops, Miners dig ore veins, Couriers deliver goods between buildings. Includes a full research tree (University) that unlocks new buildings, citizen abilities, and guard upgrades over dozens of hours. The pack runs one shared family colony — all players co-own and contribute to the same settlement. |
| 51 | **MineColonies Importer** | [modrinth.com/mod/minecolonies-importer](https://modrinth.com/mod/minecolonies-importer) | The correct 1.21.1 bridge between your colony and your factory. Adds specialised inventory blocks that expose the MineColonies colony warehouse data network directly to Create — Mechanical Arms and Funnels can read colony resource requests and fulfil them automatically from your item logistics line. Citizens place requests through the normal colony GUI; your Create contraption handles the delivery without any manual chest-filling. Without this mod, your colony and your factory exist in parallel. With it, they become one unified supply chain. |

> **Why not Create: Dynamic Village instead?** Create: Dynamic Village is actually *also* in the pack — see below. It operates at a completely different scale: pre-built villages with Create merchants, not player-directed colony building. The two mods complement each other perfectly.

| # | Mod | Source | What it does |
|---|-----|--------|--------------|
| 52 | **Stylecolonies** | [modrinth.com/mod/stylecolonies](https://modrinth.com/mod/stylecolonies) | Expands MineColonies with dozens of verified, high-quality custom architectural build styles — Byzantine domes, fantasy spires, dark medieval keeps, and more. Family members can choose a distinct style for their district of the shared colony, giving different neighbourhoods a unique visual identity. Purely cosmetic expansion of the building system; all professions and gameplay work identically regardless of style. |
| 53 | **MineColonies: War 'N Taxes** | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/war-n-taxes) | Introduces a lightweight colony economy layer with configurable tax income, wandering traders who bring rare goods to your colony market, and structured town events (trade fairs, raid waves, diplomatic encounters). Gives the family a shared goal — fund the kingdom, manage events together, respond to crises — rather than just building in isolation. A light mid-to-late-game event loop that rewards an established colony without adding overwhelming micromanagement. |

---

### 🚢 Water Logistics (1 mod)

The pack's railroad network handles land transport across Terralith. Little Logistics fills the other half — natural river routes through biomes that are impractical to rail through.

| # | Mod | Modrinth Link | What it does |
|---|-----|---------------|--------------|
| 54 | **Little Logistics** | [modrinth.com/mod/little-logistics](https://modrinth.com/mod/little-logistics) | Physics-based automated tugboats and barge networks that travel along natural rivers. Craft a Tugboat, load cargo onto a Barge, set a destination, and it navigates the waterway autonomously. Perfect for connecting distant Terralith biomes back to your main base without requiring a full rail infrastructure. Complements Create's belt-and-arm factory logistics (which moves items *within* a contraption) by moving goods *across the world* via natural waterways. No new ores, no new fuel sources — runs on the same water channels Terralith creates. |

> **Does this compete with Steam 'n' Rails?** No — they solve different problems at different scales. Trains connect major bases across long land routes on purpose-built rail lines. Little Logistics boats travel *existing* river channels through biomes trains can't reach easily. Early explorers can ship goods home via river long before they've built a railroad.

---

### 💍 Magical Accessories (1 mod)

The pack had no trinket or accessory slot system — gear progression jumped from vanilla armour directly to Tetra modular tools. Enigmatic Legacy fills that gap with passive charm slots fed by dungeon loot.

| # | Mod | Modrinth Link | What it does |
|---|-----|---------------|--------------|
| 55 | **Enigmatic Legacy** | [modrinth.com/mod/enigmatic-legacy](https://modrinth.com/mod/enigmatic-legacy) | Adds a Curios-compatible accessory system: dedicated ring, charm, scroll, and amulet slots that grant passive perks when equipped. Charms and rings drop from dungeon chests (YUNG's catacombs, Dungeons and Taverns structures, Bastions) and from Alex's Mobs rare drops — rewarding exploration with tangible character upgrades like step-assist, mana regen, XP boost, or combat bonuses. Progressive: early charms from shallow dungeons are minor, late-game items from Nether Fortresses and End Cities are powerful. ⚠️ Requires Curios API — see library list below. |

> **Why not a full RPG overhaul mod?** Enigmatic Legacy adds *slots and loot* without adding a second progression tree. Players don't need to learn a new system — they just find interesting items in places they're already exploring. Enchantment Descriptions (#21) already ensures every charm tooltip is readable.

---

### 🏘️ Living Villages (1 mod)

With MineColonies handling player-built settlements, the world's pre-existing vanilla villages needed their own upgrade. Create: Dynamic Village gives every discovered village a mechanical identity and connects it to your existing Create infrastructure.

| # | Mod | Modrinth Link | What it does |
|---|-----|---------------|--------------|
| 56 | **Create: Dynamic Village** | [modrinth.com/mod/create-dynamic-village](https://modrinth.com/mod/create-dynamic-village) | Replaces vanilla village structures with 20 custom Create-themed variants — villages with working windmills, gear-mounted market stalls, and mechanical architecture. Adds Create-profession villagers: Mechanical Engineers who trade Create components, Train Mechanics who sell rail parts, and Hydraulic Engineers offering water wheel upgrades. Villager pathfinding interacts with your Create infrastructure — they navigate around contraptions, react to moving machinery, and give the world a sense that the locals have adapted to the same technology your family is building. Lightweight: just a worldgen and profession expansion on top of vanilla villagers. |

> **How does this sit alongside MineColonies?** They operate at completely different levels. Create: Dynamic Village enriches the *world's existing villages* — villages Terralith and Dungeons and Taverns already scatter everywhere — with Create flavour and useful merchants. MineColonies is the *one family colony* you build from scratch. Discovered CDV villages are great sources of early Create materials and mid-game train parts; your MineColonies settlement is the late-game centrepiece. Different scale, different purpose, zero conflict.

---

### 📦 Required Libraries Summary

Install all of these — they are automatic if using the Modrinth App.

| Library | Modrinth Link | Required by |
|---------|---------------|-------------|
| Balm | [modrinth.com/mod/balm](https://modrinth.com/mod/balm) | Waystones |
| Sophisticated Core | [modrinth.com/mod/sophisticated-core](https://modrinth.com/mod/sophisticated-core) | Sophisticated Backpacks, Sophisticated Storage |
| YUNG's API | [modrinth.com/mod/yungs-api](https://modrinth.com/mod/yungs-api) | YUNG's Better Dungeons, YUNG's Better Nether Fortresses |
| GeckoLib | [modrinth.com/mod/geckolib](https://modrinth.com/mod/geckolib) | Alex's Mobs, Alex's Caves |
| Moonlight Lib | [modrinth.com/mod/moonlight](https://modrinth.com/mod/moonlight) | Supplementaries |
| Patchouli | (already listed, #14) | Ars Nouveau |
| Curios API | [modrinth.com/mod/curios](https://modrinth.com/mod/curios) | Enigmatic Legacy (accessory slot framework) |
| libIPN | [modrinth.com/mod/libipn](https://modrinth.com/mod/libipn) | Inventory Profiles Next (shared UI library) |
| Structurize | [modrinth.com/mod/structurize](https://modrinth.com/mod/structurize) | MineColonies (schematic placement engine) |
| Domum Ornamentum | [modrinth.com/mod/domum-ornamentum](https://modrinth.com/mod/domum-ornamentum) | MineColonies (decorative block framework + colony building textures) |
| BlockOut | [modrinth.com/mod/blockout](https://modrinth.com/mod/blockout) | MineColonies (GUI framework) |
| Multi-Piston | [modrinth.com/mod/multi-piston](https://modrinth.com/mod/multi-piston) | MineColonies (multi-block piston mechanics for builders) |

---

## 3. Installation Guide

### Option A: Modrinth App (Strongly Recommended)

The Modrinth App is a free launcher that handles NeoForge installation, mod management, and version pinning automatically. It also supports CurseForge mods (for FTB Quests).

#### Step 1 — Install the Modrinth App

1. Go to [modrinth.com/app](https://modrinth.com/app) and download for Windows/Mac/Linux.
2. Install and open it. Sign in or create a free account.
3. The app manages Java automatically — no manual Java install needed.

#### Step 2 — Create the Modpack Profile

1. Click **+ Create profile**
2. Name it `Arcane Frontiers`
3. Select Minecraft version: **1.21.1**
4. Select loader: **NeoForge** → pick the **latest stable** build
5. Set RAM: click the profile → **Edit** → allocate **6–8 GB** (6 minimum, 8 recommended)
6. Click **Create**

#### Step 3 — Add Modrinth Mods

1. Open your new profile → **Add mods**
2. Search and add each mod from the table in Section 2
3. The app will auto-install required libraries (Balm, GeckoLib, etc.)

#### Step 4 — Add FTB Quests (CurseForge)

The Modrinth App supports CurseForge mods natively:

1. In your profile → **Add mods** → switch the tab from "Modrinth" to **"CurseForge"**
2. Search for `FTB Quests` and also `FTB Library` (required dependency)
3. Install both with the NeoForge 1.21.1 compatible version

#### Step 5 — First Launch

1. Click **Play** from your Arcane Frontiers profile
2. Minecraft will launch with NeoForge and all mods loaded
3. On first launch, expect 3–5 minutes of one-time asset loading
4. Check the Mods menu (`ESC → Mods`) to confirm all 30+ mods are green/loaded

---

### Option B: Manual Installation

Use this if you prefer the official Minecraft launcher or Prism Launcher.

#### Step 1 — Install NeoForge

1. Download the NeoForge installer from [neoforged.net](https://neoforged.net/) — select the latest stable build for **1.21.1**
2. Run the `.jar` installer → select "Install client"
3. NeoForge will appear as a new profile in your Minecraft launcher

#### Step 2 — Locate Your Mods Folder

```
Windows:  %AppData%\.minecraft\mods
Mac:      ~/Library/Application Support/minecraft/mods
Linux:    ~/.minecraft/mods
```

Create the `mods` folder if it doesn't exist.

#### Step 3 — Download All Mods

Visit each Modrinth link in Section 2. On each mod page:
- Click **Versions** tab
- Filter by **1.21.1** and **NeoForge**
- Download the latest **Release** (or Beta if no Release exists)

Download FTB Quests and FTB Library from CurseForge separately.

#### Step 4 — Place All `.jar` Files

Move every downloaded `.jar` file into your `mods` folder.

#### Step 5 — Allocate RAM

In the Minecraft Launcher:
1. **Installations** tab → click the NeoForge 1.21.1 profile → **Edit**
2. **More Options** → find the JVM arguments line
3. Change `-Xmx2G` to `-Xmx6G` (or `-Xmx8G` if you have 16+ GB total RAM)

---

### Verifying Your Install

On first world load, open chat and type:
```
/ftbquests
```
If FTB Quests is installed, this command opens the quest interface. If it errors, check that `ftb-quests` and `ftb-library` are both in your mods folder.

For Ars Nouveau, look in your inventory for the **Worn Notebook** — it appears automatically and contains the full magic guide.

---

## 4. Setup & Configuration

Most mods work perfectly out of the box. The tweaks below improve balance and family experience. All config files live in `.minecraft/config/`.

---

### 4.1 Difficulty Settings

**Recommended world settings at creation:**

```
Difficulty:       Normal (not Hard — family balance)
World type:       Default (NeoForge/Terralith overrides terrain anyway)
Bonus chest:      ON (helps new players get started faster)
Structures:       ON (required for YUNG's and Dungeons and Taverns)
```

**Gamerule tweaks** (run these commands after world creation):

```bash
# Keep inventory on death — recommended for younger players
/gamerule keepInventory true

# Slightly slower hunger drain — less frustrating early game
/gamerule foodExhaustion <default is fine, adjust if needed>

# Announce player deaths in chat (fun for the family, optional)
/gamerule showDeathMessages true
```

---

### 4.2 Terralith Configuration

Terralith works out of the box, but you can tweak world generation:

**File:** `.minecraft/config/terralith-common.toml`

```toml
# Recommended settings for family play:

# Slightly increase frequency of flat/open biomes (easier base building)
[world_generation]
  cave_biome_frequency = 0.4        # default 0.5 — slightly rarer to reduce cave chaos
  amplified_terrain = false         # leave off — too extreme for family bases

# These biomes have very dramatic terrain; fine to leave on
  volcanic_biomes = true
  canyon_biomes = true
```

---

### 4.3 Waystones Configuration

By default, Waystones costs XP to warp. For family play, make it free or cheap:

**File:** `.minecraft/config/waystones-common.toml`

```toml
[global]
  # Set to 0 to make teleportation free (recommended for family servers)
  xpCostPerDistance = 0
  
  # How long before the warp stone recharges (seconds)
  warpStoneRechargeTime = 300        # 5 minutes — or set to 0 for no cooldown
  
  # Allow using waystones in the Nether
  netherWaystones = true
  
  # Waystones generate in villages — set false to force crafting only
  generatesInVillages = true
```

---

### 4.4 Alex's Mobs — Spawn Weights

Alex's Mobs adds many creatures. If hostile mobs feel overwhelming for younger players:

**File:** `.minecraft/config/alexsmobs.toml`

```toml
# Reduce spawn rate of aggressive mobs by ~30%
[mob_spawning]
  # Find the mob that's causing trouble and reduce its weight
  # Example: Endergrades are scary — reduce spawn weight
  endergrade_spawn_weight = 5       # default ~12

  # Bone Serpents can be nasty in early game
  bone_serpent_spawn_weight = 4     # default ~8
  
  # Most ambient animals (capybara, raccoon, etc.) are fine at defaults
```

---

### 4.5 Friends & Foes — Mob Selection

Friends & Foes adds ~10 mob types. If you only want Mooblooms (the family favourite) and prefer a lighter footprint, disable the rest:

**File:** `.minecraft/config/friendsandfoes-common.toml`

```toml
[mobs]
  # Set to false to disable any mob you don't want
  # Moobloom is the crowd favourite — highly recommend keeping it on
  enableMoobloom    = true
  enableCopperGolem = true     # fun for builders
  enableCrab        = true     # pleasant ambient creature
  enableGlare       = false    # atmospheric but many packs find it redundant
  enableIceologer   = false    # adds difficulty; disable for younger kids
  enableRascal      = false    # dungeon-only; disable if dungeons already feel busy
  enableTuffGolem   = false    # decorative; optional
  enableWildfire    = false    # boss-level difficulty; only for advanced players
  enableIllusioner  = false    # stronger than most family players expect
```

> **Recommended minimum config for family play:** Keep Moobloom, Copper Golem, and Crab on. They're charming, low-threat, and kid-loved. Disable Wildfire and Iceologer until the family is comfortable with harder combat.

---

### 4.6 Ars Nouveau — Source (Mana) Balance

Ars Nouveau's "Source" (mana) system is well-balanced by default. For family play, leave defaults but be aware of these config options:

**File:** `.minecraft/config/ars_nouveau-common.toml`

```toml
[spells]
  # Reduce mana cost of spells slightly if magic feels grindy
  # 0.8 = 80% of default cost — a gentle buff for beginners
  source_cost_multiplier = 0.9
  
  # Apprentice Spellbook (tier 1) spell limit — default 3 glyphs
  # Increase to 4 to let beginners experiment more before upgrading
  apprentice_spell_slots = 4
```

---

### 4.7 Create — Speed Limits

Create contraptions can lag servers if built too large too fast. These limits prevent early-game lag monsters:

**File:** `.minecraft/config/create-common.toml`

```toml
[infrastructure]
  # Max kinetic speed for contraptions (RPM) — prevents insane early launchers
  maxBogeySpeed = 40               # default is higher; reduce for balance
  
  # Max contraption blocks before it counts as "heavy" (performance warning)
  maxContraptionTorque = 65536
```

---

### 4.8 Worldgen Density — Structure Balancing

Terralith + YUNG's Better Dungeons + Dungeons and Taverns running together can produce a world that feels claustrophobic — you stumble into a structure every 200 blocks, which kills the sense of discovery. Test a world first: fly around in spectator mode for 10 minutes before committing. If it feels too dense, apply the following.

**Test first, then tune.** Don't pre-emptively disable structures before seeing how it plays. The defaults are reasonable — just be ready to adjust.

---

**Dungeons and Taverns** offers the most direct structure frequency control:

**File:** `.minecraft/config/dungeons_and_taverns.json` (or via its in-game config if using the mod version)

```json
{
  "structure_frequency": {
    "tavern": {
      "spacing": 48,
      "separation": 20
    },
    "desert_temple": {
      "spacing": 40,
      "separation": 16
    },
    "abandoned_house": {
      "spacing": 36,
      "separation": 12
    }
  }
}
```

> Increase `spacing` to push structures farther apart. The separation value must always be less than spacing. As a rule of thumb: `spacing 48 / separation 20` gives roughly one structure per 3–4 chunks — comfortable for exploration without feeling sparse.

---

**YUNG's Better Dungeons** — if underground dungeons feel too common:

**File:** `.minecraft/config/yungs-better-dungeons.toml`

```toml
[dungeon_settings]
  # Default spacing is usually 24 chunks — increase to 32–40 for breathing room
  dungeonSpacing = 32
  dungeonSeparation = 10
  
  # Disable specific dungeon types if they feel too frequent
  # (catacombs tend to be the largest and most disruptive)
  generateCatacombs = true           # set false if you want to reduce them
  generateSpiderDens = true
  generateSkeletonForts = true
```

---

**Recommended starting point** — increase spacing on all three mods by ~25% from defaults, test a new world in spectator mode, then fine-tune from there. The goal is:

- **Open terrain**: Terralith biomes visible and breathable between structures
- **Rewarding find**: Each structure feels like a discovery, not background noise
- **No overlap**: Two structures shouldn't spawn close enough to clip each other (the separation value prevents this if set correctly)

> **Note:** YUNG's Better Nether Fortresses has no frequency config — it replaces the vanilla fortress 1:1, so it scales with your nether seed naturally.

---

### 4.9 FTB Quests — Initial Setup

After your first world load:

1. Press **`P`** (or the quest book icon in your inventory) to open FTB Quests
2. On first setup, you'll see an empty quest screen — you need to import or create quest files
3. See [Section 5](#5-quest-system) for the full quest chapter structure and how to import example quests
4. To enable **team progress** (shared quest completion on a server):
   - All players type `/ftbquests` → **Team Settings** → Enable team mode

---

### 4.10 MineColonies — Single Shared Family Colony Config

The pack uses **one shared family colony** — a central town everyone contributes to. These settings tune it for cooperative play on a small family server.

Two config files to edit — both live in `.minecraft/config/`:

**`minecolonies-common.toml`** — the critical performance file:

```toml
# .minecraft/config/minecolonies-common.toml
maxcitizenspercolony = 150    # Default is 500 — that WILL tank your TPS. 100–150 is safe for family hardware.
```

**`minecolonies-server.toml`** — gameplay tuning:

| Setting | Recommended value | Why |
|---------|------------------|-----|
| `maxColonies` | `1` | One colony per server — the shared family town |
| `enableColonyProtection` | `true` | Keeps the colony's claim area protected. Safe to enable since it's one shared town |
| `citizenRespawnInterval` | `600` | Slower respawn after raids — reduces citizen-death spam on hard raid nights |
| `builderPlaceConstructionTape` | `true` | Marks build zones clearly — everyone can see where the Builder is working and leave space |
| `canColonistsDie` | `true` | Keeps guard defence meaningful. If young players find it upsetting, flip to `false` — no balance impact |
| `alwaysRenderNameTag` | `true` | Citizen names always visible — helps the family track individual citizens by name across the town |

**Founding the shared colony (one player, first session):**
1. The designated colony founder crafts or obtains a **Supply Ship** item
2. Place it on a body of water at the desired town location (must be a flat or gentle area — the Builder needs ground to work with)
3. The Supply Ship auto-places a Town Hall claim block — this defines the colony centre
4. All other family members join by approaching the Town Hall and selecting "Join Colony" in the GUI — they become co-owners with full build and assignment rights

> 💡 **Stylecolonies tip:** Once the Town Hall is placed, open the Building GUI → Style selector. Have the family pick an architectural style *before* issuing the first build orders — changing styles mid-build requires demolishing and rebuilding structures. Great first session activity: everyone votes on the look of the town.

> 💡 **TPS tip:** MineColonies citizen pathfinding is the main TPS cost. If lag spikes occur mid-session, drop `maxcitizenspercolony` in `minecolonies-common.toml` from 150 to 100 and restart the server. Prioritise professions that stay near fixed buildings (Farmer, Blacksmith, Courier) over roaming ones (Miner, Lumberjack) — roamers calculate long pathfinding chains that hit TPS hardest.

---

### 4.11 Twilight Forest — Safe Server Configuration

Twilight Forest has an official 1.21.1 NeoForge release but contains known edge cases around the progression-locking system on multiplayer servers. These steps keep the family session stable.

**Before your first Twilight Forest session:**
1. **Pin the version.** In the Modrinth App, right-click the mod → **Pin version**. Do not auto-update mid-playthrough — patch versions can change progression state tracking in ways that break existing worlds.
2. **Take a world backup** before every major boss fight. In your server folder: copy the entire `world/` directory to a dated zip. Takes 30 seconds, saves enormous frustration.
3. **Read the boss order** (see Ch 7 quests) with the whole family before entering. The protection system is per-world, not per-player — if one person defeats the Naga alone, the Lich Tower becomes accessible for everyone. Plan boss fights as a group event.

**Config file:** `.minecraft/config/twilightforest-common.toml`

| Setting | Recommended value | Why |
|---------|------------------|-----|
| `enforceProgressionChecks` | `true` | Keep progression locking ON — disabling it removes the challenge and can actually cause more bugs than it prevents |
| `disableBossSpawning` | `false` | Keep bosses enabled — this is the whole point |
| `allowPortalCreation` | `true` | Players need to be able to create the portal |
| `portalCreationPermissionLevel` | `0` | All players can create portals (0 = no permission requirement) |

**If the progression breaks mid-playthrough:** The Twilight Forest has a debug command: `/tfprogress reset @a` clears all progression flags for all players and lets you restart the boss chain. Use this if a boss shield refuses to drop after a legitimate kill. Keep a backup from before the last boss fight to restore from if the reset doesn't work.

> ⚠️ **Critical:** Do not build your main base inside the Twilight Forest dimension. The dimension is not designed for permanent habitation — chunk loading behaviour differs from the Overworld and can cause issues. Treat it as a dedicated adventure zone: enter, fight, loot, return.

---

## 5. Quest System

### Overview

FTB Quests provides guided progression through **seven chapters** covering every mod in the pack. Quests:
- **Guide** players through each mod without being overwhelming
- **Gate** powerful recipes and items behind meaningful milestones
- **Reward** completion with bonus items, XP, and unlocks
- **Sync** across teammates on a shared server

Total quest count: approximately **200 quests** across 8 chapters + optional bonus quests. Chapter 6 (Colony) and Chapter 7 (Twilight Forest) are both fully optional — non-colony and non-adventure players skip them entirely.

---

### Chapter Map

```
📖 Chapter 0: A New Frontier  ← Every player starts here
   Introduces: JEI, Jade, Xaero's maps, Waystones, Nature's Compass,
               Sophisticated Backpacks, AppleSkin, Farmer's Delight basics
         │
         ├──────────────────────────────────────────────────────┐
         ↓                    ↓                    ↓            ↓
📗 Ch 1: The Arcane Path  📘 Ch 2: Gears & Steam  📙 Ch 3: The Wide World  🏠 Ch 4: Hearth & Home
   (Ars Nouveau)            (Create ecosystem)       (Exploration)            (Building & Farming)
         │                    │                    │            │
     Gate: Ch 2 ──────────── Gate: Ch 1            Gate: Ch 1+2 │  (no gate — runs parallel)
     "Brass Handshake"    "Source Network"       "End Portal Key"│
         │                    │                    │            │
         └────────────────────┴────────────────────┴────────────┘
                                      │
                                      ↓
                         🏆 Chapter 5: Arcane Synthesis
                            (Ars Creo convergence — endgame)
                            Requires: Ch 1 + Ch 2 + Ch 3 gates

🏰 Chapter 6: The Colony (MineColonies)  ← OPTIONAL — runs any time alongside Ch 1–4
   No gates — start your colony whenever you want.
   Integration quests (★) connect back to Ch 1, Ch 2, and Ch 4.
   Each family member can run their own independent colony.

🌲 Chapter 7: The Twilight Adventure  ← OPTIONAL ENDGAME — recommended after Ch 5
   Boss-progression dimension. Complete ALL bosses IN ORDER — the game enforces this.
   Pin your mod version and keep world backups before each boss fight. See §4.11.
   Do not let main-pack progression depend on Twilight Forest items.

🌟 [Bonus] Multiplayer & Community  ← Optional, runs any time
   (Essential, Xaero sharing, Chat Heads, team achievements)
```

---

### Quest Dependency Key

| Symbol | Meaning |
|--------|---------|
| 🔒 | Hard gate — locked until prerequisite quests are complete |
| ★ | Recommended early on, even if optional |
| → | Quest directly unlocks next quest in chain |
| ⊕ | AND dependency (both required) |

---

## Chapter 0: A New Frontier (Tutorial)

Every player completes this on first login. Covers pack basics and introduces all UI/QoL mods. No prerequisites. ~14 quests.

**Mods covered:** JEI, Jade, Xaero's Minimap, Xaero's World Map, Waystones, Nature's Compass, Sophisticated Backpacks, AppleSkin, Farmer's Delight, Terralith (first steps)

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **Welcome to the Frontier** | Open your inventory | Worn Notebook, Map Marker Kit, 16× Bread | All Ch 0 quests |
| **Know Your Recipes** | Press `R` while hovering any item in JEI to view its recipe | 8× Torch | — |
| **What's That Block?** | Look at any block — Jade tooltip appears at the top of your screen | 8× Planks | — |
| **Read the Fine Print** | Get any enchanted book and hover over it — Enchantment Descriptions shows a plain-English explanation of every enchantment | Enchanted Book × 2 | — |
| **Your First Map** | Open Xaero's Minimap by pressing `B` to set a waypoint | Waypoint kit | → The World in Your Hand |
| **The World in Your Hand** | Press `M` to open Xaero's World Map | Explorer's Compass | — |
| **Backpack Time** | Craft a Leather Backpack (Sophisticated Backpacks) | 16× Leather | → Iron Upgrade |
| **Iron Upgrade** | Upgrade your Leather Backpack to Iron tier | Storage upgrade token | — |
| **See What You Eat** | Hover any food item in your inventory — AppleSkin shows saturation in green | 16× Cooked Chicken | → Survival Cooking |
| **Survival Cooking** | Use a Farmer's Delight Cooking Pot to cook any recipe | Farmer's Delight meal pack × 4 | — |
| **Mark Your Home** | Craft and place a Waystone; name it "Home" | Warp Stone | → First Waypoint |
| **First Waypoint** | Teleport to a Waystone using a Warp Stone | 8× Waystone materials | — |
| **Sleeping Bag** | Craft a Comforts Sleeping Bag (3 Wool + 1 Stick) | Second Sleeping Bag + travel kit | — |
| **Night on the Road** | Use a Sleeping Bag to skip the night while away from your base (your home spawn is unaffected) | Exploration supply pack | Sleeping Bag |
| **Compass of Biomes** | Craft a Nature's Compass (Ars Nouveau: 4 Arcanite Dust + Compass) | 4× Compass blanks | → Brave New World |
| **Brave New World** | Walk into 5 different Terralith biomes | 500 XP reward | All three main branches open |
| **Pack It Up** *(Carry On)* | Shift+right-click any placed chest or machine to pick it up and carry it — then place it somewhere else without losing contents | Chest × 2 | — |
| **Home Sweet Home** | Sleep through the night in a bed | 2× Books | — |

---

## Chapter 1: The Arcane Path (Magic)

Full Ars Nouveau progression from first spark to archmage. ~22 quests. The Mage Spellbook (1.3) is hard-gated behind a Chapter 2 milestone to encourage cross-pollination.

**Mods covered:** Ars Nouveau, Patchouli (via Worn Notebook)

---

### 1.1 — First Sparks

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **The Worn Notebook** | Have the Worn Notebook in your inventory (received in Ch 0) | 4× Source Gems | → First Source |
| **First Source** | Craft a Source Jar and place it outdoors to collect ambient Source | 8× Source Gems | → Awakened Wood |
| **Awakened Wood** | Find and harvest an Archwood Tree (spawns in magical Terralith biomes) | Archwood Sapling × 4 | → Your First Glyph |
| **Your First Glyph** | Craft any Glyph scroll | Apprentice Spellbook | → A Touch of Magic |
| **A Touch of Magic** | Cast any spell using the Apprentice Spellbook | 16× Mana Berry seeds | → Three Glyphs Deep |
| **Three Glyphs Deep** | Craft 3 different Glyph scrolls | Source Berry seeds | → The Ritual Circle |
| **The Ritual Circle** | Build a Ritual Brazier surrounded by 4 Ritual Pedestals | Ritual ingredient kit | → 1.2 quests |

---

### 1.2 — Source & Familiars

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **Source Tree** | Plant an Archwood Sapling and grow it to full size | Source Condenser | → Mana Relay |
| **Mana Relay** | Craft a Source Relay and connect it to a Source Jar | 2× Source Relay | → Source Network |
| **A Familiar Friend** | Summon a Starbuncle (cat-like magical companion — adorable) | Starbuncle treats × 16 | → Second Familiar |
| **Second Familiar** | Summon a Drygmy or Whirlisprig | Familiar treat × 8 | → Wixie's Kitchen |
| **Wixie's Kitchen** | Craft a Wixie Cauldron and brew any potion | Potion pack (Strength, Speed, Fire Resistance) | → Source Network |
| **Elemental Focus** | Craft any element-specific Spell Focus from Ars Elemental (fire, water, earth, air, or arcane) and slot it into your Spellbook | 2× Focuses of different elements + 8× Source Gems | → Arcane Wardrobe |
| **Arcane Wardrobe** | Use Ars Additions to craft a Reinforced Spellbook or a Spellbook Satchel | Spellbook Satchel + Reinforced Spellbook materials | — |
| **Source Network** 🔒 *(gate)* | Have 3 Source Jars connected to 1 Source Relay | Mana Boost scroll | → 1.3 + unlocks Ch 2 "Brass Handshake" |

> 💡 **Gate note:** Completing **Source Network** is required for Ch 2's "Brass Handshake" quest. You don't have to do tech first — the gates push both branches forward together.

---

### 1.3 — Spell Mastery *(requires Ch 2 "Brass Handshake")*

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **🔒 Mage Spellbook** | Craft a Mage Spellbook (requires Tier 2 ingredients + Brass Casing from Create) | Mage Spellbook | → 1.3 quests |
| **Five-Glyph Spell** | Craft a custom spell with 5 or more glyphs combined | Spell Parchment × 5 | → The Bookwyrm |
| **Ritual Mastery** | Complete 3 different Ars Nouveau rituals | Ritual reward pack | → Enchanting Ritual |
| **The Bookwyrm** | Summon a Bookwyrm familiar (floats nearby and helps with enchanting) | Bookwyrm leads × 4 | — |
| **Enchanting Ritual** | Use a ritual to enchant a piece of armor or a tool | Enchanted book × 3 | — |
| **Arcane Automation** 🔒 *(gate)* | Build a Source Relay network of 5+ connected Source Jars | Wixie Cauldron upgrade | → 1.4 + unlocks Ch 5 |

---

### 1.4 — Archmage *(requires Ch 3 "End Portal Key")*

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **🔒 Archmage Spellbook** | Craft the Archmage Spellbook (top tier, requires Nether materials) | Archmage Spellbook + 16× Source Gems | → Source Crystal Cluster |
| **Source Crystal Cluster** | Find and mine a Source Crystal Cluster in a Terralith crystal cave biome | Cluster × 4 | → The Grand Ritual |
| **The Grand Ritual** | Complete the Awakening Ritual (Ars Nouveau's highest-tier ritual) | Arcane trophy + 1000 XP | → Ch 5 completion |

---

## Chapter 2: Gears & Steam (Technology)

Full Create progression including New Age, Connected, and Steam 'n' Rails. Sophisticated Storage woven in as the base storage endpoint. Tetra modular gear and river barge logistics woven into mid-game. ~36 quests.

**Mods covered:** Create, Create: New Age, Create: Connected, Steam 'n' Rails, Sophisticated Storage, Sophisticated Backpacks (upgrade quests), Tetra, Tetra Pak, Little Logistics

---

### 2.1 — First Rotation

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **The Kinetic Handbook** | Obtain a Create Handbook from a crafting table | Andesite Alloy × 16 | → 2.1 quests |
| **First Windmill** | Build a Windmill Bearing with 8+ sail blocks attached | Cogwheel × 8 | → Mechanical Press |
| **Water Power** | Build a Waterwheel in a flowing river | Shaft × 4 | → Mechanical Press |
| **Mechanical Press** | Build a Mechanical Press and press any item | Andesite Casing × 4 | → Drill for the Future |
| **Drill for the Future** | Mount a Mechanical Drill on a moving Contraption (chassis + drill together) | Drill reward pack | → Ore Doubling |
| **Ore Doubling** | Process an ore through a Mechanical Crusher (ore → crushed ore) | Crushed ore pack × 16 | → Mixing It Up |
| **Schematic Copy** ★ | Place a Schematicannon and save your first schematic | Schematic scroll × 2 | — |

---

### 2.2 — The Brass Age *(requires Ch 1 "Source Network")*

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **Mixing It Up** | Build a Mechanical Mixer and mix Copper + Zinc into Brass | Brass Ingot × 16 | → Brass Handshake |
| **🔒 Brass Handshake** *(gate)* | Submit 1× Brass Casing — proves you've reached the Brass Age | Precision Mechanism × 3 | → 2.2 + unlocks Ch 1 "Mage Spellbook" |
| **Precision Work** | Craft a Precision Mechanism | Sequenced Gearshift | → 2.3–2.5 quests |
| **Encased Fan** | Build an Encased Fan and use it to wash crushed ores in a water stream | Washing reward pack | — |
| **Funnel & Depot** | Set up an item sorting line using Smart Funnels and Depots | Filter upgrade × 2 | → Deployer |
| **Deployer** | Build a Deployer and automate any right-click action | Deployer reward | → Timer Clock |
| **Kitchen Automation** ★ | Use Create: Central Kitchen to connect a Mechanical Arm to a Farmer's Delight Cooking Pot and automate any meal recipe | Cooked meals × 16 + recipe unlock | — |
| **Timer Clock** | Build a Sequenced Gearshift programmed with a timed sequence | Speed Controller | — |

> 💡 **Gate note:** **Brass Handshake** requires Ch 1's "Source Network." This means you need to touch magic before you can fully advance in tech — and vice versa. Neither branch can be ignored.

---

### 2.3 — Sophisticated Storage

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **First Iron Chest** | Craft a Sophisticated Storage Iron Chest | Storage Chest × 2 | → Filtered Storage |
| **Filtered Storage** | Add a Filter Upgrade to a Sophisticated Storage Chest | Filter Upgrade × 2 | → Compacting Power |
| **Compacting Power** | Add a Compacting Upgrade (automatically compresses items as they arrive) | Compacting Upgrade | → Diamond Chest |
| **Gold Backpack** ★ | Upgrade your Sophisticated Backpack to Gold tier | Gold Backpack materials | → Diamond Backpack |
| **Diamond Backpack** | Upgrade to Diamond-tier Sophisticated Backpack | Backpack upgrade pack | — |
| **Diamond Chest** | Craft a Diamond-tier Sophisticated Storage Chest | Storage upgrade pack | → Create Delivery |
| **Create Delivery** | Set up a Create Mechanical Arm delivering items into a Sophisticated Storage Chest | Sorting reward pack | — |

---

### 2.4 — Create: Connected

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **Better Clutch** | Craft a Clutch (Create: Connected) and use it to pause/resume a kinetic line | Gearbox × 2 | → Redstone Logic |
| **Redstone Logic** | Craft a Redstone Transmitter (Create: Connected) and wire it to control a contraption | Logic upgrade | → Rotated Vault |
| **Rotated Vault** | Craft and place a Rotated Vault (sideways-mounted vault block for tight spaces) | Vault × 2 | → Connected Network |
| **Connected Network** | Build a contraption using at least one Clutch + one Transmitter + one Rotated Vault together | Create: Connected trophy | — |

---

### 2.5 — Steam 'n' Rails

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **All Aboard** | Build a Train Station and a working locomotive | Train reward pack | → Train Schedule |
| **Station Details** ★ | Decorate your Train Station with at least 3 Bells and Whistles elements (platform steps, signal lights, grab rails, ornamental arches) | Station decoration pack (Bells & Whistles sampler) | — |
| **Train Schedule** | Program a train with a scheduled automatic route between 2 stations | Schedule reward | → Rails Across Terralith |
| **Rails Across Terralith** | Lay 200+ rail blocks spanning 2 different Terralith biomes | Rail pack × 64 | → Cargo Train |
| **Cargo Train** | Attach cargo cars to your locomotive and auto-load via Create Funnels | Cargo upgrade | → Ch 5 (contributes) |

---

### 2.6 — Create: New Age

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **First Solar Panel** | Craft and place a Solar Panel (Create: New Age) | Solar Panel × 2 | → Wind Turbine |
| **Wind Turbine** | Build a Wind Turbine in an open outdoor area | Turbine reward | → Electric Motor |
| **Electric Motor** | Craft an Electric Motor (converts FE → SU, bridging Create with other mods) | Motor × 2 | → Nuclear Future |
| **⚛️ Nuclear Future** 🔒 | Build a working Nuclear Reactor (Uranium + steel casing + coolant — read the guide first!) | Reactor blueprint + 1000 XP | → Power Grid |
| **Power Grid** 🔒 *(gate)* | Have 3+ separate power sources (solar, wind, reactor) feeding one kinetic network | Power Grid trophy | → Ch 5 unlocked |

---

### 2.7 — Equipment & Gear (Tetra + Tetra Pak + Tetra's Delight)

Tetra progression sits naturally in the mid-game alongside Create's Brass Age. You're already processing metals — now those same materials become modular weapon and tool components. Tetra's Delight extends the workbench to cover your kitchen knives too, so the same upgrade loop serves both combat and cooking.

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **Modular Workbench** | Craft a Tetra Modular Workbench and a Forge Hammer | Tetra component kit × 1 | → First Upgrade |
| **First Upgrade** | Disassemble any vanilla tool on the Modular Workbench and reassign its head component | Iron component pack × 4 | → Brass Blade |
| **Brass Blade** ★ *(Tetra Pak)* | Craft a modular sword with a Brass hilt component (requires Create Brass — cross-mod integration) | Brass hilt × 2 + speed buff scroll | → Andesite Edge |
| **Andesite Edge** ★ *(Tetra Pak)* | Craft a modular pickaxe with an Andesite Alloy tool head | Andesite head × 2 + efficiency buff scroll | → Veteran Tools |
| **The Chef's Edge** ★ *(Tetra's Delight)* | Take a Farmer's Delight Knife to the Modular Workbench and upgrade any component — replace the handle with a Brass fitting or give the blade an Andesite edge. The same knife you use at the Cutting Board is now a piece of modular gear | Upgraded kitchen knife + Farmer's Delight recipe unlock × 3 | → Veteran Tools |
| **Veteran Tools** | Level any Tetra tool — sword, pickaxe, or upgraded kitchen knife — to max experience through use (maintenance and combat) | Diamond component pack × 2 + 500 XP | → (contributes to Ch 5) |

> 💡 **Tetra Pak tip:** Brass and Andesite Alloy appear in the Modular Workbench's material list automatically as soon as Create's metals are crafted. No config needed. The kinetic bonuses (speed near gearboxes, efficiency near contraptions) are passive and stack with enchantments.

> 💡 **Tetra's Delight tip:** Any Farmer's Delight Knife (Stone, Iron, Gold, Diamond variants) works on the Modular Workbench. The knife retains its cooking function — it still works on a Cutting Board and in cooking recipes. Upgrading it adds combat stats and Tetra material bonuses without removing any kitchen utility. Your best kitchen knife is now also your best early-game weapon.

---

### 2.8 — Water Logistics (Little Logistics)

Your train network covers land. Terralith's rivers handle everything else. These quests introduce the barge system as a parallel logistics layer — cheaper to start than trains, perfect for early exploration runs.

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **First Tugboat** | Craft a Little Logistics Tugboat and place it on a flowing river | Oak planks × 32 + Boat parts | → Loaded Barge |
| **Loaded Barge** | Attach a Cargo Barge to your Tugboat and load it with at least one item stack | Storage chest × 2 | → River Route |
| **River Route** | Set a destination for your Tugboat and have it successfully complete an automated delivery run | Navigation chart + 250 XP | → Two-Way Trade |
| **Two-Way Trade** ★ | Build a round-trip barge route connecting two Terralith biomes (must cross at least one biome boundary) | Barge expansion kit + Waystones teleport scroll | → (contributes to Ch 5) |

> 💡 **Train vs Barge:** Use trains for high-volume inter-base cargo on flat or tunnelled terrain. Use barges for early supply lines, island biomes, coast-hugging routes, and anywhere a rail bridge would be impractical. Both networks can feed the same Sophisticated Storage warehouse — they're additive, not competing.

---

## Chapter 3: The Wide World (Exploration)

All exploration mods. Gated access to The End requires completing both Ch 1 and Ch 2 gate quests. ~30 quests.

**Mods covered:** Terralith, Alex's Mobs, Alex's Caves, Friends & Foes, YUNG's Better Dungeons, YUNG's Better Nether Fortresses, Dungeons and Taverns, Nature's Compass, Enigmatic Legacy, Create: Dynamic Village

---

### 3.1 — Biome Discovery

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **Brave Explorer** | Visit 5 unique Terralith biomes | Compass + Waystone × 4 | → Biome Hunter |
| **Biome Hunter** | Visit 15 unique Terralith biomes | Explorer's Pack | → Rare Biome + Cartographer's Pride |
| **Rare Biome** ★ | Use Nature's Compass to locate and visit a rare Terralith biome (eg. Moonlit Grove, Scarlet Mountains, Skylands) | Rare Biome trophy | — |
| **Cartographer's Pride** ★ | Fully reveal a 2,000×2,000 block area on Xaero's World Map | World Map dye pack | — |
| **Cave Adventurer** | Explore below Y=0 in 3 different Terralith underground systems | Cave kit (torches, food, light) | → 3.3 Dungeons quests |

---

### 3.2 — Creatures

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **Wildlife Watcher** | Observe 10 unique Alex's Mobs creatures (look at them — Jade shows their name) | Animal taming kit | → Tame Something |
| **Tame Something** | Tame any tameable Alex's Mobs creature | Taming treats × 16 | — |
| **Capybara Friend** ★ | Find and pet a Capybara (Alex's Mobs) — just approach it | Relaxation reward | — |
| **Dangerous Waters** | Survive an encounter with a Shark or Giant Squid (Alex's Mobs) | Water breathing kit | — |
| **Flower Cow!** | Find a Moobloom (Friends & Foes) in any flower-rich Terralith biome | Flower seeds × 8 | → Copper Golem + Pinchy |
| **Copper Golem** | Place a Copper Golem (Friends & Foes) and watch it press buttons | Copper Golem kit | — |
| **Pinchy** | Find a Crab (Friends & Foes) on a beach biome | Seafood pack | — |

---

### 3.3 — Dungeons & Structures

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **Your Loot, Not Mine** | Open any Lootr chest (glows differently from normal chests) — your loot roll is guaranteed regardless of who else opened it | Loot bonus pack | → Dungeon Delver |
| **Mechanic's Village** *(Create: Dynamic Village)* | Discover a Create: Dynamic Village settlement — look for the windmill or gear-mounted market stalls | Mechanical Engineer trade voucher + 250 XP | → Dungeon Delver |
| **Dungeon Delver** | Open a chest inside a YUNG's Better Dungeon | Dungeon loot pack | → Catacomb Cleared |
| **Catacomb Cleared** | Clear a YUNG's Catacomb dungeon (defeat all spawners) | Enchanted armor piece | → Spider's Nest |
| **Spider's Nest** | Complete a YUNG's Spider Den dungeon | Spider Eye × 32 | → Charm Seeker |
| **Charm Seeker** *(Enigmatic Legacy)* | Find and equip your first Enigmatic Legacy charm from a dungeon chest | Charm slot unlock scroll + Lucky Charm × 1 | → Tavern Regular |
| **Tavern Regular** | Find a Dungeons and Taverns tavern and walk inside | Free meal reward | → Structure Hunter |
| **Structure Hunter** | Find and visit 5 different Dungeons and Taverns structures | Structure map | → Desert Plunder |
| **Desert Plunder** | Loot a Dungeons and Taverns desert temple chest | Desert loot pack | → Ring of Exploration |
| **Ring of Exploration** ★ *(Enigmatic Legacy)* | Equip a Ring and a Charm simultaneously — passive perks from dungeon loot now stack | Step-assist ring × 1 + 500 XP | — |
| **Into the Deep** | Enter an Alex's Caves underground biome (Toxic Caves, Abyssal Chasm, etc.) | Underground survival kit | — |
| **Into the Hive** *(The Bumblezone)* | Find a bee nest in the wild and activate the Bumblezone portal — enter the bee dimension | Honey bottle × 8 + Honeycomb block × 4 | — |
| **The Deepest Dark** *(Deeper and Darker)* | Find an Ancient City in the Deep Dark and loot a Deeper and Darker expanded loot chest | Deep Dark survival kit + Sculk block pack | — |

---

### 3.4 — The Nether

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **Nether Bound** | Build and enter a Nether Portal | Nether survival kit (fire resist potions, gold armor) | → The Fortress |
| **The Fortress** | Explore a YUNG's Better Nether Fortress | Blaze Rod × 16 | → Blaze Hunter |
| **Blaze Hunter** | Collect 32 Blaze Rods | Fire Resistance splash × 8 | → End Portal Key |
| **Nether Base** ★ | Place a Waystone inside the Nether | Nether Waystone reward | — |
| **Ancient Mining** | Mine 4+ Ancient Debris in the Nether (Y=8–22) | Netherite Scrap × 4 | → End Portal Key |
| **New Horizons** *(Incendium)* | Discover and enter 3 different Incendium Nether biomes (Volcanic Peaks, Ash Barrens, Quartz Flats, or Toxic Heap) | Fire resist potion × 16 + Nether biome map | — |

---

### 3.5 — The End *(hard-gated)*

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **🔒 End Portal Key** ⊕ | Submit: 3× Blaze Powder + 6× Ender Eyes AND complete Ch 1 "Arcane Automation" AND Ch 2 "Power Grid" | End Portal activation guide + End exploration kit | → Beyond the Void |
| **Beyond the Void** | Enter The End | Dragon fight kit (totems, crystals, arrows) | → Dragon Slayer |
| **Dragon Slayer** 🔒 *(gate)* | Defeat the Ender Dragon | Dragon trophy + 2000 XP | → Ch 1.4 + Ch 5 unlocked |
| **Void Walker** ★ | Find and loot an End City | Elytra materials + Shulker rewards | — |
| **Alien Landscape** *(Nullscape)* | Explore the Nullscape-transformed outer End islands — find a Nullscape crystalline spire or obsidian formation | End exploration reward pack + Chorus Fruit × 16 | — |

> 💡 **Gate note:** End Portal Key requires *both* the Ch 1 Arcane Automation gate AND the Ch 2 Power Grid gate. You must advance meaningfully in magic AND tech before The End opens.

---

## Chapter 4: Hearth & Home (Building, Farming & Immersion)

Runs in parallel to all other chapters — no hard gate, playable any time. Covers all building, farming, and immersion mods. ~22 quests.

**Mods covered:** Macaw's Bridges, Macaw's Furniture, Chipped, Farmer's Delight, Straw Golem, AppleSkin (deeper integration), Supplementaries, Sound Physics Remastered

---

### 4.1 — Building & Decoration

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **First Bridge** | Craft and place any Macaw's Bridge piece spanning a gap of 3+ blocks | Bridge materials pack | → Rope Bridge |
| **Rope Bridge** | Build a rope bridge across a Terralith river or ravine | Rope pack | → Railroad Overpass |
| **Railroad Overpass** ★ | Build a Macaw's Bridge over an active Steam 'n' Rails rail line | Bridge trophy | — |
| **Furnished Room** | Place 10 different pieces of Macaw's Furniture in one room | Furniture reward pack | → Kitchen Setup |
| **Kitchen Setup** | Arrange a kitchen using Macaw's Furniture counters + Farmer's Delight prep surfaces | Kitchen trophy | — |
| **The Carpenter's Table** | Craft a Chipped Carpenter's Workbench | Chipped guidebook | → 100 Variants |
| **100 Variants** | Craft 100 total Chipped block variants (any combination) | Variant sampler pack | → Mossy Manor |
| **Mossy Manor** | Build a structure using at least 5 different Chipped aged/mossy variants | Decorator trophy | — |
| **Peaked Roof** *(Macaw's Roofs)* | Add a properly sloped roof to any building using at least 3 different Macaw's Roof pieces | Roof materials pack | — |
| **Seamless Facing** ★ | Use Copycats+ to create a structural panel or step that takes the texture of your build's primary block | Copycats+ sampler pack | → Hidden Machinery |
| **Hidden Machinery** ★ | Cover a Create shaft, bearing, or mechanical component with Copycats+ panels so the mechanism is invisible from the outside | Integration trophy | — |

---

### 4.2 — Farming & Food

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **Garden Starter** | Grow 4 different Farmer's Delight crops (tomatoes, onions, rice, cabbage) | Seed pack | → First Feast |
| **First Feast** | Cook 5 different Farmer's Delight recipes in a Cooking Pot | Saturation pack | → Full Meal Deal |
| **Full Meal Deal** | Eat a Farmer's Delight meal while AppleSkin shows a fully-filled green saturation bar | Saturation trophy | — |
| **Garden Golem** | Craft a Straw Golem (Hay Bale + Carved Pumpkin, right-click to place) | Straw Golem materials | → Automated Garden |
| **Automated Garden** | Place a Straw Golem in a mature crop field — it harvests and deposits in a nearby chest | Golem treat × 8 | → Golem Army |
| **Golem Army** ★ | Have 3 Straw Golems working 3 separate crop fields simultaneously | Farming trophy | → Create + Golem Combo |
| **The Kitchen Counter** *(Cooking for Blockheads)* | Build a Cooking for Blockheads kitchen with at least a Cooking Table, Sink, and one Tool Rack — the Cooking Table will show only recipes you can make right now | Kitchen counter trophy + Farmer's Delight cookbook | — |
| **Create + Golem Combo** ★ | Connect a Create Mechanical Arm to collect output from the Straw Golem's deposit chest | Integration reward | — |

---

### 4.3 — World Details & Immersion

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **Notice Board** | Place a Supplementaries Notice Board and post a note on it | Message kit | → Rope Trick |
| **Rope Trick** | Use Supplementaries Rope to descend a cliff safely | Rope × 32 | → Jar Collection |
| **Jar Collection** | Fill 5 different Supplementaries Jars with items or small creatures | Jar set | — |
| **Sticky Bomb Shenanigans** ★ | Use a Supplementaries Sticky Bomb (purely for fun — supervised chaos) | Sticky Bomb × 4 | — |
| **10 Supplementary Items** | Craft 10 different unique Supplementaries items total | Supplementaries reward pack | — |
| **Sound Check** ★ | Enter a cave or enclosed room — listen to Sound Physics Remastered's reverb | Sound trophy (cosmetic) | → Acoustic Cave |
| **Acoustic Cave** | Find a large cave chamber where the echo is most dramatic | Acoustic trophy (cosmetic) | — |

---

## Chapter 5: Arcane Synthesis (Convergence)

The endgame. Unlocked only after completing the Ch 1 "Arcane Automation" gate, the Ch 2 "Power Grid" gate, and Ch 3 "Dragon Slayer." This is where all three pillars converge through Ars Creo. ~12 quests.

**Mods covered:** Ars Creo (all features)

**Unlock requirements (ALL required):**
- ⊕ Ch 1: "Arcane Automation" completed
- ⊕ Ch 2: "Power Grid" completed
- ⊕ Ch 3: "Dragon Slayer" completed

| Quest | Task | Primary Reward | Cross-Mod Utility | Biome / Drop Mitigation | Unlocks |
|-------|------|---------------|-------------------|------------------------|---------|
| **Two Worlds Collide** | Craft 1× Ars Creo Spell Turret | 2× Source Relay | 1× Brass Funnel | 8× Source Gems | → all Ch 5 |
| **Starbuncle Wheel** | Build a Starbuncle Wheel with a Starbuncle familiar powering a Create shaft | 1× Speed Controller | 4× Gold Casing | 16× Source Berry Seeds | → Arcane Saw |
| **Arcane Saw** | Craft and use an Ars Creo Arcane Saw (powered jointly by Source + Stress Units) | 4× Mechanical Saw | 2× Source Jars | 8× Archwood Logs *(mixed types)* | — |
| **Turret Contraption** | Mount a Spell Turret on a moving Create contraption | 1× Sequenced Gearshift | 4× Brass Casing | 4× Corundum Clusters *(Alex's Caves)* | → Arcane Locomotive |
| **Arcane Locomotive** | Mount a Spell Turret on a moving Steam 'n' Rails train (fires while in motion) | 2× Train Stations | 1× Warp Stone | 64× Track Blocks | → Spell Factory |
| **Timer Turret** | Use a Create clock signal to trigger a Spell Turret on a timer | 1× Smart Chute | 2× Redstone Transmitters | 1× Pulse Launcher Glyph | → Spell Factory |
| **Spell Factory** | Build a Create contraption moving items through 2+ Ars Nouveau Ritual Pedestals | 2× Ritual Pedestals | 4× Smart Funnels | 4× Flashpine Pods | → The Grand Synthesis |
| **The Grand Synthesis** | Build a single structure incorporating the three core pillars: magic blocks + Create mechanisms + exploration materials + Farmer's Delight cooking station | 1× Sophisticated Storage Netherite Jet Casing | 1× Electric Motor | 1× Dragon Egg *(multiplayer duplicate, if needed)* | → Frontier Complete |
| **Frontier Complete** | Complete all quests in Chapters 0–5 (Ch 6 colony quests are optional bonus) | 1× Master Spellbook Blank | 1× Creative Motor *(configured for low SU limits)* | 1× "Frontier Explorer" Cosmetic Banner | — |

---

### Reward Design Breakdown

The reward structure for Chapter 5 follows three principles that stack on every quest — no single reward should let a player skip meaningful content, but every reward should make the remaining content more enjoyable.

#### The Anti-Grind Column (Primary Reward)

Every primary reward is a component you would craft anyway for the system you just built. Completing **Arcane Locomotive** gives you two extra Train Stations — not because you couldn't make them yourself, but because you just proved you understand trains and you should be building a network, not grinding iron for another twenty minutes before you can connect your base to your brother's. The reward funds the obvious next step.

| Quest | What it funds |
|-------|--------------|
| Two Worlds Collide (Source Relay) | Expand your Source network immediately |
| Starbuncle Wheel (Speed Controller) | Tune the kinetic line the Wheel is already connected to |
| Arcane Saw (Mechanical Saw × 4) | Build the sawmill operation the Arcane Saw now anchors |
| Turret Contraption (Sequenced Gearshift) | Add timed automation to the contraption you just built |
| Timer Turret (Smart Chute) | Route the Turret's output without an extra trip to the crafting table |
| Spell Factory (Ritual Pedestals) | Expand the ritual loop you just automated |

#### The Cross-Mod Synergy Column

Doing Ars Nouveau work earns Create components, and doing Create work earns Ars Nouveau components. The economy is intentional: it keeps both mods in parallel rather than letting players tunnel into one and neglect the other at the exact moment Chapter 5 demands they work together.

- **Brass Funnel** from a pure magic quest (Two Worlds Collide) — a gentle nudge that Ars Creo runs on both systems
- **Brass Casing** from a Create contraption quest (Turret Contraption) — the reminder that the magic turret needs a very Create-flavoured chassis
- **Warp Stone** from the Locomotive quest — trains and Waystones are both fast-travel systems; having both open encourages players to think about which tool fits each trip

#### The Biome Mitigation Column

Some materials in the late-game convergence quests come from locations players may not have reached yet, especially on a server where one player focused on magic and another on tech.

| Drop | Sourced from | Why it matters as a reward |
|------|-------------|---------------------------|
| **Corundum Clusters** | Alex's Caves — Abyssal Chasm / Toxic Cave | Late-game Ars Creo recipes use cave-specific minerals; if a player has never found these biomes, the Turret Contraption reward gives them a sample without a mandatory 3-hour underground expedition |
| **Flashpine Pods** | Terralith — specific forest biomes | Required for some late-game rituals; rare enough that farming them is tedious; given here in a small stack to unlock one recipe without grinding |
| **Archwood Logs (mixed)** | Magical Terralith biomes — 4 variants | The Arcane Saw recipe and its upgrades use multiple Archwood types; players who built their base far from magical biomes often have only one variant |
| **Dragon Egg (multiplayer)** | The End — one per world | On a shared server there is exactly one Dragon Egg and players often argue over it; the Grand Synthesis reward provides a quest-granted duplicate flagged clearly as a multiplayer utility item, not a creative shortcut |
| **Source Berry Seeds** | Magical biomes / mob drops | Source Berry Farms are the baseline passive mana income; handing out 16 seeds after the Starbuncle Wheel means players can build the farm while the Wheel provides the *active* Source, which is the intended dual-income setup |

#### The Final Two Rewards

**Master Spellbook Blank** — not a completed spellbook, just a blank. The player still designs and fills it. It signals that the magic system has more space than they've used, and gives them the slot to experiment with a late-game spell loadout without the grind of gathering the tier-4 crafting components.

**Creative Motor (low SU limit)** — this is the one reward that needs careful config. Set the Creative Motor's maximum Stress Unit output to a modest value (recommend 256–512 SU) before distributing it. At that cap it is useful for powering a single decorative contraption or a slow automatic farm without acting as an infinite power source that bypasses the nuclear reactor quest chain. Document the SU cap clearly in the reward chest's lore text so players understand the constraint.

---

## [Bonus] Multiplayer & Community

Optional quests for families playing together. No gameplay gates. Works at any point in the playthrough.

**Mods covered:** Essential, Xaero's Minimap/World Map (sharing), Chat Heads, Waystones (team network)

| Quest | Task | Reward | Depends On |
|-------|------|--------|------------|
| **Team Player** | Connect to another player's world via Essential | Shared waystone set | — |
| **Map Together** | Share a Xaero's Minimap waypoint with another player on the server | Waypoint pack | Team Player |
| **All in the Family** | Have all family members online at the same time | Family trophy | Team Player |
| **Chat Faces** ★ | Notice Chat Heads showing player skin faces in chat (just look — it's charming) | Cosmetic reward | Team Player |
| **Waystones Everywhere** | As a team, place a total of 10 named Waystones across the world | Fast Travel trophy | Map Together |
| **Division of Labour** ★ | Have one player reach Ch 1 "Mage Spellbook" and a different player reach Ch 2 "Brass Handshake" | Team Specialisation trophy | Team Player |
| **Shared Harvest** | Have one player's Straw Golem deliver crops that another player cooks | Cooperative trophy | Team Player |

---

## Chapter 6: The Colony (MineColonies) — ⚠️ OPTIONAL PILLAR

> **This chapter is entirely optional.** Players who prefer magic, automation, or exploration can skip it with no impact on Chapters 0–5 or the Arcane Synthesis endgame. Chapter 6 is designed for the family members who love city-building and population management — it runs in parallel with all other chapters and can be started as early as mid-game.

The server has **one shared family colony**. Quest progress is shared — anyone completing a colony quest advances it for everyone. Different family members can specialise: one manages the town layout and profession assignments, another handles supply logistics via Create, another focuses on guard defence and raids.

See §4.10 for colony founding instructions and server config.

**Mods covered:** MineColonies, MineColonies Importer, Stylecolonies, MineColonies: War 'N Taxes

**Integration quests** (marked ★) require at least basic progress in other chapters:
- ★ Create quests need Ch 2.2 (Brass Age) complete
- ★ Train quests need Ch 2.5 (Steam 'n' Rails) started
- ★ Ars Nouveau quests need Ch 1.2 (Source & Familiars) complete
- ★ Kitchen quests need Ch 2.2 "Kitchen Automation" and Ch 4.2 (Farming) started

---

### 6.1 — First Settlement

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **Supply Camp** | Place a MineColonies Supply Ship or Supply Camp to claim the family colony territory | Colony starter kit (wood × 64, stone × 64, food × 16) | → Our Town's Style |
| **Our Town's Style** *(Stylecolonies)* | Open the Building GUI Style selector and choose an architectural style for the town — the whole family votes | Style unlock scroll + 250 XP | → The Builder Cometh |
| **The Builder Cometh** | Complete your Builder's Hut (Tier 1) and issue your first build work order | Lumber pack × 32 + Builder's tool | → Raise the Walls |
| **Raise the Walls** | Build your first Colonist Hut and attract a new citizen | Colonist bed × 2 | → Town Hall |
| **Town Hall** | Upgrade your Town Hall to Tier 2 | Town management guide + 250 XP | → The Research Tree |
| **The Research Tree** | Open the University (if built) or unlock your first completed research | Research scroll + 500 XP | → 6.2 quests |

---

### 6.2 — A Town Takes Shape

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **The Warehouse** | Build a Warehouse (Tier 1) and stock it with 3 different material types | Warehouse starter chest (basic materials) | → First Profession |
| **The Courier's Run** | Build a Courier's Hut and assign a Courier to connect your buildings via delivery routes | Speed potion × 4 | → First Profession |
| **First Profession** | Attract your first profession villager (Farmer, Lumberjack, or Miner) | Profession tool pack | → Equipping the Workforce |
| **Equipping the Workforce** *(Tetra + MineColonies)* | Deliver 4 modular iron tool components to the colony Warehouse using your Tetra Modular Workbench — blade heads, tool heads, or hilt components all count | Tetra component kit × 2 + Iron ingot × 16 | → Well-Fed Colony |
| **Well-Fed Colony** | Have a Farmer colonist automatically harvest and deliver food to the Warehouse | Bread × 32 + Farmer's Delight cookbook | → Growing Pains |
| **Growing Pains** | Reach 10 active colonists in your colony | 10× Colonist beds + 500 XP | → 6.3 integration |

> ⚒️ **Why the Tetra Workbench matters here:** MineColonies workers break their tools constantly. When a Miner hits Tier 3, they stop working entirely until they receive an Iron Pickaxe or better. Instead of crafting hundreds of throwaway vanilla iron tools, use your Tetra Modular Workbench to mass-produce durable modular iron components — and swap only the broken head rather than discarding the whole tool. If you have Create metals in stock, Brass and Andesite Alloy components last significantly longer than plain iron. This single Tetra habit keeps the entire colony running without interruption.

---

### 6.3 — The Create Connection *(★ cross-mod integration)*

The MineColonies Importer transforms your colony from a self-contained village into a living node in your factory network. Its specialised inventory blocks expose the colony warehouse request queue to Create — Mechanical Arms and Funnels read what citizens need and fulfil it automatically. Complete these quests to wire your town into the automation systems built in Chapter 2.

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **Factory Handshake** ★ | Install MineColonies Importer, place an Importer block adjacent to your colony Warehouse, and connect it to any Create item line | Importer block × 2 + 1× Brass Funnel | → Automated Delivery |
| **Automated Delivery** ★ | Have a Create Mechanical Arm or Funnel deliver iron, wood, or food directly into your colony Warehouse automatically | Mechanical Arm × 2 + Smart Chute × 2 | → Train Town |
| **Train Town** ★ | Build a Steam 'n' Rails station adjacent to your colony and run a supply train that delivers materials to your Warehouse | Train station decorations (Bells & Whistles pack) + Cargo car | → Colony Kitchen |
| **Colony Kitchen** ★ | Use Create: Central Kitchen automation to produce and deliver cooked Farmer's Delight meals to your colony food supply | Cooking Pot × 2 + 16× Stew | → Clockwork Colony |
| **Clockwork Colony** ★ | Have 3 or more colony professions simultaneously supplied by automated Create logistics (no manual restocking for 10 minutes) | Colony-Create integration trophy + 1000 XP | → Ch 6.4 + contributes to Grand Synthesis |

---

### 6.4 — Specialists

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **The Lumberjack** | Build a Lumberjack's Hut and designate a forested area | Axe upgrade pack | → Arcane Forestry |
| **Arcane Forestry** ★ *(Ars Nouveau + MineColonies)* | Position the Lumberjack's Hut directly adjacent to an Ars Nouveau Whirlisprig shrine or an automated tree farm — the Whirlisprig will continuously regenerate the trees your Lumberjack harvests, creating an infinite sustainable wood supply | Whirlisprig charm × 2 + Archwood Sapling × 8 | → The Blacksmith |
| **The Blacksmith** | Build a Blacksmith's Workshop and have a Blacksmith craft iron tools for citizens | Iron tool set × 3 | → The Guard Tower |
| **The Guard Tower** | Build a Guard Tower (Tier 1) and assign your first Guard | Guard starter kit (iron armour + sword) | → Arcane Armory |
| **Arcane Armory** ★ | Equip your colony guards with Ars Nouveau enchanted weapons using your ritual enchanting setup | Enchanted Sword (Ars-enchanted) × 2 | → The Fletcher |
| **The Fletcher** | Build a Fletcher's Hut for automated arrow and bow production | Arrow × 64 + Bow | → 6.5 defence |

> 🌳 **Why Arcane Forestry matters:** Town Hall and citizen housing upgrades require thousands of wood planks. An unchecked Lumberjack will completely clear-cut every Terralith forest within reach — erasing the beautiful landscapes you explored to find. An Ars Nouveau Whirlisprig placed near the tree farm grows new saplings continuously, closing the loop: your Magic pillar keeps the Colony pillar in timber indefinitely without touching the natural biomes beyond the farm boundary.

---

### 6.5 — Colony Defence & Economy

War 'N Taxes introduces an economy layer: tax income from citizen buildings, wandering traders who visit the colony market, and structured raid events that are harder than default raids but drop better loot. The quests below weave it in naturally.

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **The Barracks** | Build a Barracks (Tier 1) | Guard armour pack | → Tax Collector |
| **Tax Collector** *(War 'N Taxes)* | Build a Tax Collector's Hut — colonists now generate passive coin income from their buildings | Tax income: gold coin × 32 + 250 XP | → First Raid Survived |
| **First Raid Survived** *(War 'N Taxes)* | Successfully repel a War 'N Taxes structured raid event (harder than default — prepare your guards and stockpile arrows) | Raid trophy + War chest loot crate | → The Knight Order |
| **The Wandering Market** *(War 'N Taxes)* | Have a War 'N Taxes wandering trader visit your colony market and complete a trade | Rare trader item + 500 XP | → Town Event |
| **Town Event** *(War 'N Taxes)* | Participate in a structured colony town event (trade fair or diplomatic encounter) — your whole family joins | Event reward crate + 750 XP | → Colony Wall |
| **The Knight Order** | Upgrade your guards to Knight class with full iron armour equipped | Knight banner + 750 XP | → Colony Wall |
| **Colony Wall** | Build a complete perimeter wall or fence enclosing your colony core buildings | Stone brick pack × 128 | → 6.6 prosperity |

---

### 6.6 — The Prosperous Colony

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **Thriving City** | Reach 25 active colonists in your colony | Population milestone trophy + 1000 XP | → Full Integration |
| **Full Integration** ★ | Have all four pillars actively supporting the colony simultaneously: Ars Nouveau enchanted gear on guards (Magic), Create logistics feeding the Warehouse (Technology), a Steam 'n' Rails supply train running (Exploration route), and Farmer's Delight meals in the food supply — PLUS an active War 'N Taxes economy generating coin income | Four-Pillar Colony trophy + 2000 XP + "Colony Architect" Cosmetic Banner | → Colony Complete |
| **Colony Complete** | Complete all quests in Chapter 6, have a fully operational town with a chosen Stylecolonies architectural style, Warehouse, 5+ active professions, active guard force, Create supply chain, and an active War 'N Taxes economy | 1× Netherite Helmet (enchanted by colonists) + 1× "Master Architect" title banner | — |

> 💡 **Cooperative tip:** Different family members can own different parts of the colony's operation. Assign roles: the "Mayor" manages building layout and citizen assignments; the "Engineer" maintains the Create supply line and barge routes; the "Commander" oversees guard training and raid defence; the "Treasurer" monitors War 'N Taxes coin income and town events. The colony becomes a shared project where everyone's pillar expertise feeds the town.

---

## Chapter 7: The Twilight Adventure — ⚠️ OPTIONAL ENDGAME

> **This chapter is entirely optional.** It is recommended only after completing Chapter 5 (Arcane Synthesis). Do not build your main base inside the Twilight Forest dimension, and do not let core pack progression depend on Twilight Forest items. Pin your Twilight Forest mod version before starting — never update mid-world. Keep a world backup before every boss fight. See §4.11 for full safety configuration.
>
> ⚠️ **Boss fights MUST be completed IN ORDER.** The Twilight Forest progression system enforces this — attempting bosses out of sequence results in a nearly invincible boss. The required order is: **Naga → Lich → Minoshroom → Hydra → Ur-Ghast → Snow Queen.** If the sequence breaks, an operator can run `/tfprogress reset @a` to reset everyone's progress.

**Mods covered:** Twilight Forest (#65)

**This chapter is standalone** — it does not require or reward items from other chapters, and no other chapter gates on Twilight Forest content. It is pure adventure, designed as a family group experience.

---

### 7.1 — Through the Portal

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **The Ritual Portal** | Build the Twilight Forest portal: arrange 12 flowers and plants around a 2×2 water source, then throw a Diamond into the water to activate it | Portal Bookmark × 4 + Twilight Forest guidebook | → First Steps in Twilight |
| **First Steps in Twilight** | Enter the Twilight Forest dimension through the completed portal | Mazestone Chisel + 200 XP | → Hollow Hill, → The Naga |
| **Hollow Hill** | Enter a Hollow Hill (the glowing buried dungeons scattered across the Forest) and collect the loot chest inside | Bighorn Sheep Trophy + 250 XP | — |

---

### 7.2 — Boss Progression

> ⚠️ **Do not skip ahead.** Each boss you defeat unlocks the next. Bosses fought out of order become unnaturally resistant. Plan these as family group events — bring everyone along. The difficulty scales well for a group of 2–4 players.

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **The Naga** *(1st)* | Defeat the Naga — a giant serpent boss found in Naga Courtyards in Forest biomes | Naga Trophy + Naga Scale Armor × 4 | → The Lich |
| **The Lich** *(2nd)* | Defeat the Lich — a skeletal sorcerer found in tall Lich Towers; has multiple phases and summons undead | Lich Trophy + Transformation Powder + Scepter of Twilight | → The Minoshroom |
| **The Minoshroom** *(3rd)* | Defeat the Minoshroom — a Minotaur mushroom-warrior found at the heart of underground Labyrinths | Minoshroom Trophy + Meef Steak × 8 + Maze Map Focus | → The Hydra |
| **The Hydra** *(4th)* | Defeat the Hydra — a multi-headed regenerating serpent beast found in Hydra Lairs in Swampy biomes; sever all heads to win | Hydra Trophy + Fiery Blood × 4 + Fiery Ingot recipe | → The Ur-Ghast |
| **The Ur-Ghast** *(5th)* | Defeat the Ur-Ghast — a colossal flying Ghast boss found atop the Dark Tower in the Dark Forest; tear ducts drop key items | Ur-Ghast Trophy + Fiery Tears + Tower Key | → The Snow Queen |
| **The Snow Queen** *(6th — Final Boss)* | Defeat the Snow Queen — found in the Aurora Palace in Glacier biomes at the edge of the map; the final boss of the main progression | Snow Queen Trophy + Ice Crystal Staff + 1000 XP | → Twilight Explorer |

---

### 7.3 — Twilight Complete

| Quest | Task | Reward | Unlocks |
|-------|------|--------|---------|
| **Twilight Explorer** | Display all 6 boss trophies together in a dedicated Trophy Room (build it in your main base or in the Twilight Forest — your choice) | Trophy Room Plaque (decorative) + 500 XP + "Twilight Champion" title banner | → The Final Plateau |
| **The Final Plateau** | Reach the Final Plateau — the mountaintop biome at the edge of the Twilight Forest — and place a Waystone there for the whole family | Twilight Waystone Marker + 250 XP + "Arcane Frontiers Explorer" cosmetic flag | — |

> 💡 **Cooperative tip:** Plan each boss fight as a shared family event. The Lich, Hydra, and Ur-Ghast especially benefit from coordination: one player as primary damage dealer, another running Ars Nouveau buffing and healing spells, a third managing crafted gear and consumables. The boss trophies are permanent — display them proudly. That Trophy Room is a chronicle of what you built together.

---

## Quest Setup Reference

### Mod Coverage Checklist

Every content mod in the pack is touched by at least one quest:

| Mod | Chapter(s) |
|-----|-----------|
| Sodium / ImmediatelyFast / FerriteCore / Entity Culling / ModernFix / Clumps | Performance-only — no quests needed; they work invisibly |
| Inventory Profiles Next | UI-only — no quest needed; works automatically |
| Carry On | Ch 0 "Pack It Up" (pick up and move a block) |
| JEI | Ch 0 "Know Your Recipes" |
| Jade | Ch 0 "What's That Block?" |
| Xaero's Minimap | Ch 0 "Your First Map" |
| Xaero's World Map | Ch 0 "The World in Your Hand"; Ch 3 "Cartographer's Pride" |
| Waystones | Ch 0 "Mark Your Home", "First Waypoint"; Bonus "Waystones Everywhere" |
| Nature's Compass | Ch 0 "Compass of Biomes"; Ch 3 "Rare Biome" |
| Chat Heads | Bonus "Chat Faces" |
| Patchouli | Ch 1 "The Worn Notebook" (powers the guidebook) |
| Sophisticated Backpacks | Ch 0 "Backpack Time"; Ch 2 "Gold Backpack", "Diamond Backpack" |
| Sophisticated Storage | Ch 2 "First Iron Chest" through "Create Delivery" |
| Ars Nouveau | Ch 1 (entire chapter) |
| Ars Elemental | Ch 1.2 "Elemental Focus" |
| Ars Additions | Ch 1.2 "Arcane Wardrobe" |
| Enchantment Descriptions | Ch 0 "Read the Fine Print" |
| Ars Creo | Ch 5 (entire chapter — 12 quests) |
| Create | Ch 2 (2.1–2.5) |
| Create: New Age | Ch 2 (2.6) |
| Create: Connected | Ch 2 (2.4) |
| Steam 'n' Rails | Ch 2 (2.5) |
| Bells and Whistles | Ch 2.5 "Station Details" |
| Create: Central Kitchen | Ch 2.2 "Kitchen Automation" |
| Tetra | Ch 2.7 "Modular Workbench", "First Upgrade", "Veteran Tools" |
| Tetra Pak | Ch 2.7 "Brass Blade", "Andesite Edge" |
| Tetra's Delight | Ch 2.7 "The Chef's Edge" |
| Little Logistics | Ch 2.8 "First Tugboat", "Loaded Barge", "River Route", "Two-Way Trade" |
| Terralith | Ch 0 "Brave New World"; Ch 3 (3.1) |
| Alex's Mobs | Ch 3 (3.2) |
| Alex's Caves | Ch 3 "Into the Deep" |
| Friends & Foes | Ch 3 "Flower Cow!", "Copper Golem", "Pinchy" |
| YUNG's Better Dungeons | Ch 3 (3.3) |
| YUNG's Better Nether Fortresses | Ch 3 "The Fortress" |
| Dungeons and Taverns | Ch 3 "Tavern Regular", "Structure Hunter", "Desert Plunder" |
| Lootr | Ch 3 "Your Loot, Not Mine" |
| Enigmatic Legacy | Ch 3.3 "Charm Seeker", "Ring of Exploration" |
| Create: Dynamic Village | Ch 3.3 "Mechanic's Village" |
| Comforts | Ch 0 "Sleeping Bag", "Night on the Road" |
| Macaw's Bridges | Ch 4 (4.1) |
| Macaw's Furniture | Ch 4 (4.1) |
| Macaw's Roofs | Ch 4.1 "Peaked Roof" |
| Chipped | Ch 4 (4.1) |
| Copycats+ | Ch 4.1 "Seamless Facing", "Hidden Machinery" |
| Farmer's Delight | Ch 0 "Survival Cooking"; Ch 4 (4.2) |
| Cooking for Blockheads | Ch 4.2 "The Kitchen Counter" |
| The Bumblezone | Ch 3 "Into the Hive" |
| Straw Golem | Ch 4 (4.2) |
| AppleSkin | Ch 0 "See What You Eat"; Ch 4 "Full Meal Deal" |
| Supplementaries | Ch 4 (4.3) |
| Sound Physics Remastered | Ch 4 "Sound Check", "Acoustic Cave" |
| Essential | Bonus chapter |
| MineColonies | Ch 6 (entire chapter — 22 quests) |
| MineColonies Importer | Ch 6.3 "Factory Handshake", "Automated Delivery", "Train Town", "Colony Kitchen", "Clockwork Colony" |
| Stylecolonies | Ch 6.1 (visual style selection guidance), Ch 6.6 "Full Integration" |
| MineColonies: War 'N Taxes | Ch 6.5 "First Raid Survived", Ch 6.6 "Full Integration" |
| Deeper and Darker | Ch 3.3 "The Deepest Dark" |
| Incendium | Ch 3.4 "New Horizons" |
| Nullscape | Ch 3.5 "Alien Landscape" |
| Twilight Forest | Ch 7 (entire chapter — 11 quests) |
| FTB Quests | Powers all of the above |

---

### Setting Up Quest Files in FTB Quests

Quest data lives at:
```
.minecraft/saves/[WorldName]/ftbquests/
```

**To create quests in-game:**
1. Press `P` → click the **pencil (edit) icon** in the top-right corner
2. Right-click the chapter background to add a new quest node
3. Each quest needs:
   - **Title** and description
   - One or more **tasks**: item submission, advancement unlock, kill count, or location visit
   - Optional **rewards**: items, XP, loot tables
4. Chain quests by dragging a dependency arrow from one node to another
5. For gate quests (like Brass Handshake), open the quest settings and add **AND dependencies** from multiple chapters

**Recommended gate logic (copy into FTB Quests dependencies tab):**

```
Ch 1 "Mage Spellbook":
  - Requires: Ch 2 "Brass Handshake" (AND)
  - Requires: Ch 1 "Source Network" (already in chain)

Ch 2 "Brass Handshake":
  - Requires: Ch 1 "Source Network" (AND)
  - Requires: Ch 2 "Mixing It Up" (already in chain)

Ch 3 "End Portal Key":
  - Requires: Ch 1 "Arcane Automation" (AND)
  - Requires: Ch 2 "Power Grid" (AND)
  - Requires: Ch 3 "Blaze Hunter" + "Ancient Mining" (already in chain)

Ch 5 unlocks:
  - Requires: Ch 1 "Arcane Automation" (AND)
  - Requires: Ch 2 "Power Grid" (AND)
  - Requires: Ch 3 "Dragon Slayer" (AND)
```

**To share quests across server players:**
- Quest data is stored server-side automatically in multiplayer
- All players see the same quest tree; team mode shares completion
- Enable team mode: `/ftbquests` → Team Settings → Enable Team Progress

**Finding community quest templates:**
- Search GitHub for `ftbquests create 1.21` or `ftbquests ars-nouveau` for ready-made chapter templates to import as a starting point

---

## Vanilla Advancement Integration

FTB Quests supports vanilla Minecraft advancements as first-class quest task triggers. In the quest editor, set any quest's task type to **"Advancement"** and enter the advancement ID. The quest auto-completes the moment a player earns it — no manual submission needed.

This section maps every significant vanilla advancement to the chapter where it naturally occurs. Use it to enrich your FTB Quests chapters with base-game milestones so players get a unified progression tracker covering both mod content and vanilla.

**How to add an advancement task in FTB Quests:**
1. In edit mode, right-click a quest → **Edit** → **Add Task** → choose **"Advancement"**
2. Paste the advancement ID (e.g., `minecraft:story/mine_stone`)
3. The task description auto-fills from the advancement's display name

---

### Chapter 0 Advancements — Survival Foundations

Earned during the first few days alongside the tutorial quests. All from the **Minecraft** and **Husbandry** tabs.

| Advancement | ID | Trigger | Pairs with quest |
|-------------|-----|---------|-----------------|
| **Stone Age** | `minecraft:story/mine_stone` | Mine any stone | Welcome to the Frontier |
| **Getting an Upgrade** | `minecraft:story/upgrade_tools` | Craft a wooden or stone pickaxe | Know Your Recipes |
| **Acquire Hardware** | `minecraft:story/smelt_iron` | Smelt iron ore | Iron Upgrade |
| **Suit Up** | `minecraft:story/obtain_armor` | Get any piece of iron armor | Iron Upgrade |
| **Hot Stuff** | `minecraft:story/lava_bucket` | Fill a bucket with lava | Cave Adventurer |
| **Isn't It Iron Pick** | `minecraft:story/iron_tools` | Craft an iron pickaxe | Acquire Hardware |
| **Husbandry** | `minecraft:husbandry/root` | Eat any food | See What You Eat |
| **A Seedy Place** *(start)* | `minecraft:husbandry/plant_seed` | Plant any crop in farmland | Survival Cooking |
| **Best Friends Forever** | `minecraft:husbandry/tame_an_animal` | Tame any animal (dog, cat, horse, etc.) | Brave New World |
| **Sweet Dreams** | `minecraft:adventure/sleep_in_bed` | Sleep through the night | Home Sweet Home |
| **What a Deal!** | `minecraft:adventure/trade` | Trade with any villager | Mark Your Home (near villages) |

---

### Chapter 1 Advancements — The Arcane Path

Earned while progressing through Ars Nouveau tiers. Most come from the **Minecraft** tab.

| Advancement | ID | Trigger | Pairs with quest |
|-------------|-----|---------|-----------------|
| **Diamonds!** | `minecraft:story/mine_diamond` | Mine diamond ore | Three Glyphs Deep (diamonds for Tier 2 tools) |
| **Cover Me With Diamonds** | `minecraft:story/shiny_gear` | Get a full set of diamond armor | Mage Spellbook gate |
| **Enchanter** | `minecraft:story/enchant_item` | Use an enchanting table | The Ritual Circle (enchanting via Ars Nouveau) |
| **Ice Bucket Challenge** | `minecraft:story/form_obsidian` | Create obsidian (lava + water) | Hot Stuff |
| **Not Today, Thank You** | `minecraft:story/deflect_arrow` | Block an arrow with a shield | A Touch of Magic (learn combat spells) |
| **A Furious Cocktail** | `minecraft:nether/all_effects` | Have every status effect simultaneously | Wixie's Kitchen (brew many potions) |
| **Postmortal** | `minecraft:adventure/totem_of_undying` | Use a Totem of Undying | Archmage Spellbook (late magic) |
| **Ol' Betsy** | `minecraft:adventure/ol_betsy` | Shoot a crossbow | A Touch of Magic (ranged spell alternative) |

---

### Chapter 2 Advancements — Gears & Steam

Earned during Create progression. Heavy focus on the **Minecraft** tab and deep-mining milestones.

| Advancement | ID | Trigger | Pairs with quest |
|-------------|-----|---------|-----------------|
| **Getting Wood** *(if missed)* | `minecraft:story/root` | Have any log | The Kinetic Handbook |
| **Caves & Cliffs** | `minecraft:adventure/fall_from_world_height` | Fall from build height (Y=320) to the floor | Drill for the Future (deep mining) |
| **Those Were the Days** | `minecraft:nether/find_bastion` | Enter a Bastion Remnant | Rails Across Terralith (once train reaches Nether) |
| **Subspace Bubble** | `minecraft:nether/use_portal` | Use Nether to shortcut Overworld distance | Train Schedule (rail network spans Nether too) |
| **Serious Dedication** | `minecraft:husbandry/obtain_netherite_hoe` | Get a Netherite Hoe | Power Grid (full Netherite age) |
| **Cover Me in Debris** | `minecraft:nether/netherite_armor` | Wear full Netherite armor | Nuclear Future (endgame milestone) |
| **Sticky Situation** | `minecraft:adventure/honey_block_slide` | Slide down a Honey Block | Create: Connected (contraption building) |
| **Surge Protector** | `minecraft:adventure/lightning_rod_with_villager_no_fire` | Redirect lightning away from a villager | Connected Network (redstone contraptions) |

---

### Chapter 3 Advancements — The Wide World

The richest vanilla chapter for advancements. Covers **Adventure**, **Nether**, and **The End** tabs almost entirely.

#### Overworld & Adventure

| Advancement | ID | Trigger | Pairs with quest |
|-------------|-----|---------|-----------------|
| **Monster Hunter** | `minecraft:adventure/kill_a_mob` | Kill any hostile mob | Wildlife Watcher |
| **Voluntary Exile** | `minecraft:adventure/voluntary_exile` | Kill a Raid Captain | Dungeon Delver |
| **Hero of the Village** | `minecraft:adventure/hero_of_the_village` | Successfully defend a village raid | Structure Hunter (Dungeons and Taverns villages) |
| **Adventuring Time** | `minecraft:adventure/adventuring_time` | Discover all 50+ Overworld biomes | Biome Hunter (Terralith has 95+ — this fires early) |
| **Take Aim** | `minecraft:adventure/sniper_duel` | Headshot a Skeleton at 50+ blocks | Spider's Nest |
| **Two Birds, One Arrow** | `minecraft:adventure/two_birds_one_arrow` | Kill two Phantoms with one arrow | Nether Bound (survival prep) |
| **Very Very Frightening** | `minecraft:adventure/very_very_frightening` | Strike a Villager with lightning via Channeling | Dangerous Waters (storm survival) |
| **Is It a Bird?** | `minecraft:adventure/spyglass_at_parrot` | Look at a Parrot with a spyglass | Capybara Friend |
| **Monsters Hunted** | `minecraft:adventure/kill_all_mobs` | Kill every hostile mob type | Ch 5 prerequisite (see below) |

#### Nether

| Advancement | ID | Trigger | Pairs with quest |
|-------------|-----|---------|-----------------|
| **Nether** | `minecraft:nether/root` | Enter the Nether | Nether Bound |
| **A Terrible Fortress** | `minecraft:nether/find_fortress` | Enter a Nether Fortress | The Fortress |
| **Those Were the Days** | `minecraft:nether/find_bastion` | Enter a Bastion Remnant | Structure Hunter (Bastion is a D&T adjacent structure) |
| **Hidden in the Depths** | `minecraft:nether/obtain_ancient_debris` | Mine Ancient Debris | Ancient Mining |
| **War Pigs** | `minecraft:nether/loot_bastion` | Open a Bastion chest | Desert Plunder (parallel loot milestone) |
| **This Boat Has Legs** | `minecraft:nether/ride_strider_in_overworld_lava` | Ride a Strider | Nether Base |
| **Return to Sender** | `minecraft:nether/return_to_sender` | Kill a Ghast with a fireball | Blaze Hunter |
| **Spooky Scary Skeleton** | `minecraft:nether/get_wither_skull` | Get a Wither Skeleton skull | Blaze Hunter |
| **Into Fire** | `minecraft:nether/obtain_blaze_rod` | Get a Blaze Rod | Blaze Hunter |
| **Hot Tourist Destinations** | `minecraft:nether/explore_nether` | Visit all four Nether biomes | Nether Base |
| **Country Lode, Take Me Home** | `minecraft:nether/use_lodestone` | Use a Lodestone Compass | Nether Base |
| **Withering Heights** | `minecraft:nether/create_wither` | Summon the Wither | Ch 5 (optional side boss) |

#### The End

| Advancement | ID | Trigger | Pairs with quest |
|-------------|-----|---------|-----------------|
| **Eye Spy** | `minecraft:story/follow_ender_eye` | Follow an Eye of Ender to a Stronghold | End Portal Key |
| **The End?** | `minecraft:story/enter_the_end` | Enter The End | Beyond the Void |
| **The End** | `minecraft:end/kill_dragon` | Kill the Ender Dragon | Dragon Slayer |
| **Remote Getaway** | `minecraft:end/escape_island` | Leave the End island to an outer island | Void Walker |
| **The Next Generation** | `minecraft:end/dragon_egg` | Pick up the Dragon Egg | Dragon Slayer reward |
| **You Need a Mint** | `minecraft:end/dragon_breath` | Collect Dragon's Breath in a bottle | Archmage Spellbook ingredient |
| **The City at the End of the Game** | `minecraft:end/find_end_city` | Enter an End City | Void Walker |
| **Sky's the Limit** | `minecraft:end/elytra` | Get Elytra from an End Ship | Void Walker |
| **Great View from Up Here** | `minecraft:end/levitate` | Levitate 50+ blocks via a Shulker | Void Walker |

---

### Chapter 4 Advancements — Hearth & Home

Almost all from the **Husbandry** tab. These naturally emerge during farming and base-building.

| Advancement | ID | Trigger | Pairs with quest |
|-------------|-----|---------|-----------------|
| **The Parrots and the Bats** | `minecraft:husbandry/tame_an_animal` | Tame a Parrot | Best Friends Forever (Ch 0 follow-up) |
| **You've Got a Friend in Me** | `minecraft:husbandry/befriend_fox` | Get a Fox to trust you | Garden Golem (peaceful farm theme) |
| **Whatever Floats Your Goat!** | `minecraft:husbandry/ride_a_boat_with_a_goat` | Ride a Boat with a Goat | Capybara Friend (Alex's Mobs companion) |
| **Bee Our Guest** | `minecraft:husbandry/safely_harvest_honey` | Harvest honey safely from a beehive with a campfire below | Garden Starter |
| **Wax On** | `minecraft:husbandry/wax_on` | Wax Copper with a Honeycomb | Kitchen Setup (copper counters) |
| **Wax Off** | `minecraft:husbandry/wax_off` | Scrape wax off Copper | 100 Variants (Chipped copper variants) |
| **Two by Two** | `minecraft:husbandry/bred_all_animals` | Breed two of every breedable animal | Golem Army (full farm ecosystem) |
| **Gotta Breed 'Em All!** | `minecraft:husbandry/bred_all_animals` | Same as above — triggers together | Golem Army |
| **A Complete Catalogue** | `minecraft:husbandry/complete_catalogue` | Tame all 11 cat variants | Automated Garden |
| **Tactical Fishing** | `minecraft:husbandry/tactical_fishing` | Catch a fish in a bucket without a fishing rod | Jar Collection (Supplementaries jars) |
| **When the Squad Hops into Town** | `minecraft:husbandry/leash_all_frog_variants` | Leash all 3 frog variants | Wildlife Watcher (Ch 3 credit) |
| **Birthday Song** | `minecraft:husbandry/allay_deliver_cake_to_note_block` | Get an Allay to dance at a Note Block | Automated Garden (Allay can assist farming) |
| **Plate of Origin** | `minecraft:husbandry/balanced_diet` | Eat every food in the game | Full Meal Deal (Farmer's Delight adds many new foods) |

---

### Chapter 5 Advancements — Arcane Synthesis

Late-game milestones for completionists. Some are extreme challenges — perfect for the "Frontier Complete" final push.

| Advancement | ID | Trigger | Pairs with quest |
|-------------|-----|---------|-----------------|
| **Cover Me in Debris** | `minecraft:nether/netherite_armor` | Full Netherite armor | The Grand Synthesis (materials milestone) |
| **Serious Dedication** | `minecraft:husbandry/obtain_netherite_hoe` | Get a Netherite Hoe (the most dedicated farm upgrade possible) | Create + Golem Combo |
| **Monsters Hunted** | `minecraft:adventure/kill_all_mobs` | Kill every type of hostile mob | Frontier Complete (ultimate kill list, includes Alex's Mobs and Friends & Foes creatures) |
| **Postmortal** *(if not yet done)* | `minecraft:adventure/totem_of_undying` | Use a Totem of Undying | Arcane Locomotive (high-danger build) |
| **Arbalistic** | `minecraft:adventure/arbalistic` | Kill 5 mobs with one crossbow bolt (piercing enchant) | Turret Contraption (precision fire parallel) |
| **Two Birds, One Arrow** | `minecraft:adventure/two_birds_one_arrow` | Kill two Phantoms with one tipped arrow | Timer Turret (if not done in Ch 3) |
| **Sniper Duel** | `minecraft:adventure/sniper_duel` | Return the favour — kill a Skeleton at 50+ blocks | Arcane Locomotive (long-range combat) |
| **Sound of Music** | `minecraft:adventure/play_jukebox_in_meadows` | Use a Jukebox in a Meadow biome | Acoustic Cave (immersion parallel) |
| **Withering Heights** | `minecraft:nether/create_wither` | Summon and kill the Wither | Grand Synthesis (optional boss before endgame) |

---

### Complete Vanilla Advancement Reference

Quick-reference table of all tracked advancements sorted by FTB chapter. Use this as a checklist in the quest editor.

| Chapter | Tab | Advancement | ID |
|---------|-----|-------------|-----|
| 0 | Minecraft | Stone Age | `minecraft:story/mine_stone` |
| 0 | Minecraft | Getting an Upgrade | `minecraft:story/upgrade_tools` |
| 0 | Minecraft | Acquire Hardware | `minecraft:story/smelt_iron` |
| 0 | Minecraft | Suit Up | `minecraft:story/obtain_armor` |
| 0 | Minecraft | Hot Stuff | `minecraft:story/lava_bucket` |
| 0 | Minecraft | Isn't It Iron Pick | `minecraft:story/iron_tools` |
| 0 | Husbandry | Husbandry | `minecraft:husbandry/root` |
| 0 | Adventure | Sweet Dreams | `minecraft:adventure/sleep_in_bed` |
| 0 | Husbandry | Best Friends Forever | `minecraft:husbandry/tame_an_animal` |
| 0 | Adventure | What a Deal! | `minecraft:adventure/trade` |
| 1 | Minecraft | Diamonds! | `minecraft:story/mine_diamond` |
| 1 | Minecraft | Cover Me With Diamonds | `minecraft:story/shiny_gear` |
| 1 | Minecraft | Enchanter | `minecraft:story/enchant_item` |
| 1 | Minecraft | Ice Bucket Challenge | `minecraft:story/form_obsidian` |
| 1 | Minecraft | Not Today, Thank You | `minecraft:story/deflect_arrow` |
| 1 | Nether | A Furious Cocktail | `minecraft:nether/all_effects` |
| 1 | Adventure | Postmortal | `minecraft:adventure/totem_of_undying` |
| 2 | Adventure | Caves & Cliffs | `minecraft:adventure/fall_from_world_height` |
| 2 | Nether | Subspace Bubble | `minecraft:nether/use_portal` |
| 2 | Husbandry | Serious Dedication | `minecraft:husbandry/obtain_netherite_hoe` |
| 2 | Nether | Cover Me in Debris | `minecraft:nether/netherite_armor` |
| 2 | Adventure | Sticky Situation | `minecraft:adventure/honey_block_slide` |
| 3 | Adventure | Monster Hunter | `minecraft:adventure/kill_a_mob` |
| 3 | Adventure | Voluntary Exile | `minecraft:adventure/voluntary_exile` |
| 3 | Adventure | Hero of the Village | `minecraft:adventure/hero_of_the_village` |
| 3 | Adventure | Adventuring Time | `minecraft:adventure/adventuring_time` |
| 3 | Adventure | Take Aim | `minecraft:adventure/sniper_duel` |
| 3 | Nether | Nether | `minecraft:nether/root` |
| 3 | Nether | A Terrible Fortress | `minecraft:nether/find_fortress` |
| 3 | Nether | Those Were the Days | `minecraft:nether/find_bastion` |
| 3 | Nether | Hidden in the Depths | `minecraft:nether/obtain_ancient_debris` |
| 3 | Nether | War Pigs | `minecraft:nether/loot_bastion` |
| 3 | Nether | This Boat Has Legs | `minecraft:nether/ride_strider_in_overworld_lava` |
| 3 | Nether | Return to Sender | `minecraft:nether/return_to_sender` |
| 3 | Nether | Into Fire | `minecraft:nether/obtain_blaze_rod` |
| 3 | Nether | Hot Tourist Destinations | `minecraft:nether/explore_nether` |
| 3 | Nether | Withering Heights | `minecraft:nether/create_wither` |
| 3 | Minecraft | Eye Spy | `minecraft:story/follow_ender_eye` |
| 3 | Minecraft | The End? | `minecraft:story/enter_the_end` |
| 3 | The End | The End | `minecraft:end/kill_dragon` |
| 3 | The End | Remote Getaway | `minecraft:end/escape_island` |
| 3 | The End | The Next Generation | `minecraft:end/dragon_egg` |
| 3 | The End | You Need a Mint | `minecraft:end/dragon_breath` |
| 3 | The End | The City at the End of the Game | `minecraft:end/find_end_city` |
| 3 | The End | Sky's the Limit | `minecraft:end/elytra` |
| 3 | The End | Great View from Up Here | `minecraft:end/levitate` |
| 4 | Husbandry | Bee Our Guest | `minecraft:husbandry/safely_harvest_honey` |
| 4 | Husbandry | Wax On | `minecraft:husbandry/wax_on` |
| 4 | Husbandry | Wax Off | `minecraft:husbandry/wax_off` |
| 4 | Husbandry | Two by Two | `minecraft:husbandry/bred_all_animals` |
| 4 | Husbandry | A Complete Catalogue | `minecraft:husbandry/complete_catalogue` |
| 4 | Husbandry | Tactical Fishing | `minecraft:husbandry/tactical_fishing` |
| 4 | Husbandry | Birthday Song | `minecraft:husbandry/allay_deliver_cake_to_note_block` |
| 4 | Husbandry | Plate of Origin | `minecraft:husbandry/balanced_diet` |
| 5 | Adventure | Monsters Hunted | `minecraft:adventure/kill_all_mobs` |
| 5 | Adventure | Arbalistic | `minecraft:adventure/arbalistic` |
| 5 | Adventure | Sound of Music | `minecraft:adventure/play_jukebox_in_meadows` |
| 6 | Adventure | What a Deal! | `minecraft:adventure/trade` |
| 6 | Adventure | Hero of the Village | `minecraft:adventure/hero_of_the_village` |

> **Note on Monsters Hunted:** With Alex's Mobs and Friends & Foes installed, new mob types are added but the vanilla `kill_all_mobs` advancement only tracks vanilla mobs. The FTB Quest "Frontier Complete" serves as the all-mobs completion milestone for the full modded roster.

---

### Chapter 6 Advancements — The Colony

Two vanilla advancements slot perfectly into the colony quest chain, giving players a simultaneous FTB reward chest *and* a vanilla game milestone at the same moment.

| Advancement | ID | Trigger | Pairs with quest |
|-------------|-----|---------|-----------------|
| **What a Deal!** | `minecraft:adventure/trade` | Complete any villager trade | Ch 6.1 "Our Town's Style" *(first Create: Dynamic Village merchant trade)*; or Ch 6.2 "First Profession" *(first colonist assignment triggers the advancement if a villager trade has been made nearby)* |
| **Hero of the Village** | `minecraft:adventure/hero_of_the_village` | Successfully defend a village from a raid | Ch 6.5 "First Raid Survived" — the colony raid event triggers this advancement simultaneously, rewarding the family with both the FTB quest loot crate and the passive vanilla trading discount buff in a single moment |

> 💡 **FTB Quests setup for Hero of the Village:** In the quest editor, set the "First Raid Survived" quest to have **two tasks** — the standard MineColonies raid completion check AND `minecraft:adventure/hero_of_the_village` as an advancement task. Both must complete before the reward chest pops. This guarantees the vanilla buff and the mod reward land together.

---

### Multi-Pillar Milestone Summary

This table maps the critical cross-system milestones that define the pack's architecture. Each one is a moment where multiple pillars converge and the player feels the whole system click into place.

| Chapter / Milestone | Primary Systems | Structural Purpose | Anti-Grind Balance |
|---------------------|----------------|-------------------|-------------------|
| **Ch 2.7: Andesite & Brass Edge** | Create ⊕ Tetra | Converts your factory's processed metals into high-performance personal gear | Eliminates the vanilla diamond/netherite mining grind — the metals you already smelt for machines become your best weapons |
| **Ch 6.2: Equipping the Workforce** | MineColonies ⊕ Tetra | Teaches the Tetra mass-production loop to keep AI citizen tools stocked permanently | Stops players from hand-crafting hundreds of throwaway iron tools — modular Tetra components replace the whole disposable-item cycle |
| **Ch 6.3: Factory Handshake** | MineColonies ⊕ Create | Connects colony resource requests directly to an automated mechanical sorting warehouse | Stops players from manually opening chests to hand supplies to AI citizens — the Create network fulfils requests automatically |
| **Ch 6.4: Arcane Forestry** | MineColonies ⊕ Ars Nouveau | Magic pillar keeps the colony's lumber supply infinite without clear-cutting Terralith landscapes | Closes the wood loop permanently — no biome damage, no manual replanting, no resource wall blocking housing upgrades |
| **Ch 6.5: Arcane Armory** | MineColonies ⊕ Ars Nouveau | Supplies town guards with Ars Nouveau enchanted modular weaponry | Magic progression directly automates base defence against hard server raid events — guards become an extension of your spell system |
| **Ch 5: The Grand Synthesis** | All four core pillars | The ultimate base-build challenge merging tech, magic, colony logistics, and rare exploration materials | Awards a balanced multiplayer duplicate item ecosystem — the family never fights over unique drops |

---

## 6. Multiplayer Setup

### Option A: Essential Mod (Easiest — No Server Required)

Essential lets one player host directly from their Minecraft client. Others join by username.

**Host setup:**
1. Launch Arcane Frontiers with Essential installed
2. Open a singleplayer world
3. Press `ESC` → **Invite Friends** (Essential button)
4. Invite family members by their Essential username
5. They join as if it's a multiplayer server — no port forwarding needed

**Limitations:**
- The world is only online when the host is playing
- Max comfortable players: 2–4 (depends on host PC)
- Fine for casual family sessions; use Option B for persistent servers

---

### Option B: Dedicated Server

For families who want a server always available (even when no one is playing):

#### Setting Up the Server

1. Download NeoForge server installer from [neoforged.net](https://neoforged.net/)
2. Run: `java -jar neoforge-1.21.1-installer.jar --installServer`
3. Copy all mod `.jar` files from your client mods folder to the server's `mods/` folder
4. **Remove client-only mods from the server:**
   - Remove: `sodium`, `immediatelyfast`, `entityculling` (GPU/rendering mods)
   - Remove: `xaeros-minimap`, `xaeros-worldmap` (client-side display)
   - Remove: `chat-heads` (client-side)
   - Remove: `sound-physics-remastered` (client-side audio only)
   - Remove: `appleskin` (client-side HUD only)
   - Keep everything else

5. Run the server:
```bash
java -Xmx6G -Xmx6G -jar neoforge-server.jar nogui
```

#### Server Start Script (Windows)

Create `start.bat`:
```batch
@echo off
java -Xms4G -Xmx6G -XX:+UseG1GC -XX:+ParallelRefProcEnabled ^
     -XX:MaxGCPauseMillis=200 -jar neoforge-server.jar nogui
pause
```

#### `server.properties` Recommended Settings

```properties
difficulty=normal
gamemode=survival
max-players=8
view-distance=12
simulation-distance=8
spawn-protection=16
online-mode=true
```

#### Family Safety Settings

In `ops.json` and `server.properties`:
```properties
# Only op trusted adults
# Kids play as regular players — no creative mode access by default

# Restrict commands for non-ops:
# /give, /tp, /gamemode — all require op level
```

Optional: Add **LuckPerms** (available on Modrinth) for fine-grained permission control on family servers.

---

### Backup Strategy

Always back up your world before updating mods.

**Quick backup script (Windows):**
```batch
@echo off
set WORLD_NAME=ArcaneFrontiers
set BACKUP_DIR=C:\MinecraftBackups
xcopy /E /I ".minecraft\saves\%WORLD_NAME%" "%BACKUP_DIR%\%WORLD_NAME%_%date:~-4,4%%date:~-7,2%%date:~-10,2%"
echo Backup complete!
```

Run this weekly or before any mod update.

---

## 7. Progression Guide

### How the Three Pillars Connect

```
         EXPLORATION
         (Terralith, Alex's)
              ↕
    Magical ores and creatures
    feed Ars Nouveau research
              ↕
         MAGIC ←──────→ TECHNOLOGY
      (Ars Nouveau)    (Create)
         Ars Creo bridges both:
    - Starbuncle Wheel → SU for Create
    - Spell Turrets → mount on contraptions
```

---

### Early Game (Days 1–7): Foundation

**Goal: Survive, explore, and touch all three pillars**

**Day 1–2: Getting Started**
- [ ] Punch trees, make a basic base
- [ ] Craft a **Leather Backpack** (Sophisticated Backpacks) — extra inventory immediately
- [ ] Explore your spawn biome — note that Terralith biomes look dramatically different from vanilla
- [ ] Place your first **Waystone** at your base and name it "Home"

**Day 3–4: First Gears**
- [ ] Mine for Copper and Zinc (both needed for Create's brass)
- [ ] Build a **Mechanical Press** and craft the **Create Handbook**
- [ ] Build your first **Windmill** (8 oak sails + windmill bearing) — the first Create milestone
- [ ] Connect the windmill to a **Mechanical Crusher** for automated ore doubling

**Day 5–6: First Magic**
- [ ] Gather **Archwood** (magical tree that grows in Terralith biomes) and craft **Source Gems**
- [ ] Craft the **Apprentice Spellbook** — open it and read the introduction
- [ ] Craft your first glyph combination — try `Touch + Conjure Water` or `Projectile + Flame`
- [ ] Place a **Source Jar** near your base to start collecting ambient Source (mana)

**Day 7: First Exploration**
- [ ] Equip your backpack, grab food (use Farmer's Delight cooking pot for travel meals)
- [ ] Head out and find a Terralith biome you haven't seen — mark it on Xaero's map
- [ ] Find a **YUNG's Better Dungeon** — explore it carefully, it's harder than vanilla
- [ ] Check JEI for recipes using any loot you found

---

### Mid Game (Weeks 2–4): Depth

**Goal: Master your chosen specialty and start integrating all three**

**Magic Track:**
- [ ] Build a full **Ritual Pedestal** setup — automated potion brewing and enchanting
- [ ] Summon your first **Starbuncle familiar** (adorable cat-like magical creature)
- [ ] Complete the "Familiar Friend" quest to unlock Tier 2 spells
- [ ] Experiment with spell combinations — try `Projectile + Gravity + Slowfall` for fun movement
- [ ] Build a **Source Condenser** tree farm for passive mana generation

**Technology Track:**
- [ ] Smelt Copper + Zinc in a Mechanical Mixer → **Brass** (unlocks precision mechanisms)
- [ ] Build a **Train Station** and your first locomotive with Steam 'n' Rails
- [ ] Connect your base to your mining operation with a scheduled train
- [ ] Automate ore processing with a Create **depot → crusher → washer → mixer** chain

**Exploration Track:**
- [ ] Descend into an **Alex's Caves** biome — bring torches and a good sword
- [ ] Discover and tame an Alex's Mob creature (some are tameable with specific items)
- [ ] Find a **YUNG's Better Nether Fortress** — the Blaze loot is crucial for progression
- [ ] Build a proper **Nether base** using Crimson/Warped wood + Create machines

---

### Late Game (Month 2+): Synthesis

**Goal: Merge all three systems into something spectacular**

- [ ] Install **Ars Creo** machines — mount Spell Turrets on your Create contraptions
- [ ] Build a **Starbuncle Wheel** to power Create machines with pure magic
- [ ] Design a "Spell Factory" — a Create contraption that automatically processes items through Ars Nouveau rituals
- [ ] Build a **railroad network** connecting multiple family bases across Terralith's landscapes
- [ ] Explore **The End** (gated by Ch.4 quest) and design late-game goals as a family

---

### Difficulty Tuning Tips for Different Players

| Situation | Recommendation |
|-----------|----------------|
| Young child struggling | Enable `/gamerule keepInventory true` + build a base near spawn |
| Teenager wants more challenge | Switch to Hard difficulty, disable keepInventory, set up regular death challenges |
| Adult wants late-game content | Focus on Ars Creo integration — the tech + magic synthesis is very deep |
| Group play | Assign roles: one player does magic, one does tech, one does exploration — then trade resources |

---

## 8. Integration & Balance Notes

### Magic ↔ Technology (Ars Creo)

**Ars Creo** is the linchpin of the pack's balance. Key interactions:

| Ars Creo Feature | How it Works | Why it Matters |
|-----------------|--------------|----------------|
| Starbuncle Wheel | Starbuncle familiar generates Stress Units for Create | Magic provides "free" power to tech |
| Spell Turret | Mounts on moving contraptions, fires spells | Tech gives magic mobility and automation |
| Arcane Saw | Create saw powered by Ars Nouveau Source | Shared resource economy |
| Timer Turret | Fires spells on a Create clock signal | Automation of ritual-style effects |

**Recommended late-game build:** A Create train that travels automatically to resource-rich biomes, deploys mining drills powered by a Starbuncle Wheel, and uses Spell Turrets to auto-collect/process materials.

---

### Exploration → Magic Pipeline

Resources found during exploration feed directly into Ars Nouveau progression:

| Found in... | Used for... |
|-------------|-------------|
| Alex's Caves (Toxic Cave) | Caustic ingredients for advanced spell glyphs |
| YUNG's Dungeon loot | Unique enchanted books → extract glyphs |
| Terralith crystal biomes | Source Crystal clusters for mana amplification |
| Nether Fortress (YUNG's) | Blaze Powder → required for several Ars Nouveau rituals |

---

### Exploration → Technology Pipeline

| Found in... | Used for... |
|-------------|-------------|
| Deep caves (vanilla layer) | Copper, Zinc → Create's Brass |
| Alex's Caves (Abyssal) | Unique alloys usable in advanced Create machines |
| Nether | Ancient Debris → Netherite → Create precision components |
| Villages (Dungeons and Taverns) | Iron, books, villager trades for Create schematics |

---

### Datapack Integration Note

Both **Terralith** and **Dungeons and Taverns** ship as both datapacks and NeoForge mods on Modrinth. Always use the **NeoForge mod** version (not the datapack `.zip`) when building a mod-based pack — this ensures proper load ordering and config access.

---

### Quest Gating Philosophy

The cross-branch gates prevent one-sided progression:

```
❌ BAD: Player rushes magic, ignores Create, hits a wall at Tier 3 spells
✓ GOOD: Tier 2 magic requires a Create milestone → player naturally explores tech
```

This means no player gets stuck in one branch. The gates are gentle nudges, not hard walls — players always have something to do while working toward a gate requirement.

---

## 9. Troubleshooting

### Common Issues & Fixes

---

**❌ Game crashes on startup**

1. Check the crash log: `.minecraft/crash-reports/` — look for the newest `.txt` file
2. Search the crash log for `caused by` — this identifies the problem mod
3. Common causes:
   - **Java version mismatch:** NeoForge 1.21.1 requires Java 21. Download from [adoptium.net](https://adoptium.net/)
   - **Incompatible mod version:** Check the Modrinth page for that mod — verify it says NeoForge 1.21.1
   - **Missing library:** If the crash mentions a missing dependency, install the required library

---

**❌ Very low FPS (under 30)**

Checklist in order:
- [ ] Is Sodium installed and active? (Check mods screen)
- [ ] Is RAM allocation at least 6 GB?
- [ ] Reduce render distance to 10 chunks (`ESC → Options → Video Settings`)
- [ ] Reduce simulation distance to 6 chunks
- [ ] Lower graphics preset to "Fast" in Sodium settings
- [ ] Disable shaders if any are installed

---

**❌ FTB Quests not showing**

- Verify both `ftb-quests` AND `ftb-library` `.jar` files are in your mods folder
- Check that their versions match (same MC/NeoForge version)
- Press `P` to open quests (default keybind — may conflict; check Controls settings)

---

**❌ Waystones not working**

- Ensure `Balm` is installed (the required library)
- Both Balm and Waystones versions must match for the same MC/NeoForge build
- Right-click the waystone to activate it — it must be activated before warping to it

---

**❌ Alex's Mobs / Alex's Caves not spawning creatures**

- These are unofficial ports — check the Modrinth page for the latest compatible build
- Confirm GeckoLib is installed (required for animations)
- Ensure you're using the `alexs-mobs(1.21.1)` and `alexs-caves-(unofficial-port)` slugs, not the original mods (which are 1.20.1)

---

**❌ Create contraptions causing server lag**

- Large contraptions (100+ blocks) can be intensive
- Set a contraption block limit in Create's config (see Section 4.6)
- Break very large contraptions into smaller networked pieces
- Use `/forge tps` to check server performance; anything above 15 TPS is fine

---

**❌ Ars Nouveau spells costing too much Source**

- Early game Source regeneration is slow — this is intentional progression
- Build a Source Condenser tree farm for passive generation
- Craft multiple Source Jars near your spellcasting area (they stack generation)
- Complete the "Arcane Automation" quest (Ch. 1) for a significant Source boost

---

**❌ Mod conflict between two mods**

1. Test by removing mods one at a time (binary search the conflict)
2. Check the mods' Modrinth pages for known incompatibilities
3. Look for a compatibility datapack — many popular mod pairs have community fixes
4. Post in the Modrinth community tab for either mod — devs are usually responsive

---

### Keeping the Pack Updated

When a new version of a mod releases:
1. Check that ALL your mods are compatible with the new version before updating any single mod
2. Always backup your world before updating (see Section 6 backup script)
3. For unofficial ports (Alex's Mobs, Alex's Caves, Steam 'n' Rails), updates may lag behind — wait for the unofficial port to catch up before updating the underlying mod

---

## 10. Expanding the Pack

### The Core Philosophy for Adding Mods

Before adding any mod, ask:
1. **Does this replace something we already have?** If yes, remove the old mod first.
2. **Does this add a whole new gameplay system?** If yes, consider whether the pack needs it.
3. **Is it compatible with NeoForge 1.21.1?** Verify on Modrinth before adding.
4. **Does it work with Terralith, Create, and Ars Nouveau?** Check for known conflicts.

---

### Safe Additions (Tested Pairings)

The mods below are proven companions to the Arcane Frontiers core. None conflict with any installed mod and each fills a genuine gap without duplicating existing systems.

| Mod | Modrinth | Why it fits |
|-----|----------|-------------|
| **Twilight Forest** | [modrinth.com/mod/twilightforest](https://modrinth.com/mod/twilightforest) | Boss-progression adventure dimension — see §10 discussion below ⚠️ Verify 1.21.1 port stability before adding |
| **Nullscape** | [modrinth.com/mod/nullscape](https://modrinth.com/mod/nullscape) | Makes the End dimension beautiful and worth exploring post-dragon |
| **Incendium** | [modrinth.com/mod/incendium](https://modrinth.com/mod/incendium) | Richer Nether with more biomes and structures — pairs with YUNG's Better Nether Fortresses |
| **Deeper and Darker** | [modrinth.com/mod/deeperdarker](https://modrinth.com/mod/deeperdarker) | Expands the vanilla Deep Dark with new blocks, mobs, and Ancient City content |
| **Blue Skies** | [modrinth.com/mod/blue-skies](https://modrinth.com/mod/blue-skies) | Two beautiful exploration dimensions (Everbright and Everdawn) — lower difficulty, family-friendly |

---

### Mods That Require Consideration

These are good mods but need thought before adding:

| Mod | Why it needs thought | Recommendation |
|-----|---------------------|----------------|
| **Create: Crafts & Additions** | Overlaps Create: New Age (both add electricity/FE bridge) | Already replaced by Create: New Age in the base list — don't add both |
| **Applied Energistics 2** | Overlaps Sophisticated Storage significantly | Only add if family wants deep digital storage late-game; remove Sophisticated Storage if so |
| **Mekanism** | Overlaps Create in tech automation | Don't add both — pick one tech system |
| **Botania** | Overlaps Ars Nouveau as a magic system | Don't add — magic is covered |
| **Biomes O' Plenty** | Conflicts with Terralith terrain generation | Don't add — use Terralith's biome list instead |
| **Oh The Biomes We've Gone** | Same conflict with Terralith | Don't add without removing Terralith |
| **Harder Minecraft** | Disrupts the family difficulty balance | Only if the whole family wants harder challenge |

---

### Adding a Brother's Suggestions

When a family member suggests a new mod, use this checklist:

```
☐ Does it exist for NeoForge 1.21.1? (Check Modrinth)
☐ Does it duplicate a mod already in the pack? (Review Section 2)
☐ Is it compatible with Create + Ars Nouveau + Terralith?
☐ Does it fit the "Arcane Frontiers" tone?
☐ Will it affect server performance significantly?
☐ Has the family agreed to try it?

If all yes → add it to a test profile, play for a week, then decide.
```

**Protocol for safe testing:**
1. Create a **copy** of the Arcane Frontiers profile in your launcher
2. Add the new mod to the copy only
3. Generate a new test world (don't use your main world until confirmed stable)
4. Play for 1–2 sessions
5. If stable and fun → add to the main profile + backup the main world first

---

### Mod Count Guidelines

The pack is intentionally lean at ~35 mods. This is a feature, not a limitation.

| Mod count | Experience |
|-----------|-----------|
| 20–40 | Clean, fast, easy to understand, low conflicts |
| 40–80 | More content, some performance cost, still manageable |
| 80–150 | Kitchen sink territory — great for experienced players, harder for newcomers |
| 150+ | ATM-style mega packs — not the goal of Arcane Frontiers |

If the family outgrows Arcane Frontiers, consider graduating to **ATM10** or **Direwolf20** for a bigger experience — both use FTB Quests and similar Create/magic combos at much larger scale.

---

## Quick Reference

### Key Keybinds

| Key | Action |
|-----|--------|
| `B` | Create Xaero waypoint |
| `M` | Open Xaero World Map |
| `R` (hover item in inventory) | JEI: show recipe |
| `U` (hover item) | JEI: show item uses |
| `P` | Open FTB Quests |
| `H` | Open Jade config |
| Left Shift + Right-click backpack | Open backpack in-world |

### Important Crafting Shortcuts

| Item | Why you need it early |
|------|-----------------------|
| Leather Backpack | Doubles inventory, upgradeable forever |
| Source Jar | Starts mana collection for magic |
| Andesite Casing + Shaft | First Create machine component |
| Waystone | Fast travel — place at every major location |
| Cooking Pot (Farmer's Delight) | Makes high-saturation meals for long trips |

---

*Documentation version 1.0 — Arcane Frontiers for NeoForge 1.21.1*
*Built for families who want to explore, build, and discover together.*
