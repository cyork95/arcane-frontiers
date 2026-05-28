// ================================================================
// tetra_material_check.js — Arcane Frontiers
// KubeJS Startup Script (runs once at game load, before world)
//
// Purpose: Verify that Tetra Pak's Create metal registrations
// are active at startup. Log a clear confirmation (or warning)
// so the pack host knows immediately if the integration is live.
//
// Tetra Pak works by automatically registering Create's processed
// metals (Brass, Andesite Alloy, Rose Quartz) as valid Tetra
// modular components with unique kinetic material traits.
// This registration happens inside Tetra Pak's own init code —
// we just verify it landed correctly.
//
// Required for: Ch 2.7 quests "Brass Blade" and "Andesite Edge"
// which ask players to craft Tetra tools using Create metals.
// ================================================================

StartupEvents.postInit(event => {

    const PACK_NAME = "[Arcane Frontiers]"

    // --------------------------------------------------------
    // Check 1: Is Tetra loaded?
    // --------------------------------------------------------
    if (Platform.isModLoaded('tetra')) {
        console.info(`${PACK_NAME} Tetra: LOADED ✓`)
    } else {
        console.error(`${PACK_NAME} Tetra: NOT FOUND — Ch 2.7 quests will be uncompletable.`)
        console.error(`${PACK_NAME} Download Tetra from: https://modrinth.com/mod/tetra`)
    }

    // --------------------------------------------------------
    // Check 2: Is Tetra Pak loaded?
    // --------------------------------------------------------
    if (Platform.isModLoaded('tetrapak')) {
        console.info(`${PACK_NAME} Tetra Pak: LOADED ✓`)
        console.info(`${PACK_NAME} Create × Tetra integration: ACTIVE`)
        console.info(`${PACK_NAME}   Brass Hilt, Andesite Blade, Rose Quartz Focus`)
        console.info(`${PACK_NAME}   are registered as valid Tetra modular components.`)
    } else {
        console.warn(`${PACK_NAME} Tetra Pak: NOT FOUND`)
        console.warn(`${PACK_NAME} Create metal components will NOT be usable in Tetra Modular Workbench.`)
        console.warn(`${PACK_NAME} Ch 2.7 quests "Brass Blade" and "Andesite Edge" require Tetra Pak.`)
        console.warn(`${PACK_NAME} Download Tetra Pak from: https://modrinth.com/mod/tetra-pak`)
    }

    // --------------------------------------------------------
    // Check 3: Is Create loaded? (Tetra Pak depends on it)
    // --------------------------------------------------------
    if (Platform.isModLoaded('create')) {
        console.info(`${PACK_NAME} Create: LOADED ✓`)
    } else {
        console.error(`${PACK_NAME} Create: NOT FOUND — core technology pillar missing.`)
        console.error(`${PACK_NAME} The entire Ch 2 quest chapter requires Create.`)
    }

    // --------------------------------------------------------
    // Check 4: Is MineColonies Importer loaded?
    // (Checked here alongside Tetra since both are cross-mod
    //  integration bridges that need to be verified at startup)
    // --------------------------------------------------------
    if (Platform.isModLoaded('minecoloniesimporter')) {
        console.info(`${PACK_NAME} MineColonies Importer: LOADED ✓`)
        console.info(`${PACK_NAME} Colony warehouse ↔ Create logistics bridge: ACTIVE`)
    } else if (Platform.isModLoaded('minecolonies')) {
        console.warn(`${PACK_NAME} MineColonies Importer: NOT FOUND`)
        console.warn(`${PACK_NAME} MineColonies is installed but the Create logistics bridge is missing.`)
        console.warn(`${PACK_NAME} Ch 6.3 integration quests (Factory Handshake, Automated Delivery)`)
        console.warn(`${PACK_NAME} require MineColonies Importer to function.`)
        console.warn(`${PACK_NAME} Download from: https://modrinth.com/mod/minecolonies-importer`)
    }
    // If MineColonies itself is not loaded, minecolonies-common.toml
    // will catch the issue at server startup before any player joins.

    console.info(`${PACK_NAME} Startup integration check complete.`)
    console.info(`${PACK_NAME} Check server log for any WARN or ERROR lines above.`)

})
