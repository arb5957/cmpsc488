//Setting possible weapons
global.weap_array[1] = "obj_blue_gun";
global.weap_array[2] = "obj_dagger";
global.weap_array[3] = "obj_glove";
global.weap_array[4] = "obj_dual_sword";
global.weap_array[5] = "obj_sword";
global.weap_array[6] = "obj_spin_blade";

global.weap_array[7] = "obj_flame_gun";

global.weap_array[8] = "obj_shield";
global.weap_array[9] = "obj_turret_maker";

global.weap_array[10] = "obj_gun_1"; 
global.weap_array[11] = "obj_gun_2";
global.weap_array[12] = "obj_gun_3";
global.weap_array[13] = "obj_gun_4";

global.weap_array[14] = "obj_whip";
global.weap_array[15] = "obj_health_pack_dropper";
//obj_glove_bounce
//obj_slower

//obj_bow
//obj_pet
//obj_insta Enemies shouldn't have them but maybe they can drop it
//obj_recon_drone
//obj_attack_drone
//obj_lunge
//obj_teleport

//obj_speed_boost
//obj_flying_stone
//obj_potion_speed
//obj_quake_boots : just for digger
//obj_shovel : just for digger
//obj_frog not for enemies
//obj_speed_zone
//obj_gun_5
//obj_gun_6
//obj_gun_7
//obj_speed_buff

//Setting possible items
global.items_array[1] = "obj_lunge";
global.items_array[2] = "obj_teleport";


//Enemy settings
//Setting movement sets for enemies
global.enemy_movements[1] = "circle";
global.enemy_movements[2] = "speed";
global.enemy_movements[3] = "stalker";

//Setting attack patterns for enimes
global.attack_pattern_array[1] = "aggressive";
global.attack_pattern_array[2] = "within_range";

enum owners
{
    ENEMY,
    CHARACTER
}

script_execute(Globals_input);

//Testing section

script_execute(Globals_saving);
//script_execute(src_test_load, 0);

global.mute = false;
global.mute_sfx = false;

global.movement_queue = ds_queue_create();
global.grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);

global.saved_items_array[0] = obj_bow;
global.saved_items_array[1] = obj_dagger;

//This variable is used to check if the player visited the gamescreen
//for the first time after making a new character or loading a new character.
//This variable is important so that we don't overwrite the player's loadout
//after the player defeats a boss and goes back to the gamescreen.
global.first_time_on_gamescreen = false;

//This enables many cheats such as the spawn_overlay,
//and solving puzzles instantly.
global.debug = false;

/*
//For testing.
global.saved_items_array[2] = obj_blue_gun;
global.saved_items_array[3] = obj_flame_gun;
global.saved_items_array[4] = obj_glove;
global.saved_items_array[5] = obj_dual_sword;
global.saved_items_array[6] = obj_sword;
global.saved_items_array[7] = obj_shield;
global.saved_items_array[8] = obj_spin_blade;
global.saved_items_array[9] = obj_turret_maker;
global.saved_items_array[10] = obj_pet;
global.saved_items_array[11] = obj_gun_1;
global.saved_items_array[12] = obj_gun_2;
global.saved_items_array[13] = obj_gun_3;
global.saved_items_array[14] = obj_gun_4;
global.saved_items_array[15] = obj_insta;
global.saved_items_array[16] = obj_glove_bounce;
global.saved_items_array[17] = obj_whip;
global.saved_items_array[18] = obj_recon_remote;
global.saved_items_array[19] = obj_att_remote;
global.saved_items_array[20] = obj_gun_5;
global.saved_items_array[21] = obj_gun_6;
global.saved_items_array[22] = obj_gun_7;
global.saved_items_array[23] = obj_potion;
global.saved_items_array[24] = obj_map;
global.saved_items_array[25] = obj_slower;
global.saved_items_array[26] = obj_speed_boost;
global.saved_items_array[27] = obj_flying_stone;
global.saved_items_array[28] = obj_teleport;
global.saved_items_array[29] = obj_potion_poison;
global.saved_items_array[30] = obj_potion_speed;
global.saved_items_array[31] = obj_quake_boots;
global.saved_items_array[32] = obj_shovel;
global.saved_items_array[33] = obj_rain_maker;
global.saved_items_array[34] = obj_snow_maker;
global.saved_items_array[35] = obj_firework_maker;
global.saved_items_array[36] = obj_cloud_maker;
global.saved_items_array[37] = obj_paint_black;
global.saved_items_array[38] = obj_paint_blue;
global.saved_items_array[39] = obj_paint_green;
global.saved_items_array[40] = obj_paint_orange;
global.saved_items_array[41] = obj_paint_purple;
global.saved_items_array[42] = obj_paint_red;
global.saved_items_array[43] = obj_paint_yellow;
global.saved_items_array[44] = obj_health_pack_dropper;
global.saved_items_array[45] = obj_speed_zone;


