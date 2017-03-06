if(instance_exists(obj_char) && can_activate)
{
    deployed_slower = instance_create(obj_char.x, obj_char.y, obj_slower);
    deployed_slower.on_ground = false;
    deployed_slower.image_speed = 0.2;
    deployed_slower.alarm[1] = 60;
    can_activate = false;
    alarm[COOLDOWN] = cooldown;
    stack_size--;
}
