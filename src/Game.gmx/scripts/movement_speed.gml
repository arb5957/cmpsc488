//point enemy and weapon towards player
image_angle = point_direction(x, y, obj_char.x, obj_char.y);
weapon_inst.image_angle = point_direction(x, y, obj_char.x, obj_char.y);

//Step enemy towards player
//mp_potential_step(obj_char.x, obj_char.y, 2, false);
mp_potential_step_object(obj_char.x, obj_char.y, 2, obj_enemy_avoid);

