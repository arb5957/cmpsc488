if(digging == true && can_quake == true)
{
    can_quake = false;
    alarm[5] = 80;
    inst_quake = instance_create(x, y, obj_quake);
    inst_quake.owner = owners.ENEMY;
    inst_quake.damage = 2;
}
else if(digging == false)
{
    script_execute(attack_aggressive);
}
