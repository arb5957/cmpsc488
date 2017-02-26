//weapon_inst.activated = true;
//weapon_inst.angle = image_angle;
//weapon_inst.cooldown = room_speed / 4;
with(weapon_inst)
{
    var new_cooldown = room_speed / 4;
    if(cooldown > new_cooldown) cooldown = new_cooldown;
    script_execute(scr_enemy_default_attack);
}

