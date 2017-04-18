wall_in_range = collision_circle(x,y,300,obj_terrain_wall, false, true);

if(wall_in_range){
    sdb("yes");
    //fire_direction = point_direction(x, y, nearest_wall.x, nearest_wall.y);
    obj_char.going_up = false;
    obj_char.going_down = false;
    obj_char.going_left = false;
    obj_char.going_right = false;
    
    with(obj_char){
        nearest_wall = instance_nearest(x, y, obj_terrain_wall);
        move_towards_point(nearest_wall.x, nearest_wall.y, 7);        
    }

    alarm[COOLDOWN] = cooldown;
}
