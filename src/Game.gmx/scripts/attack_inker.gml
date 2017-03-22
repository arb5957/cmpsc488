if(hp == enemy_max_hp && point_distance(x, y, obj_char.x, obj_char.y) < 100 && can_ink == true)
{
    inst_ink_bullet = instance_create(x, y, obj_ink_shot);
    
    can_ink = false;
    
    alarm[2] = 60;
    with(inst_ink_bullet)
    {
        damage = 2;
        direction = other.image_angle;
        speed = 2;
        origin_x = other.x;
        origin_y = other.y;
        dest_x = obj_char.x;
        dest_y = obj_char.y;
        owner = owners.ENEMY;
    }
}

else if( hp < enemy_max_hp && can_ink == true)
{
    path_end();
    can_ink = false;
    inking = true;
    alarm[1] = 30;
}

if(inking == true)
{
    image_angle = (image_angle + irandom_range(10, 40)) mod 360;
    
    inst_ink_bullet = instance_create(x, y, obj_ink_shot);
    
    with(inst_ink_bullet)
    {
        damage = 2;
        direction = other.image_angle;
        speed = 2;
        origin_x = other.x;
        origin_y = other.y;
        distance = irandom_range(40, 500);
        owner = owners.ENEMY;
    }
}
    
