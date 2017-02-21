globalvar weap_array;
globalvar enemy_movements;
globalvar items_array;
globalvar attack_pattern_array;


weap_array[1] = "obj_blue_gun";

items_array[1] = 1;

enemy_movements[1] = "circle";
enemy_movements[2] = "speed";
enemy_movements[3] = "speed";

attack_pattern_array[1] = "aggressive";
attack_pattern_array[2] = "within_range";

enum owners
{
    ENEMY,
    CHARACTER
}
