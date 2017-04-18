if(instance_exists(owner_id))
{
    image_angle = owner_id.image_angle;
    x = owner_id.x + lengthdir_x(30, owner_id.image_angle);
    y = owner_id.y + lengthdir_y(30, owner_id.image_angle);
    //show_debug_message("owner type " + string(owner_id.object_index) + " x,y " + string(x) + "," + string(y));
}
