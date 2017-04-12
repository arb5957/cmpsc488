image_angle = point_direction(x, y, obj_char.x, obj_char.y);

if(newPath == true)
{
    alarm[1] = irandom_range(60, 90);
    newPath = false;
    grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);
    path = path_add();
    mp_grid_add_instances(grid, obj_terrain_wall, 1);
    mp_potential_path(path, obj_char.x, obj_char.y, 2, 4, 1);
    mp_grid_path(grid, path, x, y, obj_char.x + irandom_range(-64, 64), obj_char.y+ irandom_range(-64, 64), 1);
    path_start(path, move_speed, "", 0);
}
