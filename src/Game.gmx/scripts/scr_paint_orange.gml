//instance_create(x,y,obj_orange_paint);
if(!place_meeting(x, y, obj_paint)){
    instance_create(x,y,obj_orange_paint);
}
can_activate = false;
activated = true;
alarm[COOLDOWN] = cooldown;
