if(can_spike == true)
{
    can_spike = false;
    spiking = true;
    alarm[3] = 180;
    
}

if(spiking == true && can_spike == false)
{
    if(keyboard_check(ord('D')))
    {
        instance_create(obj_char.x + irandom_range(-30, 100), obj_char.y + irandom_range(-32, 32), obj_ice_spike);
    }
    else if(keyboard_check(ord('A')))
    {    
        instance_create(obj_char.x + irandom_range(-100, 30), obj_char.y + irandom_range(-32, 32), obj_ice_spike);
    }
    else
    {
        instance_create(obj_char.x, obj_char.y, obj_ice_spike);
    }
    
    spiking = false;
    
    alarm[4] = 30;
}
