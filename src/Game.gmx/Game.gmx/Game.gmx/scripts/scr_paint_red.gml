//instance_create(x,y,obj_red_paint);
if(!place_meeting(x, y, obj_paint)){
    instance_create(x,y,obj_red_paint);
}
can_activate = false;
activated = true;
alarm[COOLDOWN] = cooldown;
