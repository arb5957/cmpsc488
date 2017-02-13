#define scr_char_move

//*
vspeed = 0;
hspeed = 0;


if keyboard_check_pressed(move_up)
{
    if(going_down)
    {
        going_down = false;
    }
    going_up = true;
}
if keyboard_check_pressed(move_down)
{
    if(going_up)
    {
        going_down = false;
    }
    going_down = true;
}
if keyboard_check_pressed(move_left)
{
    
    if(going_right)
    {
        going_right = false;
    }
    going_left = true;
}
if keyboard_check_pressed(move_right)
{
    if(going_left)
    {
        going_right = false;
    }
    going_right = true;
}

if keyboard_check(move_up)
{
    if(going_down)
    {
        going_up = false;
    }
    else
    {
        going_up = true;
    }
}
if keyboard_check(move_down)
{
    if(going_up)
    {
        going_down = false;
    }
    else
    {
        going_down = true;
    }
}
if keyboard_check(move_left)
{
    
    if(going_right)
    {
        going_left = false;
    }
    else
    {
        going_left = true;
    }
}
if keyboard_check(move_right)
{
    if(going_left)
    {
        going_right = false;
    }
    else
    {
        going_right = true;
    }
}

if keyboard_check_released(move_up)
{
    going_up = false;
}
if keyboard_check_released(move_down)
{
    going_down = false;
}
if keyboard_check_released(move_left)
{
    going_left = false;
}
if keyboard_check_released(move_right)
{
    going_right = false;
}

if(going_up)
{
    vspeed = -player_speed;
}
if(going_down)
{
    vspeed = player_speed;
}
if(going_left)
{
    hspeed = -player_speed;
}
if(going_right)
{
    hspeed = player_speed;
}


//*/

/*
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
//*/




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

//We need to reset these variables to stop.
going_up = false;
going_down = false;
going_left = false;
going_right = false;