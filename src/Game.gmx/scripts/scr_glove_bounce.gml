///Script for the obj_glove

angle = image_angle;
image_speed = 0.1;

if(owner == owners.ENEMY)
{
    angle = (angle + irandom_range(-32, 32)) mod 360;
}

//play sound
if(not global.mute_sfx)
{
    audio_play_sound(sfx_droplet_hi,0,false);
}

inst = instance_create(x, y, obj_bounce_ball);
inst2 = instance_create(x, y, obj_bounce_ball);
with(inst)
{
    speed = 7;
    direction = other.angle - 30;
    damage = other.damage;
    owner = other.owner;
    from_weapon = other.id;
    lifetime = other.level;
}

with(inst2){
    speed = 7;
    direction = other.angle + 30;
    damage = other.damage;
    owner = other.owner;
    from_weapon= other.id;
    lifetime = other.level;
}

alarm[COOLDOWN] = cooldown/2;
can_activate = false;
