angle = image_angle;

inst_flame = instance_create(x, y, obj_flame);
with(inst_flame)
{
    speed = 5;
    direction = other.angle;
    damage = other.damage;
    owner = other.owner;
}

alarm[COOLDOWN] = cooldown;

can_activate = false;

