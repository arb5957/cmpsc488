if(point_distance(x, y, obj_char.x, obj_char.y) < 128)
{
    with(weapon_inst)
    {
        script_execute(scr_enemy_default_attack);
    }
}
