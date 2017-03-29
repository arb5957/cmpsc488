///Script for the obj_glove

angle = image_angle;
inst = instance_create(x, y, obj_expand_shot);
effect_create_above(ef_ring, x, y, 0.5, c_aqua);

with(inst)
{
    speed = 0;
    direction = other.angle;
    image_angle = other.image_angle;
    damage = other.damage;
    owner = other.owner;
}
alarm[COOLDOWN] = cooldown/2;
can_activate = false;
