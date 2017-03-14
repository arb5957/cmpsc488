 if(point_distance(x, y, obj_char.x, obj_char.y) > 64)
    {
        if(angleset == true)
        {
            angleset = false;
        }
    
        if(newPath == true)
        {
            alarm[1] = irandom_range(30, 60);
            newPath = false;
            grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);
            path = path_add();
            mp_grid_add_instances(grid, obj_terrain_wall, 1);
            mp_potential_path(path, obj_char.x, obj_char.y, 2, 4, 1);
            mp_grid_path(grid, path, x, y, obj_char.x + irandom_range(-64, 64), obj_char.y+ irandom_range(-64, 64), 1);
            path_start(path, move_speed, "", 0);
        }
    }
    else
    {
        path_end();
        if(angleset == false)
        {
            angleset = true;
            angle = (image_angle + 180) mod 360;
        }
        mp_potential_step_object(obj_char.x + lengthdir_x(61, angle), obj_char.y + lengthdir_y(61, angle), move_speed+1, obj_terrain_wall);
        angle += 2;
        if(angle >= 360)
        {
            angle = 0;
        }
    }
    
move_speed = move_speed_default;
