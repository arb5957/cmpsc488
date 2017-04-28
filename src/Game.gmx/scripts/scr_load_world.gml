///scr_load_world(integer_load_slot);

var load_slot = string(argument0);
if(load_slot < 1 || load_slot > 3) {
    exit;
}

//if(file_exists("room_save_persistent" + string(world_difficulty) + "_" + load_slot + ".ini")) {
if(file_exists("world_status" + string(load_slot) + ".ini")) {
    ini_open("world_status" + string(load_slot) + ".ini");
    room_x = ini_read_real("char_position", "room_x", -1);
    room_y = ini_read_real("char_position", "room_y", -1);
    char_x = ini_read_real("char_position", "x", 0);
    char_y = ini_read_real("char_position", "y", 0);
    world_difficulty = ini_read_real("controller_config", "world_difficulty", 1);
    farthest_world = ini_read_real("controller_config", "farthest_world", 1);
    //file_copy("room_save_persistent" + string(world_difficulty) + "_" + load_slot + ".ini", 
    //    "room_save" + string(world_difficulty) + ".ini");
    ini_close();
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
}

for(var i = 0; i< 5; i++) {
    if(file_exists("room_save_persistent" + string(i) + "_" + load_slot + ".ini")) {
        file_copy("room_save_persistent" + string(i) + "_" + load_slot + ".ini",
            "room_save" + string(i) + ".ini");
    }
}

ini_open("room_save" + string(world_difficulty) + ".ini");
if(ini_section_exists("room_config")) {
    grid_height = ini_read_real("room_config", "height", 0);
    grid_width = ini_read_real("room_config", "width", 0);
    room_config = ds_grid_create(grid_height, grid_width);
    for(var row = 0; row < grid_height; row++) {
        for(var col = 0; col < grid_width; col++) {
            ds_grid_add(room_config, row, col, 
                ini_read_real("room_config", string(row) + "_" + string(col), 0));
        }
    }
}
ini_close();
