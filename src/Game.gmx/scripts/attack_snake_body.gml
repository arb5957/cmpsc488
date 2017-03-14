angle = 0;
var i;

for(i = 1; i <=11; i+=1)
{
    inst_flame = instance_create(x, y, obj_flame);
    inst_flame.damage = 3;
    inst_flame.image_angle = angle;
    inst_flame.direction = angle;
    inst_flame.speed = 2;
    inst_flame.owner = owners.ENEMY;
    angle = (angle + irandom_range(1, 45)) mod 360;
}
