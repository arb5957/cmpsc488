///scr_position_character()
if(instance_exists(obj_char)) {
    move_x = 16;
    move_y = 48;
    var spawn_side;
    if(obj_char.exit_taken == 0) {
        spawn_side = 2;
    }
    else if(obj_char.exit_taken == 1) {
        spawn_side = 3;
    }
    else if(obj_char.exit_taken == 2) {
        spawn_side = 0;
    }
    else {
        spawn_side = 1;
    }
    sdb(string(spawn_side));
    if(instance_exists(obj_next_room)) {
        for(var i=0; i<instance_number(obj_next_room); i++) {
            spawn = instance_find(obj_next_room, i);
            if(spawn_side == 0) {
                if(instance_position(spawn.x-16, spawn.y+16, obj_floor)) { // &&
                    //spawn.dir == 0) {
                    obj_char.x = spawn.x-16;
                    obj_char.y = spawn.y+16;
                    break;
                }
            }
            else if(spawn_side == 1) {
                if(instance_position(spawn.x+16, spawn.y+48, obj_floor)) { // &&
                    //spawn.dir == 1) {
                    obj_char.x = spawn.x+16;
                    obj_char.y = spawn.y+48;
                    break;
                }
            }
            else if(spawn_side == 2) {
                if(instance_position(spawn.x+48, spawn.y+16, obj_floor)) { //&&
                    //spawn.dir == 2) {
                    obj_char.x = spawn.x+48;
                    obj_char.y = spawn.y+16;
                    break;
                }
            }
            else { // spawn_side == 3
                if(instance_position(spawn.x+16, spawn.y-16, obj_floor)) { // &&
                    //spawn.dir == 3) {
                    obj_char.x = spawn.x+16;
                    obj_char.y = spawn.y-16;
                    break;
                }
            }
        }
    }
}
