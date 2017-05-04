///scr_save_world()

//Save world

save_slot = string(argument0);

scr_save_room();
with(obj_universal_controller) {
    ini_open("room_save" + string(world_difficulty) + ".ini");
    ini_write_real("room_config", "height", grid_height);
    ini_write_real("room_config", "width", grid_width);
    for(var row = 0; row < grid_height; row++) {
        for(var col = 0; col < grid_width; col++) {
            ini_write_real("room_config", string(row) + "," + string(col),
                ds_grid_get(room_config, col, row));
        }
    }
}

file_delete("room_save_persistent" + string(obj_universal_controller.world_difficulty) + "_" + save_slot + ".ini");

for(var i=1; i<=4; i++) {
    if(file_exists("room_save" + string(i) + ".ini")) {
        file_copy("room_save" + string(i) + ".ini", 
            "room_save_persistent" + string(i) + "_" + save_slot + ".ini");
        
            
        if(room == rm_gamescreen) {    
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
}

scr_save_current_status();
