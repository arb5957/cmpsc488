
//Currently player can partially bypass cooldown by placing
//potions in multiple slots in the loadout.
//To remedy this, we can try to add potion sickness like terraria.

with(owner_id)
{
    if(hp == max_hp)
    {
        exit;
    }
    else if(hp+5 > max_hp)
    {
        hp = obj_char.max_hp;
    }
    else
    {
        hp = obj_char.max_hp;
    }
}
alarm[COOLDOWN] = cooldown;
can_activate = false;
stack_size--;
