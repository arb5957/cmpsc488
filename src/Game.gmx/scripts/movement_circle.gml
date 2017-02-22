image_angle = point_direction(x, y, obj_char.x, obj_char.y);

if(point_distance(x, y, obj_char.x, obj_char.y) > 64)
{
    if(angleset == true)
    {
        angleset = false;
    }
    //move_towards_point(obj_char.x, obj_char.y, 2);
    //mp_potential_step(obj_char.x, obj_char.y, 2, false);
    grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);
    path = path_add();
    mp_grid_add_instances(path, obj_terrain_wall, 1);
    mp_grid_path(grid, path, x, y, obj_char.x, obj_char.y, 1);
    path_start(path, 2, "", 0);
}
else
{
    path_end();
    if(angleset == false)
    {
        angleset = true;
        angle = (image_angle + 180) mod 360;
    }
    mp_potential_step_object(obj_char.x + lengthdir_x(61, angle), obj_char.y + lengthdir_y(61, angle), 2, obj_terrain_wall);
    angle += 2;
    if(angle >= 360)
    {
        angle = 0;
    }
}
           
