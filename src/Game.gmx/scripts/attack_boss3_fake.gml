if(can_attack)
{
    can_attack = false;
    alarm[1] = 120;
    
    angle = 0;
    var i;
    
    for(i = 0; i < 4; i++)
    {
        inst_ice_shot = instance_create(x, y, obj_ice_shot);
        
        with(inst_ice_shot)
        {
            speed = 4;
            direction = other.angle;
            owner = owners.ENEMY;
            damage = 5;
        }
        
        angle += 90;
    }

}



