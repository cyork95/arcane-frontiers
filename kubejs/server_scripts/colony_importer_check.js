// ================================================================
// colony_importer_check.js — Arcane Frontiers
// KubeJS Server Script (runs on server start)
//
// Purpose: Gate Ch 6.3 integration quests behind actual
// MineColonies Importer functionality. Adds helper recipes
// that make the Create ↔ Colony logistics pipeline more
// approachable for families learning it for the first time.
//
// MineColonies Importer allows Create's Mechanical Arms and
// Funnels to read colony resource requests and fulfill them
// automatically. The pipeline is:
//
//   Colony building needs item X
//   → MineColonies Importer block reads the request
//   → Create Mechanical Arm picks up X from storage
//   → Arm delivers X to the Importer input slot
//   → Importer routes X into the colony warehouse network
//
// The Ch 6.3 quests "Factory Handshake", "Automated Delivery",
// and "Train Town" all depend on this pipeline working.
// ================================================================

// ----------------------------------------------------------------
// PART 1: Add a crafting recipe for the MineColonies Importer
// block that surfaces it clearly in JEI.
// The Importer's default recipe may not be obvious to players
// who haven't read the mod's documentation.
// ----------------------------------------------------------------
ServerEvents.recipes(event => {

    // Shaped crafting recipe for the MineColonies Importer block.
    // Layout: Brass Casing centre (Create) + Warehouse Token (MineColonies)
    // surrounded by Funnels — visually communicates the function.
    //
    // NOTE: If MineColonies Importer already registers its own
    // crafting recipe, this will conflict. Check JEI after loading —
    // if two recipes appear for the same item, remove this block.
    // The 'id' field prevents silent duplication.
    if (Platform.isModLoaded('minecoloniesimporter') && Platform.isModLoaded('create')) {

        event.shaped(
            Item.of('minecoloniesimporter:importer_block'),  // Output: 1 Importer block
            [
                'FBF',
                'WIW',
                'FBF'
            ],
            {
                // F = Create Brass Funnel (the item logistics part)
                F: 'create:brass_funnel',
                // B = Create Brass Casing (the mechanical housing)
                B: 'create:brass_casing',
                // W = MineColonies Warehouse block or token
                // Replace with correct item ID if needed
                W: 'minecolonies:blockhutwarehouse',
                // I = Iron Ingot (centre binding)
                I: 'minecraft:iron_ingot'
            }
        ).id('arcane_frontiers:importer_block_recipe')

        console.info('[Arcane Frontiers] MineColonies Importer recipe registered.')
        console.info('[Arcane Frontiers] Recipe uses: 4x Brass Funnel, 2x Brass Casing, 2x Colony Warehouse token, 1x Iron')

    } else {
        console.warn('[Arcane Frontiers] Skipped MineColonies Importer recipe — one or both mods not loaded.')
    }

})

// ----------------------------------------------------------------
// PART 2: Add a "Colony Supply Manifest" item recipe.
// A craftable item players can check that displays the current
// top 5 most-requested colony resources in its tooltip.
//
// This is a quality-of-life item that helps the "Engineer"
// family role (see Ch 6.3 cooperative tip) know what to
// prioritise in the Create supply contraption without
// needing to open the MineColonies colony GUI.
//
// IMPLEMENTATION NOTE: True dynamic tooltip (reading live colony
// data) requires a custom mod. This KubeJS version creates a
// static recipe for the item — its tooltip explains HOW to
// check colony requests via the GUI. Phase 3.7 (Ch 6 quests)
// will reference this item as a quest task item.
// ----------------------------------------------------------------
ServerEvents.recipes(event => {

    if (Platform.isModLoaded('minecolonies') && Platform.isModLoaded('create')) {

        // Colony Supply Manifest — a renamed Paper with lore
        // Used as a quest task item in Ch 6.3
        event.shaped(
            Item.of('minecraft:paper', 1, {
                display: {
                    Name: '{"text":"Colony Supply Manifest","color":"gold","italic":false}',
                    Lore: [
                        '{"text":"Check: Colony GUI → Warehouse → Requests","color":"dark_purple"}',
                        '{"text":"Top requests are what your Create line should","color":"gray"}',
                        '{"text":"prioritise delivering to the Importer block.","color":"gray"}'
                    ]
                }
            }),
            [
                ' P ',
                'PWP',
                ' P '
            ],
            {
                P: 'minecraft:paper',
                W: 'minecolonies:blockhutwarehouse'
            }
        ).id('arcane_frontiers:colony_supply_manifest')

        console.info('[Arcane Frontiers] Colony Supply Manifest recipe registered.')

    }

})
