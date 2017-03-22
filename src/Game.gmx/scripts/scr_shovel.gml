show_debug_message("Using the shovel");
if(can_tunnel == true)
{
    with(obj_char)
    {
        sprite_index = spr_char_digging;
        image_speed = 0.1;
    }
    can_tunnel = false;
    alarm[1] = 300;
    tunneling = true;
}

else if(tunneling == true)
{
    alarm[1] = 1;
}
