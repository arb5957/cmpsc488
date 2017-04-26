if can_heal == true
{
    can_heal = false;
    
    if(point_distance(x, y, obj_char.x, obj_char.y) < 92)
    {
        instance_create(x, y, obj_hurt_aura);
    }
    else
    {
        instance_create(x, y, obj_heal_aura);
    }
    
    alarm[2] = 300;
}
