//instance_create(x,y,obj_blue_paint);
if(!place_meeting(x, y, obj_paint)){
    instance_create(x,y,obj_blue_paint);
}
can_activate = false;
activated = true;
alarm[COOLDOWN] = cooldown;
