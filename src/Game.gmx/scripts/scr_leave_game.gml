///scr_leave_game();
if(instance_exists(obj_music))
{
    with(obj_music)
    {
        script_execute(scr_music_stop);
    }
}
with(all)
{
    show_debug_message("Destroying " + object_get_name(object_index));
    instance_destroy();
}
