
if(point_distance(x, y, obj_char.x, obj_char.y) < 120)
{
    using_item = true;
    path_end();
    with(item_inst)
    {
        owner_id = other.id;
        alarm[2] = 30;
        script_execute(scr_item_lunge);
    }
    
}
