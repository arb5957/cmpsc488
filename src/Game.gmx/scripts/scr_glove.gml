///Script for the obj_glove


angle = image_angle;
image_speed = 0.2;

if(owner == owners.ENEMY)
{
    angle = (angle + irandom_range(-32, 32)) mod 360;
}

inst = instance_create(x, y, obj_star_1);
inst2 = instance_create(x, y, obj_star_1);
with(inst)
{
    speed = 7;
    direction = other.angle - 30;
    damage = other.damage;
    owner = other.owner;
    from_weapon = other.id;
}

with(inst2){
    speed = 7;
    direction = other.angle + 30;
    damage = other.damage;
    owner = other.owner;
    from_weapon= other.id;
}

alarm[COOLDOWN] = cooldown/2;
can_activate = false;
