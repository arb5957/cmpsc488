///scr_speed_boost_activate();

with(owner_id)
{
    other.owner_move_speed = move_speed;
    move_speed += other.speed_boost;
}
activated = false;
