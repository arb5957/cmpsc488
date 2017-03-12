image_angle = point_direction(x, y, obj_char.x, obj_char.y);
if(can_speedup == true)
{
    can_speedup = false;
    alarm[2] = 180;
}

if(newPath == true && speedup < 5)
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

if(speedup == 5)
{
    path_end();
    speedup += 1;
    speed = speedup;
    direction = image_angle;
    alarm[6] = 60;
}

inst = instance_place(x, y, obj_char);

if(inst != noone)
{

    with(obj_char)
    {
        scr_char_takedamage(5 * other.speedup);
        state = states.SLIP;
        speed = 5;
        direction = image_angle;
    }
    alarm[3] = 60;
    speedup = 3;
}
