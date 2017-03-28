if(can_ice_mirror == true)
{
    alarm[6] = 300;
    
    can_ice_mirror = false;
    
    cx = irandom_range(64, room_width);
    cy = irandom_range(64, room_height);
    
    while(place_meeting(cx, cy, obj_terrain_wall) == true)
    {
        cx = irandom_range(64, room_width);
        cy = irandom_range(64, room_height);
    }
    
    x = cx;
    y = cy;
    
    mirrored = true;
    image_index = 1;
    
    var i;
     
    i = 0;
     
    while( i < 11)
    {
        cx = irandom_range(64, room_width);
        cy = irandom_range(64, room_height);
        
        if(!place_meeting(cx, cy, obj_terrain_wall))
        {
            instance_create(cx, cy, obj_boss3_fake);
            i += 1;
        }
    }
}  
