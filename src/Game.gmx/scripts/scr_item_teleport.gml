if(owner_id != obj_char.id)
{

    if(can_teleport == true)
    {    
        can_teleport = false;
        alarm[0] = 120;
        cx = irandom_range(min(other.x, obj_char.x), max(other.x, obj_char.x)) + irandom_range(-32, 32);
        cy = irandom_range(min(other.y, obj_char.y), max(other.y, obj_char.y)) + irandom_range(-32, 32);

        other.x = cx;
        other.y = cy;
    }
    
    
    other.using_item = false;
}
else
{
        
        //if(place_empty(mouse_x, mouse_y) && can_teleport == true)
        if(place_meeting(mouse_x, mouse_y, obj_floor) && can_teleport == true)
        {
            owner_id.x = mouse_x;
            owner_id.y = mouse_y;
            can_teleport = false;
            alarm[COOLDOWN] = cooldown;
        }
        
    
}

