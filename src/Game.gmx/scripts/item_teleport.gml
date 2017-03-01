show_debug_message("TRYING TO USE ITEM");
if(instance_exists(obj_bullet_base) && obj_bullet_base.owner == owners.CHARACTER)
{
    show_debug_message("GOING TO RUN SCRIPT MAYBE");
    if(point_distance(x, y, obj_bullet_base.x, obj_bullet_base.y) < 64)
    {
        
        path_end();
        using_item = true;
        
        show_debug_message("TRYING TO TELE IN ENEMY");
        with(item_inst)
        {
            script_execute(scr_item_teleport);
        }
    }
}
