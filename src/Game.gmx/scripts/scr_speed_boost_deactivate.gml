///scr_speed_boost_deactivate();

if(activated)
{
    with(owner_id)
    {
        move_speed = other.owner_move_speed;
    }
    activated = false;
}
