///Fire gun.
angle = image_angle;
inst = instance_create(x, y, obj_teleshot);
with(inst)
{
    speed = 5;
    direction = other.angle;
    damage = other.damage;
    owner = other.owner;
}
alarm[COOLDOWN] = cooldown;
can_activate = false;
