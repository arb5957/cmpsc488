image_angle = point_direction(x, y, obj_char.x, obj_char.y);

if(point_distance(x, y, obj_char.x, obj_char.y) > 64)
{
    if(angleset == true)
    {
        angleset = false;
    }
    //move_towards_point(obj_char.x, obj_char.y, 2);
    //mp_potential_step(obj_char.x, obj_char.y, 2, false);
    mp_potential_step_object(obj_char.x, obj_char.y, 2, obj_enemy_avoid);
}
else
{
    if(angleset == false)
    {
        angleset = true;
        angle = (image_angle + 180) mod 360;
    }
    x = obj_char.x + lengthdir_x(61, angle);
    y = obj_char.y + lengthdir_y(61, angle);
    angle += 2;
    if(angle >= 360)
    {
        angle = 0;
    }
}
           
