if(owner == owners.CHARACTER)
{
    turret_inst = instance_create(x,y,obj_turret);
    with(turret_inst)
    {
        owner = other.owner;
    }
    can_activate = false;
    activated = true;
    alarm[COOLDOWN] = cooldown;
}

if(owner == owners.ENEMY)
{
    if(can_activate == true)
    {
        alarm[1] = 120;
        can_activate = false;
        turret_inst = instance_create(x, y, obj_turret);
        with(turret_inst)
        {
            owner = other.owner;
        }
    }
}
