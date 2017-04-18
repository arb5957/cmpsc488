//point enemy and weapon towards player
image_angle = point_direction(x, y, obj_char.x, obj_char.y);
if(weapon_inst.object_index != obj_spin_blade)
{
    weapon_inst.image_angle = point_direction(x, y, obj_char.x, obj_char.y);
}

//Step enemy towards player
//mp_potential_step(obj_char.x, obj_char.y, 2, false);


grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);
path = path_add();
mp_grid_add_instances(path, obj_terrain_wall, 1);
mp_grid_path(grid, path, x, y, obj_char.x, obj_char.y, 1);
path_start(path, 2, "", 0);

if(instance_exists(obj_bullet_base))
{
   
    if(point_distance(x, y, obj_bullet_base.x, obj_bullet_base.y) < 64) && (obj_bullet_base.owner == owners.CHARACTER)
    {
        path_end();
        cx = irandom_range(min(x, obj_char.x), max(x, obj_char.x));
        cy = irandom_range(min(y, obj_char.y), max(y, obj_char.y));
        
        if(place_empty(cx, cy))
        {
            x = cx;
            y = cy;
        }
        
    }
}
