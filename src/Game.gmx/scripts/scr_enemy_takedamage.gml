var damage = argument0;
var level = argument1;

if(not invulnerable)
{
    scr_enemy_damage_particle();
    invulnerable = true;
    hp -= (damage + level);
    obj_universal_controller.damage_done+=(damage + level);
    
    alarm[11] = invulnerable_time;
    
}

if(hp <= 0)
{
    instance_destroy();
}
