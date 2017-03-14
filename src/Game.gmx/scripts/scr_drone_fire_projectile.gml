// called from weapon

var projectile = argument0;
var projectile_direction = argument1;

if(can_shoot == true)
{
    inst = instance_create(x, y, projectile);
    with(inst)
    {
        speed = other.projectile_speed;
        direction = argument1;
        damage = other.damage;
        owner = owners.CHARACTER;
        image_angle = direction;
    }
    obj_char.can_shoot = false;
    obj_char.alarm[0] = 20;
}
