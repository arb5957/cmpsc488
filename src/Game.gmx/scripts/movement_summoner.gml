if(point_distance(x, y, obj_char.x, obj_char.y) < 82 && newPath == true)
{
    sprite_index = spr_enemy_summon_temp;    

    newPath = false;
    //ds_queue_enqueue(global.movement_queue, id);
    //grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);
    path = path_add();
    //mp_grid_add_instances(grid, obj_terrain_wall, 1);
    //mp_potential_path(path, obj_char.x, obj_char.y, 2, 4, 1);
    mp_grid_path(global.grid, path, x, y, obj_char.x + choose(-400, 400), obj_char.y+ irandom_range(-300, 300), 1);
    path_start(path, move_speed*2, "", 0);
    path_endaction = path_action_stop;
    alarm[1] = 60;
    
}


