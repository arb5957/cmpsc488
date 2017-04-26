///scr_load_world(integer_load_slot);

var load_slot = string(argument0);
if(load_slot < 1 || load_slot > 3) {
    exit;
}

//if(file_exists("room_save_persistent" + string(world_difficulty) + "_" + load_slot + ".ini")) {
if(file_exists("world_status.ini")) {
    ini_open("world_status.ini");
    room_x = ini_read_real("char_position", "room_x", -1);
    room_y = ini_read_real("char_position", "room_y", -1);
    char_x = ini_read_real("char_position", "x", 0);
    char_y = ini_read_real("char_position", "y", 0);
    world_difficulty = ini_read_real("controller_config", "world_difficulty", 1);
    farthest_world = ini_read_real("controller_config", "farthest_world", 1);
    file_copy("room_save_persistent" + string(world_difficulty) + "_" + load_slot + ".ini", 
        "room_save" + string(world_difficulty) + ".ini");
    ini_close();
    sdb("World difficulty: " + string(world_difficulty));
    sdb("Farthest World: " + string(farthest_world));
    /*with(instance_create(1600, 1104, obj_next_world)) {
        world_difficulty = 1;
        sprite_index = spr_next_world;
    }
    
    with(instance_create(1840, 768, obj_next_world)) {
        world_difficulty = 2;
        sprite_index = spr_next_world_2;
    }
    
    with(instance_create(2240, 1008, obj_next_world)) {
        world_difficulty = 3;
        sprite_index = spr_next_world_3;
    }*/
    if(instance_exists(obj_char)) {
        if(not obj_char.using_key) {
            obj_char.x = char_x;
            obj_char.y = char_y;
            loading_char_x = char_x;
            loading_char_y = char_y;
        }
    }       
}
else {
    farthest_world = 1;
    /*with(instance_create(1600, 1104, obj_next_world)) {
        world_difficulty = 1;
        sprite_index = spr_next_world;
    }*/
}
