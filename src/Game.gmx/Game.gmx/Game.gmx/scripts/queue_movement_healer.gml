grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);
path = path_add();
mp_grid_add_instances(grid, obj_terrain_wall, 1);
mp_potential_path(path, nearest.x, nearest.y, 2, 4, 1);
mp_grid_path(grid, path, x, y, nearest.x, nearest.y, 1);
path_start(path, move_speed, "", 0);
alarm[1] = irandom_range(30, 60);

with(Queue_Control)
{
    pathing = false;
}
