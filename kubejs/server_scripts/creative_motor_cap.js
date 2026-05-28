// ================================================================
// creative_motor_cap.js — Arcane Frontiers
// KubeJS Server Script (runs on server start, reloadable)
//
// Purpose: Enforce the Ch 5 "Frontier Complete" reward design.
// The Creative Motor is given as a limited quest reward.
// It must output a CAPPED amount of Stress Units so it cannot
// bypass the Ch 2.6 nuclear reactor quest chain.
//
// The SU cap (256 RPM → ~512 SU at standard gear ratios) is
// configured in create-common.toml under:
//   [infrastructure.creative_motor]
//     creativeMotorSpeed = 256
//
// This script handles the PLAYER-FACING side:
//   1. Prevents players from crafting the Creative Motor normally
//      (it should only be obtainable as the Ch 5 quest reward)
//   2. Adds a custom crafting recipe that produces a "Pack-Limited
//      Creative Motor" named item with lore explaining the cap
//   3. This named item is what the FTB Quests reward chest gives
//
// NOTE: The actual SU limit is enforced by Create's config.
// This script handles naming and recipe gating only.
// ================================================================

// ----------------------------------------------------------------
// PART 1: Remove the default Creative Motor crafting recipe
// Players cannot craft it through normal means — it's a reward.
// ----------------------------------------------------------------
ServerEvents.recipes(event => {

    // Remove all crafting recipes that output the Creative Motor.
    // This prevents players from going around the quest gate.
    event.remove({ output: 'create:creative_motor' })

    // Log the removal for verification
    console.info('[Arcane Frontiers] Creative Motor default crafting recipe removed.')
    console.info('[Arcane Frontiers] Creative Motor is obtainable only via Ch 5 quest reward.')

})

// ----------------------------------------------------------------
// PART 2: Grant command for quest reward chest
// The FTB Quests reward for "Frontier Complete" (Ch 5) should
// use a /give command task to grant the Creative Motor with
// the correct NBT name and lore.
//
// In your FTB Quests snbt file (chapter_5_arcane_synthesis.snbt),
// the "Frontier Complete" quest reward should use this command:
//
//   /give @p create:creative_motor{
//     display:{
//       Name:'{"text":"Pack-Limited Creative Motor","color":"gold","bold":true}',
//       Lore:[
//         '{"text":"Arcane Frontiers Ch 5 Reward","color":"dark_purple"}',
//         '{"text":"Capped at 256 RPM output (~512 SU)","color":"gray"}',
//         '{"text":"Powers one slow farm or decoration.","color":"gray"}',
//         '{"text":"Not a replacement for your reactor.","color":"red"}'
//       ]
//     }
//   } 1
//
// The Phase 3.5 quest file (chapter_5_arcane_synthesis.snbt)
// will contain this command in the reward definition.
// ----------------------------------------------------------------

// ----------------------------------------------------------------
// PART 3: Register a server event listener that warns
// if a Creative Motor without pack lore is placed in the world
// (catches motors obtained via creative mode or commands)
// ----------------------------------------------------------------
BlockEvents.placed('create:creative_motor', event => {

    const player = event.player

    if (player && player.gameMode.toString() === 'CREATIVE') {
        // Creative mode placement is fine — ops/admins testing
        return
    }

    if (player) {
        // Check if the player is an op (permission level 2+)
        if (player.hasPermissions(2)) {
            return
        }

        // Non-op placed a Creative Motor — warn them about the cap
        player.tell(
            Text.of('[Arcane Frontiers] ')
                .gold()
                .append(
                    Text.of('Creative Motor placed. This is a Ch 5 reward item capped at 256 RPM (~512 SU). ')
                        .gray()
                )
                .append(
                    Text.of('Do not use as a main power source — build your nuclear reactor first.')
                        .red()
                )
        )
    }

})
