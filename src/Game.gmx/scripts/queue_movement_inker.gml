if(hp == enemy_max_hp)
{
    if(path_exists(path)){
        path_delete(path);
    }
    
    path = path_add();
    //mp_potential_path(path, obj_char.x, obj_char.y, 2, 4, 1);
    mp_grid_path(global.grid, path, x, y, obj_char.x + irandom_range(-120, 120), obj_char.y+ irandom_range(-120, 120), 1);
    path_start(path, move_speed, "", 0);
    path_endaction = path_action_stop;
    alarm[3] = 240;
}
else
{
    if( inking == false)
    {
        if(path_exists(path)){
            path_delete(path);
        }
        path = path_add();
        //mp_potential_path(path, obj_char.x, obj_char.y, 2, 4, 1);
        mp_grid_path(global.grid, path, x, y, obj_char.x + irandom_range(-64, 64), obj_char.y+ irandom_range(-64, 64), 1);
        path_start(path, 3, "", 0);
        path_endaction = path_action_stop;
        alarm[3] = 60;
    }
}

with(Queue_Control)
{
    pathing = false;
}
