if can_heal == true
{
    can_heal = false;
    instance_create(x, y, obj_heal_aura);
    
    alarm[2] = 300;
}
