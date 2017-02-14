///Check if colliding with a solid.

//* This is taken from a tutorial, but the funny thing is if you hit a wall from a corner,
//  you disappear. Video tutorial: https://www.youtube.com/watch?v=I1JJa5rhW60
//  We should improve this code.

if(hspeed!=0)
{
    if(not place_free(x+hspeed,y))
    {
        if(hspeed > 0)
        {
            move_contact_solid(0, hspeed);
        }
        else if(hspeed < 0)
        {
            move_contact_solid(180, hspeed);
        }
        hspeed = 0;
    }
}
if(vspeed!=0)
{
    if(not place_free(x+hspeed,y+vspeed))
    {
        if(vspeed > 0)
        {
            move_contact_solid(270, vspeed);
        }
        else if(vspeed < 0)
        {
            move_contact_solid(90, vspeed);
        }
        vspeed = 0;
    }
}
//*/
