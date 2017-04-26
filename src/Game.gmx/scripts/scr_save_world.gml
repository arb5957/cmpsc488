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
        
        ini_close();
    }
}

scr_save_current_status();
