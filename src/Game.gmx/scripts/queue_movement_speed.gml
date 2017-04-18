if(path_exists(path)){
    path_delete(path);
}

path = path_add();
//mp_potential_path(path, obj_char.x, obj_char.y, 2, 4, 1);
mp_grid_path(global.grid, path, x, y, obj_char.x + irandom_range(-64, 64), obj_char.y+ irandom_range(-64, 64), 1);
path_start(path, move_speed, "", 0);
alarm[1] = 60;

with(Queue_Control)
{
    pathing = false;
}
