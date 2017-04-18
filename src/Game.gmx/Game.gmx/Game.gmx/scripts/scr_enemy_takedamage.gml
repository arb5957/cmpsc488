var damage = argument0;

if(not invulnerable)
{
    invulnerable = true;
    hp -= damage;
    obj_universal_controller.damage_done+=damage;
    
    alarm[11] = invulnerable_time;
    
}

if(hp <= 0)
{
    instance_destroy();
}
