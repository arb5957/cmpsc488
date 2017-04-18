if(owner == owners.CHARACTER)
{
    instance_create(x,y,obj_health_panel);
    can_activate = false;
    activated = true;
    alarm[COOLDOWN] = cooldown;
}

if(owner == owners.ENEMY && can_activate == true)
{
    health_dropper = instance_create(x, y, obj_health_panel);
    with(health_dropper)
    {
        owner = owners.ENEMY;
    }
    can_activate = false;
    alarm[COOLDOWN] = 600;
}
