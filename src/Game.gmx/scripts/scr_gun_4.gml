///Script for the obj_glove

if(owner == owners.CHARACTER)
{
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
        from_weapon = other.id;
    }
    alarm[COOLDOWN] = cooldown/2;
    can_activate = false;
}

if(owner == owners.ENEMY && enemy_can_fire == true)
{
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
    enemy_can_fire = false;
    alarm[1] = 60;
}
    
