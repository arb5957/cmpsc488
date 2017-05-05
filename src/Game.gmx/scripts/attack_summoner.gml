if(x == xprevious && can_summon == true)
{
    can_summon = false;
    alarm[2] = 500;
    casting_x = x;
    sprite_index = spr_enemy_summoning_temp;
    image_speed = 0.1;
}
