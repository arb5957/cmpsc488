///Script for the obj_glove

angle = image_angle;
inst = instance_create(x, y, obj_wave);
effect_create_above(ef_explosion, x,y, 0.3, c_yellow);

with(inst)
{
    speed = 7;
    direction = other.angle;
    image_angle = other.image_angle;
    damage = other.damage;
    owner = other.owner;
}
alarm[COOLDOWN] = cooldown/2;
can_activate = false;
