#define scr_char_move
vspeed = 0;
hspeed = 0;

if keyboard_check(move_up)
{
    vspeed = -player_speed;
}
if keyboard_check(move_down)
{
    vspeed = player_speed;
}
if keyboard_check(move_left)
{
    hspeed = -player_speed;
}
if keyboard_check(move_right)
{
    hspeed = player_speed;
}


#define scr_char_slip
var factor = 2;
if(hspeed > 0)
{
    hspeed = player_speed * factor;
}
else if(hspeed < 0)
{
    hspeed = -player_speed * factor;
}
if(vspeed > 0)
{
    vspeed = player_speed * factor;
}
else if(vspeed < 0)
{
    vspeed = -player_speed * factor;
}