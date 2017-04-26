var n;
n = 2;
nearest = noone;
if(nearest_found == false)
{
    while((nearest == noone || nearest.object_index == obj_enemy_healer || nearest.object_index == obj_enemy_summoner) && n < 10)
    {
        
        nearest = instance_nth_nearest(x, y, obj_enemy_base, n);
        n++;
    }
        
}

if nearest != noone
{
    image_angle = point_direction(x, y, nearest.x, nearest.y);
    
    if(point_distance(x, y, nearest.x, nearest.y) > 64)
    {
    
        if(newPath == true)
        {
            //alarm[1] = irandom_range(30, 60);
            newPath = false;
            ds_queue_enqueue(global.movement_queue, id);
            //grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);
            //path = path_add();
            //mp_grid_add_instances(grid, obj_terrain_wall, 1);
            //mp_potential_path(path, nearest.x, nearest.y, 2, 4, 1);
            //mp_grid_path(grid, path, x, y, nearest.x, nearest.y, 1);
            //path_start(path, move_speed, "", 0);
        }
    }
    else
    {
    }
}
        
