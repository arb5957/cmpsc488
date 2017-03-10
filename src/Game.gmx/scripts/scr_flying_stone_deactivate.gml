///scr_fly_deactivate();

//Currently if player stops flying in a wall, they're stuck.
with(owner_id)
{
    flying_stone_count--;
    if(flying_stone_count == 0)
    {
        flying = false;
    }
}
activated = false;
