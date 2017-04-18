if (equipped && instance_exists(obj_char))
{
    image_angle = obj_char.image_angle;
    x = obj_char.x + lengthdir_x(20, image_angle);
    y = obj_char.y + lengthdir_y(20, image_angle);
}
