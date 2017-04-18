image_angle = point_direction(x, y, obj_char.x, obj_char.y);
if(newPath == true)
{
    newPath = false;
    grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);
    path = path_add();
    mp_grid_add_instances(grid, obj_terrain_wall, 1);
    
    if(point_distance(x, y, obj_char.x, obj_char.y) > 64)
    {
        mp_potential_path(path, obj_char.x, obj_char.y, 2, 4, 1);
        mp_grid_path(grid, path, x, y, obj_char.x + irandom_range(-64, 64), obj_char.y+ irandom_range(-64, 64), 1);
        path_start(path, 3, "", 0);
    }
    
    else
    {
        mp_potential_path(path, x + 64, y + 64, 2, 4, 1);
        mp_grid_path(grid, path, x, y, obj_char.x + irandom_range(0, 64), obj_char.y+ irandom_range(0, 64), 1);
        path_start(path, 3, "", 0);
    }
    alarm[1] = 60;
}
    
