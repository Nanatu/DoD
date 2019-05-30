part_system = part_system_create();

part_emitter = part_emitter_create(part_system);

part_type = part_type_create();

part_system_layer(part_system,"BehindPlayer")

part_type_sprite(part_type, spr_Beyonder_Fissure, false, false, false);

part_type_alpha3(part_type, 0, 1, 0);

part_type_life(part_type, game_get_speed(gamespeed_fps)*.4, game_get_speed(gamespeed_fps)*.8);

part_type_scale(part_type, 0.3,0.3);

//part_type_gravity(part_type, 0.05, 90);
