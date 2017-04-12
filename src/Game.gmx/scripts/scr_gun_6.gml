///Script for the obj_glove

angle = image_angle;
inst = instance_create(x, y, obj_wave);
effect_create_above(ef_flare, x,y, 2, c_yellow);

with(inst)
{
    speed = 7;
    direction = other.angle;
    image_angle = other.image_angle+random_range(0,360);
    damage = other.damage;
    owner = other.owner;
}
alarm[COOLDOWN] = cooldown/2;
can_activate = false;
