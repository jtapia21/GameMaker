/// @description Cancels rain when player enter game 

// Destroys all particles that are in the room when player
// starts the game
part_type_destroy(partRain_sys);
part_emitter_destroy(partPuddle, partRain_emit);
part_system_destroy(partRain_sys);
