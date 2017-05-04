if(can_invisible == true)
{
    can_invisible = false;
    image_index = 1;
    show_hp = false;
    alarm[4] = 360;
}

if(newPath == true)
{
    newPath = false;
    grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);
    path = path_add();
    mp_grid_add_instances(grid, obj_terrain_wall, 1);
    mp_grid_path(grid, path, x, y, x + irandom_range(-400, 400), y + irandom_range(-300, 300), 1);
    path_start(path, 2, "", 0);
    path_endaction = path_action_stop;
    alarm[3] = 120;
}
