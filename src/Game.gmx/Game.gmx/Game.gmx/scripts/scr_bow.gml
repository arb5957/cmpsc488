if(pull_time < 30)
{
    image_index = 1;
}
if(pull_time <= 60)
{
    pull_time++;
    
}
if (pull_time == 30) 
{
    strength++;
    image_index = 2;
}
else if (pull_time == 60)
{
    strength++;
    image_index = 3;
}
//show_debug_message("image index of bow " + string(image_index));
/*if(mouse_check_button_released(mb_any))
{
    script_execute(scr_char_fire_projectile, obj_arrow);
    strength = 1;
    pull_time = 0;
    image_index = 0;
}*/
//show_debug_message("pull time " + string(pull_time));
