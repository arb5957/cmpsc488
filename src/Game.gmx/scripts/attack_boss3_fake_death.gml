angle = 0;
var i;

for(i = 0; i < 12; i++)
{
    inst_ice_shot = instance_create(x, y, obj_ice_shot);
    
    with(inst_ice_shot)
    {
        if(other.angle mod 90 != 0)
        {
            speed = 2;
        }
        else
        {
            speed = 3;
        }
        direction = other.angle;
        owner = owners.ENEMY;
        damage = 5;
    }
    
    angle += 30;
}
