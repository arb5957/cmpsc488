if(point_distance(x, y, obj_char.x, obj_char.y) < 100)
{
    if(can_attack == true)
    {
        path_end();
        can_attack = false;
        attacking = true;
        var i;
        angle = image_angle - 60;
        
        if(angle < 0)
        {
            angle = 360 + angle;
        }
        alarm[2] = 240;
    }
}
    
    if(attacking == true && can_attack == false)
    {
        image_angle = angle;
        angle1 = angle - 20;
        if(angle1 < 0)
        {
            angle1 = 360 + angle1;
        }
        angle2 = (angle + 20) mod 360;
        
        inst_flame = instance_create(x,y, obj_flame);
        inst_flame.direction = angle1;
        inst_flame.owner = owners.ENEMY;
        inst_flame.damage = 3;
        inst_flame.speed = 3;
        
        inst_flame = instance_create(x,y, obj_flame);
        inst_flame.direction = angle;
        inst_flame.owner = owners.ENEMY;
        inst_flame.damage = 3;
        inst_flame.speed = 3;
        
        inst_flame = instance_create(x,y, obj_flame);
        inst_flame.direction = angle2;
        inst_flame.owner = owners.ENEMY;
        inst_flame.damage = 3;
        inst_flame.speed = 3;
        
        angle = angle2;
        attacking = false;
        
        alarm[3] = 15;
    }

            
            
            
