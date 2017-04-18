

if instance_exists(above_part)
{   
    image_angle = above_part.image_angle;
    mp_potential_step_object(above_part.x + lengthdir_x(32, above_part.image_angle - 180), above_part.y + lengthdir_y(32, above_part.image_angle - 180), 2, obj_terrain_wall); 
}
