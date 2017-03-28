if(can_attack)
{
    can_attack = false;
    alarm[1] = 60;
    
    var i;
    
    angle = start_angle;
    
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
        
        angle = (angle + 90) mod 360;
    }
    
    start_angle = (start_angle + 15) mod 360;

}



