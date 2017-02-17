// called from weapon

var projectile = argument0;

if(obj_char.can_shoot == true)
{
    var fireX = x + lengthdir_x(20, image_angle);
    var fireY = y + lengthdir_y(20, image_angle);
    inst = instance_create(fireX, fireY, projectile);
    with(inst)
    {
        speed = other.projectile_speed;
        direction = other.image_angle;
        damage = other.damage;
        owner = origin.CHARACTER;
        image_angle = other.image_angle;
    }
    obj_char.can_shoot = false;
    obj_char.alarm[0] = 20;
}
