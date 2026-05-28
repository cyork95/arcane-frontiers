// ================================================================
// jei_tooltip_hints.js — Arcane Frontiers
// KubeJS Client Script (runs on client, affects tooltips)
//
// Purpose: Add pack-specific guidance tooltips to key items
// so players know what they're for without leaving the game.
// These tooltips appear in inventory, JEI, and on hover.
//
// The design philosophy: every tooltip added here replaces a
// browser tab. If a younger player hovers an item and sees
// "This powers the Starbuncle Wheel in Ch 5" they stay
// engaged. If they have to alt-tab to a wiki, they might
// not come back.
//
// Tooltips are kept SHORT (1-2 lines) and ACTION-ORIENTED.
// They tell players what to DO with the item, not just
// what it is. JEI's recipe browser and Jade's block info
// handle the "what is it" part.
// ================================================================

ItemEvents.tooltip(event => {

    // ============================================================
    // CHAPTER 0 — Tutorial items
    // ============================================================

    event.addAdvanced('minecraft:compass', (item, advanced, text) => {
        text.add(Text.gray('Craft a Nature\'s Compass instead — Ch 0 "Compass of Biomes"'))
    })

    event.add('waystones:waystone', [
        Text.green('Place and name this for fast travel — Ch 0 "Mark Your Home"'),
        Text.gray('All family members can see all named Waystones.')
    ])

    event.add('waystones:warp_stone', [
        Text.green('Use to teleport to any known Waystone — Ch 0 "First Waypoint"'),
        Text.gray('5-minute cooldown. Free to use — no XP cost on this server.')
    ])

    event.add('sophisticatedbackpacks:backpack', [
        Text.green('Upgrade with Filter/Sort upgrades — Ch 0 "Backpack Time"'),
        Text.gray('Upgrade through Iron → Gold → Diamond → Netherite tiers.')
    ])

    // ============================================================
    // CHAPTER 1 — Magic items
    // ============================================================

    event.add('ars_nouveau:worn_notebook', [
        Text.aqua('Your complete Ars Nouveau guidebook — read everything here first.'),
        Text.gray('Quest: Ch 1.1 "The Worn Notebook"')
    ])

    event.add('ars_nouveau:source_gem', [
        Text.aqua('Magic currency. Store in Source Jars. Spend to cast spells.'),
        Text.gray('Farm more: plant Source Berry seeds near Source Jars.')
    ])

    event.add('ars_nouveau:apprentice_spellbook', [
        Text.aqua('4 glyph slots (pack-adjusted from default 3).'),
        Text.aqua('Upgrade to Mage Spellbook: needs Create Brass — Ch 1.3.')
    ])

    event.add('ars_nouveau:starbuncle', [
        Text.aqua('Place near Source Jars to auto-collect Source Gems.'),
        Text.aqua('Also powers Create shafts via Starbuncle Wheel — Ch 5!')
    ])

    event.add('ars_nouveau:whirlisprig', [
        Text.aqua('Regenerates nearby trees automatically.'),
        Text.aqua('Place near MineColonies Lumberjack Hut — Ch 6.7 "Arcane Forestry"')
    ])

    event.add('ars_elemental:fire_focus', [
        Text.aqua('Slot into Spellbook to add Ignite secondary to fire spells.'),
        Text.gray('Quest: Ch 1.2 "Elemental Focus" — craft any element focus.')
    ])

    // ============================================================
    // CHAPTER 2 — Technology items
    // ============================================================

    event.add('create:brass_ingot', [
        Text.yellow('Mix Copper + Zinc in a Mechanical Mixer — Ch 2.2 "Mixing It Up"'),
        Text.yellow('Also used in: Mage Spellbook (Ch 1.3), Tetra Brass Hilt (Ch 2.7)')
    ])

    event.add('create:andesite_alloy', [
        Text.yellow('Press Andesite in a Mechanical Press — Ch 2.1 "Mechanical Press"'),
        Text.yellow('Also used in: Tetra Andesite Blade (Ch 2.7)')
    ])

    event.add('create:steam_engine', [
        Text.yellow('Attach to a Boiler for high-SU kinetic power — Ch 2.5 arc'),
        Text.gray('Later: upgrade to nuclear reactor for max SU — Ch 2.6')
    ])

    event.add('create:creative_motor', [
        Text.red('⚠ PACK-LIMITED: Capped at 256 RPM (~512 SU output)'),
        Text.red('This is a Ch 5 quest reward — not a main power source.'),
        Text.gray('For real power: build the nuclear reactor in Ch 2.6.')
    ])

    event.add('tetra:modular_sword', [
        Text.yellow('Upgrade components on a Modular Workbench — Ch 2.7'),
        Text.yellow('Add a Brass Hilt for speed buff — requires Create Brass.')
    ])

    event.add('tetra:modular_pickaxe', [
        Text.yellow('Upgrade components on a Modular Workbench — Ch 2.7'),
        Text.yellow('Add an Andesite Alloy head for efficiency buff near machines.')
    ])

    event.add('littlelogistics:tugboat', [
        Text.yellow('Place on a river, load a Barge, set destination — Ch 2.8'),
        Text.gray('Travels existing water channels automatically. No fuel needed.')
    ])

    // ============================================================
    // CHAPTER 3 — Exploration items
    // ============================================================

    event.add('naturesscompass:natures_compass', [
        Text.green('Right-click to search for any Terralith biome by name.'),
        Text.green('Quest: Ch 0 "Compass of Biomes" — craft this early!')
    ])

    event.add('enigmaticlegacy:lucky_charm', [
        Text.green('Equip in a Curios charm slot for passive bonuses — Ch 3.3'),
        Text.gray('Drops from dungeon chests. Stacks with ring slot bonuses.')
    ])

    event.add('comforts:sleeping_bag', [
        Text.green('Skip the night without changing your spawn point — Ch 0'),
        Text.gray('Carry one on every exploration trip. Craft: 3 Wool + 1 Stick.')
    ])

    // ============================================================
    // CHAPTER 4 — Building and farming items
    // ============================================================

    event.add('farmersdelight:cooking_pot', [
        Text.green('Cook Farmer\'s Delight recipes for saturation buffs — Ch 0'),
        Text.green('Automate with Create: Central Kitchen — Ch 2.2 ★')
    ])

    event.add('strawgolem:straw_golem', [
        Text.green('Place in a mature crop field — auto-harvests and replants.'),
        Text.green('Quest: Ch 4.2 "Garden Golem". Craft: Hay Bale + Carved Pumpkin.')
    ])

    event.add('cookingforblockheads:cooking_table', [
        Text.green('Shows ONLY recipes you can make right now — Ch 4.2'),
        Text.gray('Place next to Sink and Tool Rack to unlock full menu.')
    ])

    // Farmer's Delight knives — Tetra's Delight integration hint
    // All four knife variants get the same tooltip
    ;['farmersdelight:flint_knife',
      'farmersdelight:iron_knife',
      'farmersdelight:golden_knife',
      'farmersdelight:diamond_knife'
    ].forEach(knifeId => {
        event.add(knifeId, [
            Text.yellow('Upgradeable on the Tetra Modular Workbench — Ch 2.7 "The Chef\'s Edge"'),
            Text.yellow('Add a Brass handle or Andesite edge using Create metals.'),
            Text.gray('Still works on Cutting Boards after upgrading — cooking function unchanged.')
        ])
    })

    event.add('copycats:copycat_panel', [
        Text.green('Right-click with any block to copy its texture — Ch 4.1'),
        Text.green('Great for hiding Create machinery behind clean walls.')
    ])

    // ============================================================
    // CHAPTER 6 — Colony items
    // ============================================================

    event.add('minecolonies:supplychest', [
        Text.gold('Place on water to found the family colony — Ch 6.1 "Supply Camp"'),
        Text.red('⚠ One colony per server. Discuss placement with the family first!')
    ])

    event.add('minecolonies:blockHutTownHall', [
        Text.gold('The heart of your colony — unlocks after Supply Camp placement.'),
        Text.gray('All family members: approach Town Hall → Join Colony.')
    ])

    event.add('minecolonies:blockHutBuilder', [
        Text.gold('Build this first — the Builder constructs ALL other buildings.'),
        Text.gray('Without a Builder\'s Hut, no other construction can begin.')
    ])

    event.add('minecolonies:blockHutWarehouse', [
        Text.gold('Colony central storage — all citizens draw from here.'),
        Text.gold('Connect Create supply line here via MineColonies Importer — Ch 6.3')
    ])

    // ============================================================
    // CHAPTER 7 — Twilight Forest items
    // ============================================================

    event.add('twilightforest:naga_trophy', [
        Text.light_purple('Boss 1/6 defeated — Lich Towers are now accessible.'),
        Text.gray('Display in Trophy Room for Ch 7.3 "Twilight Explorer".')
    ])

    event.add('twilightforest:lich_trophy', [
        Text.light_purple('Boss 2/6 defeated — Labyrinth (Minoshroom) is now accessible.'),
        Text.gray('Display in Trophy Room for Ch 7.3 "Twilight Explorer".')
    ])

    event.add('twilightforest:hydra_trophy', [
        Text.light_purple('Boss 4/6 defeated — Dark Tower (Ur-Ghast) is now accessible.'),
        Text.gray('Fiery Blood drop enables Fiery Ingot crafting.')
    ])

    event.add('twilightforest:snow_queen_trophy', [
        Text.light_purple('Final boss defeated! All 6 trophies now earnable.'),
        Text.green('Display all 6 in a Trophy Room — Ch 7.3 "Twilight Explorer"')
    ])

})
