///Script for the speed potion


//Currently player can partially bypass cooldown by placing
//potions in multiple slots in the loadout.
//To remedy this, we can try to add potion sickness like terraria.

with(owner_id)
{
    obj_char.hp-=100;
}
can_activate = false;
alarm[COOLDOWN] = cooldown;
obj_potion_poison.alarm[0] = cooldown;
stack_size--;
