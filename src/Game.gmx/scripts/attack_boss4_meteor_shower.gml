
if(can_meteor == true)
{
    
    can_meteor = false;
    meteoring = true;
    alarm[1] = 120;
}

if(can_meteor == false && meteoring == true)
{
    
    var number_meteor;
    
    for(number_meteor = irandom_range(1, 4); number_meteor > 0; number_meteor--)
    {
        inst_meteor = instance_create(obj_char.x + irandom_range(-200, 200), obj_char.y - irandom_range(350,415), obj_meteor);
        
        with(inst_meteor)
        {
            y_drop = room_height;
        }
    }
    
    meteoring = false;
    alarm[2] = 30;
}
