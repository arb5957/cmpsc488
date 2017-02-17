if can_shoot == true && point_distance(x, y, obj_char.x, obj_char.y) < 128
{
    inst = instance_create(weapon_inst.x, weapon_inst.y, obj_bullet);
    with(inst)
    {
        speed = 5;
        direction = other.image_angle;
        damage = other.weapon_inst.damage;
        owner = 0;
    }
    can_shoot = false;
    alarm[0] = 60;
}
