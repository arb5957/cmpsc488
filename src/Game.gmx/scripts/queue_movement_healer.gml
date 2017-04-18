if(path_exists(path)){
    path_delete(path);
}

path = path_add();
//mp_potential_path(path, nearest.x, nearest.y, 2, 4, 1);
mp_grid_path(global.grid, path, x, y, nearest.x, nearest.y, 1);
path_start(path, move_speed, "", 0);
alarm[1] = 60;

with(Queue_Control)
{
    pathing = false;
}
