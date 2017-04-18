if(owner_id != obj_char)
{
    if(can_lunge == true)
    {
        can_lunge = false;
        other.direction = other.image_angle;
        other.speed = 6;
        alarm[1] = 120;
    }
}
