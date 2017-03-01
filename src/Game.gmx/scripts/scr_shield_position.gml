if instance_exists(owner_id)
{
    image_angle = owner_id.image_angle;
    x = owner_id.x + lengthdir_x(0, owner_id.image_angle);
    y = owner_id.y + lengthdir_y(0, owner_id.image_angle);
}
