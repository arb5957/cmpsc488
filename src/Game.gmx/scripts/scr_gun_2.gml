//
if(owner == owners.CHARACTER)
{
    obj_gun_2.bullets = 0;
    alarm[COOLDOWN] = cooldown;
    can_activate = false; 
}

if(owner == owners.ENEMY && can_activate == true)
{
    alarm[10] = 120;
    can_activate = false;
    gun_shooting = true;
}
