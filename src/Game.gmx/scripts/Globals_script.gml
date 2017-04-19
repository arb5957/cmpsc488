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

global.movement_queue = ds_queue_create();
global.grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);

global.saved_items_array[0] = obj_bow;
global.saved_items_array[1] = obj_dagger;
