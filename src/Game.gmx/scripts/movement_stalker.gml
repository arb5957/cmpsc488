inverse = (obj_char.image_angle + 180) mod 360
direction = image_angle;

if (image_angle >= 300)
{
    if( inverse > image_angle - 60 || inverse < (image_angle + 60) mod 360)
    {
        speed = 0;
    }
    else
    {
        speed = 1;
    }
}

else if( image_angle <= 60)
{
    if(inverse < image_angle + 60  || inverse > (image_angle-60)-floor((image_angle-60)/360)*360)
    {
        speed = 0;
    }
    else
    {
        speed = 1;
    }
}

else if (inverse > (image_angle - 60) && inverse < (image_angle + 60))
{
    speed = 0;
}
else
{
    speed = 1;
}
