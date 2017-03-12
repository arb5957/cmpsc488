if(can_rotate == true && rotate_speed < 5)
{
    rotate_speed++;
    can_rotate = false;
    alarm[4] = 120;
}

image_angle = (image_angle + rotate_speed) mod 360;

if(point_distance(x, y, obj_char.x, obj_char.y) > 400)
{
    if(obj_char.x >= x)
    {
        cx = obj_char.x - 100;
    }
    else
    {
        cx = obj_char.x + 100;
    }
    
    cy = obj_char.y + irandom_range(-100, 100);
    
    if(can_teleport == true)
    {
        x = cx;
        y = cy;
        can_teleport = false;
        rotate_speed = 1;
        alarm[5] = 120;
    }
}
