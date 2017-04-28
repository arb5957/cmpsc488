///scr_save_current_status()

ini_open("world_status" + string(global.save_selected) + ".ini");

// Save universal controller
ini_section_delete("controller_config");
ini_write_real("controller_config", "world_difficulty", obj_universal_controller.world_difficulty);
ini_write_real("controller_config", "farthest_world", obj_universal_controller.farthest_world);

//Save character's current position
ini_section_delete("char_position");
ini_write_real("char_position", "x", obj_char.x);
ini_write_real("char_position", "y", obj_char.y);
ini_write_real("char_position", "room_x", obj_universal_controller.room_x);
ini_write_real("char_position", "room_y", obj_universal_controller.room_y);

ini_close();
