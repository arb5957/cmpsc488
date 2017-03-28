if(mirrored == false)
{
    if(newPath == true)
    {
        if(obj_char.x < x + 32 && obj_char.x >  x - 32)
        {
            choice = "go_y";
        }
        else if(obj_char.y < y + 32 && obj_char.y > y - 32)
        {
            choice = "go_x";
        }
        else
        {
            choice = choose("go_x", "go_y");
        }
        newPath = false;
        alarm[2] = irandom_range(30, 90);
    }
    
    switch (choice)
    {
    
        case "go_x" :
            if(obj_char.x > x)
            {
                mp_potential_step_object(x + 32, y, 3, obj_terrain_wall);
            }
            else
            {
                mp_potential_step_object(x - 32, y, 3, obj_terrain_wall);
            }
            break;
        case "go_y" :
            if(obj_char.y > y)
            {
                mp_potential_step_object(x, y+32, 3, obj_terrain_wall);
            }
            else
            {
                mp_potential_step_object(x, y - 32, 3, obj_terrain_wall);
            }
            break;
    }
}
