//script_execute(scr_char_fire_projectile, obj_arrow);

var fireX = owner_id.x + lengthdir_x(20, image_angle);
var fireY = owner_id.y + lengthdir_y(20, image_angle);
var inst = instance_create(fireX, fireY, obj_arrow);
with(inst)
{
    speed = other.projectile_speed;
    direction = other.image_angle;
    damage = other.damage;
    owner = other.owner;
    image_angle = other.image_angle;
    alarm[0] = other.strength * 25;
}

strength = 1;
pull_time = 0;
image_index = 0;


