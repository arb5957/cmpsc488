//Setting possible weapons
global.weap_array[1] = "obj_blue_gun";
global.weap_array[2] = "obj_dagger";
global.weap_array[3] = "obj_glove";
global.weap_array[4] = "obj_dual_sword";
global.weap_array[5] = "obj_sword";
global.weap_array[6] = "obj_spin_blade";

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
