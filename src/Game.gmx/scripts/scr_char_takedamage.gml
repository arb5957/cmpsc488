///Get hurt and be invulnerable for invulnerable_time.

var damage = argument0;

if(not invulnerable)
{
    invulnerable = true;
    hp -= damage;
    
    //Set the alarm that makes the player vulnerable again.
    alarm_set(alarms.invulnerability, invulnerable_time);
    
    //Just a temporary effect to show we got hit.
    effect_create_below(ef_explosion,x,y,1,c_red);
}
