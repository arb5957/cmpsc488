//point enemy and weapon towards player
image_angle = point_direction(x, y, obj_char.x, obj_char.y);
weapon_inst.image_angle = point_direction(x, y, obj_char.x, obj_char.y);

//Step enemy towards player
//mp_potential_step(obj_char.x, obj_char.y, 2, false);


grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);
path = path_add();
mp_grid_add_instances(grid, obj_terrain_wall, 1);
mp_grid_path(grid, path, x, y, obj_char.x, obj_char.y, 1);
path_start(path, 2, "", 0);
