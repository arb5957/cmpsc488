///Script for the dual sword
if instance_exists(owner_id)
{
    if(activated){
        image_angle = owner_id.image_angle;
        x = owner_id.x + lengthdir_x(40, owner_id.image_angle);
        y = owner_id.y + lengthdir_y(40, owner_id.image_angle);       
    }else{
        image_angle = owner_id.image_angle;
        x = owner_id.x + lengthdir_x(0, owner_id.image_angle);
        y = owner_id.y + lengthdir_y(0, owner_id.image_angle);
    }
}

