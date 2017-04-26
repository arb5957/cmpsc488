///scr_save_world()

//Save world

save_slot = string(argument0);

scr_save_room();

file_delete("room_save_persistent" + string(obj_universal_controller.world_difficulty) + "_" + save_slot + ".ini");

for(var i=1; i<=4; i++) {
    if(file_exists("room_save" + string(i) + ".ini")) {
        file_copy("room_save" + string(i) + ".ini", 
            "room_save_persistent" + string(i) + "_" + save_slot + ".ini");
            
        ini_open("room_save_persistent" + string(i) + "_" + save_slot + ".ini");
        // Save universal controller
        ini_section_delete("controller_config");
        ini_write_real("controller_config", "world_difficulty", obj_universal_controller.world_difficulty);
        ini_write_real("controller_config", "farthest_world", obj_universal_controller.farthest_world);
        
        // save world configuration 
        ini_section_delete("room_config");
        ini_write_real("room_config", "width", obj_universal_controller.grid_width);
        ini_write_real("room_config", "height", obj_universal_controller.grid_height);
        for(var row=0; row<obj_universal_controller.grid_height; row++) {
            for(var col=0; col<obj_universal_controller.grid_width; col++) {
                ini_write_real("room_config", string(row) + "," + string(col),
                    ds_grid_get(obj_universal_controller.room_config, col, row));
            }
        }
        
        //Save character's current position
        ini_section_delete("char_position");
        ini_write_real("char_position", "x", obj_char.x);
        ini_write_real("char_position", "y", obj_char.y);
        ini_write_real("char_position", "room_x", obj_universal_controller.room_x);
        ini_write_real("char_position", "room_y", obj_universal_controller.room_y);
        
        ini_close();
    }
}
