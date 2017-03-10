image_angle = point_direction(x, y, obj_char.x, obj_char.y);
if(can_speedup == true)
{
    can_speedup = false;
    alarm[2] = 120;
}

if(newPath == true)
{
    alarm[1] = 15;
    newPath = false;
    grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);
    path = path_add();
    mp_grid_add_instances(grid, obj_terrain_wall, 1);
    mp_potential_path(path, obj_char.x, obj_char.y, 2, 4, 1);
    mp_grid_path(grid, path, x, y, obj_char.x, obj_char.y, 1);
    path_start(path, speedup, "", 0);
}

inst = instance_place(x, y, obj_char);

if(inst != noone)
{

    with(obj_char)
    {
        scr_char_takedamage(10);
        state = states.SLIP;
        speed = 5;
        direction = image_angle;
    }
    alarm[3] = 60;
    speedup = 1;
}
