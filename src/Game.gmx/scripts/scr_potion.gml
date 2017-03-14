
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
        hp = max_hp
    }
    else
    {
        hp += 5;
    }
}
alarm[COOLDOWN] = cooldown;
can_activate = false;
stack_size--;
