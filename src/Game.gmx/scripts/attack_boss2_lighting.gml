if(image_index == 1)
{
    if(can_attack == true)
    {
        can_attack = false;
        choice = choose("burst", "follow", "capture");
        attacking = true;
        
        alarm[2] = 120;
    }
    
    else if(attacking == true && choice == "burst")
    {
        attacking = false;
        var i;
        for( i = 1; i < 6; i+=1)
        {
            instance_create(obj_char.x + irandom_range(-100, 100), obj_char.y + irandom_range(-100, 100), obj_lightning_tell);
        }
    }

    else if(attacking == true && choice == "follow")
    {
        attacking = false;
        if(keyboard_check(ord('D')))
        {
            instance_create(obj_char.x + 100, obj_char.y, obj_lightning_tell);
        }
        else if(keyboard_check(ord('A')))
        {    
            instance_create(obj_char.x - 100, obj_char.y, obj_lightning_tell);
        }
        else
        {
            instance_create(obj_char.x, obj_char.y, obj_lightning_tell);
        }
    
        alarm[5] = 30;
    }
    
    else if(attacking == true && choice == "capture")
    {
        attacking = false;
        instance_create(obj_char.x, obj_char.y, obj_boss2_capture);
    
    }
}

    
