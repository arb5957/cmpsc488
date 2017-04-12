//point enemy and weapon towards player

weapon_inst.image_angle = point_direction(x, y, obj_char.x, obj_char.y);

//Step enemy towards player
//mp_potential_step(obj_char.x, obj_char.y, 2, false);

if(newPath == true)
{
    alarm[1] = 240;
    newPath = false;
    grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);
    path = path_add();
    mp_grid_path(grid, path, x, y, obj_char.x + irandom_range(-120, 120), obj_char.y+ irandom_range(-120, 120), 1);
    path_start(path, move_speed, "", 0);
}
