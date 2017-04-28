angle = 0;
var i;

if(can_attack == true)
{
    can_attack = false;
    for(i = 0; i < 24; i++)
    {
        inst_float_shot = instance_create(x, y, obj_float_bullet);
        
        with(inst_float_shot)
        {
            speed = 2;
            direction = other.angle;
            owner = owners.ENEMY;
            damage = 5;
        }
        
        angle += 15;
    }
    alarm[7] = 300;
}

