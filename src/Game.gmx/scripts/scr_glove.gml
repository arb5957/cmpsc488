///Script for the obj_glove

angle = image_angle;
image_speed = 0.2;
inst = instance_create(x, y, obj_star_1);
inst2 = instance_create(x, y, obj_star_1);
with(inst)
{
    speed = 7;
    direction = other.angle - 30;
    damage = other.damage;
    owner = other.owner;
}

with(inst2){
    speed = 7;
    direction = other.angle + 30;
    damage = other.damage;
    owner = other.owner;
}

alarm[COOLDOWN] = cooldown/2;
can_activate = false;
