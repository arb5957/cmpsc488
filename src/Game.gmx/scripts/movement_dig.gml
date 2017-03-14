if(can_dig == true)
{
    if(digging == false)
    {
        digging = true;
        sprite_index = spr_enemy_digging;
        image_speed = 0.1;
        alarm[2] = 300;
        weapon_inst.visible = false;
    }
    
    if(digging == true)
    {
        direction = point_direction(x, y, obj_char.x, obj_char.y);
        speed = 3;
        
        inst = instance_place(x, y, obj_char);
        
        if( inst != noone)
        {
        
            with(obj_char)
            {
                scr_char_takedamage(5);
                state = states.SLIP;
                speed = 0;
            }
            sprite_index = spr_enemy_dig;
            speed = 0;
            alarm[2] = 1;
            alarm[3] = 30;
        }
    }
}
else
{
    image_angle = point_direction(x, y, obj_char.x, obj_char.y);
    mp_potential_step_object(obj_char.x, obj_char.y, 1, obj_terrain_wall);
}

