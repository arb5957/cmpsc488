///scr_save_room();

//This needs to be called inside or with obj_char.

if(room == rm_gamescreen) {
    room_number = "town";
}
else {
    room_number = "room" + string(obj_universal_controller.room_x)
        + "_" + string(obj_universal_controller.room_y);
}
ini_open("room_save.ini");
ini_section_delete(string(room_number)); // delete the section for this room if it exists
//Save terrain
key0 = 0;
key1 = 0;
for(var i=0; i<instance_number(obj_terrain); i++) {
    terrain = instance_find(obj_terrain, i);
    ini_write_real(string(room_number), string(key0) + "," + string(key1), terrain.object_index);
    key1++;
    ini_write_real(string(room_number), string(key0) + "," + string(key1), terrain.x);
    key1++;
    ini_write_real(string(room_number), string(key0) + "," + string(key1), terrain.y);
    if(terrain.object_index == obj_next_room) { // if terrain is obj_next_room add information about the direction of this exit
        key1++;
        ini_write_real(string(room_number), string(key0) + "," + string(key1), terrain.dir);
    }
    else if(terrain.object_index == obj_to_boss_room) {
        key1++;
        ini_write_real(string(room_number), string(key0) + "," + string(key1), terrain.dir);
    }
    key0++;
    key1=0;
}

//Save enemies
for(var i=0; i<instance_number(obj_enemy_base); i++) {
    enemy = instance_find(obj_enemy_base, i);
    if(enemy.object_index == obj_enemy_snake_body) { // do not spawn snake body
        continue;
    }
    ini_write_real(string(room_number), string(key0) + "," + string(key1), enemy.object_index);
    key1++;
    ini_write_real(string(room_number), string(key0) + "," + string(key1), enemy.x);
    key1++;
    ini_write_real(string(room_number), string(key0) + "," + string(key1), enemy.y);
    if(enemy.object_index == obj_enemy_duplicate_fake) { //store parent_id
        ini_write_real(string(room_number), string(key0) + "," + string(key1), enemy.parent_id);
    }
    key0++;
    key1=0;
}

//Save items
for(var i=0; i<instance_number(obj_item); i++) {
    item = instance_find(obj_item, i);
    if(item.on_ground) {
        ini_write_real(string(room_number), string(key0) + "," + string(key1), item.object_index);
        key1++;
        ini_write_real(string(room_number), string(key0) + "," + string(key1), item.x);
        key1++;
        ini_write_real(string(room_number), string(key0) + "," + string(key1), item.y);
        key0++;
        key1 = 0;
    }
}

ini_close();
