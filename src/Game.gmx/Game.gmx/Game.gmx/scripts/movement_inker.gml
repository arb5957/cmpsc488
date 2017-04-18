if( hp == enemy_max_hp)
{
    image_angle = point_direction(x, y, obj_char.x, obj_char.y);
    
    if(newPath == true)
    {
        //alarm[3] = 240;
        newPath = false;
        ds_queue_enqueue(global.movement_queue, id);
        //grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);
        //path = path_add();
        //mp_grid_path(grid, path, x, y, obj_char.x + irandom_range(-120, 120), obj_char.y+ irandom_range(-120, 120), 1);
        //path_start(path, move_speed, "", 0);
        //path_endaction = path_action_stop;
    }
}

else
{
    
    if (newPath == true && inking == false)
    {
        image_angle = point_direction(x, y, obj_char.x, obj_char.y);
        //alarm[3] = irandom_range(30, 60);
        newPath = false;
        ds_queue_enqueue(global.movement_queue, id);
        //grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);
        //path = path_add();
        //mp_grid_add_instances(grid, obj_terrain_wall, 1);
        //mp_potential_path(path, obj_char.x, obj_char.y, 2, 4, 1);
        //mp_grid_path(grid, path, x, y, obj_char.x + irandom_range(-64, 64), obj_char.y+ irandom_range(-64, 64), 1);
        //path_start(path, 3, "", 0);
        //path_endaction = path_action_stop;
    }
}
