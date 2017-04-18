var tempSpr = spr;

var sprite = argument0;
var object = argument1;
var idd = argument2;


if(tempSpr == sprite){
    for(i = 0; i < global.item[idd]; i++)
    {
        instance_create(obj_char.x+150, obj_char.y, object);
    }
    global.item[idd] = 0;
    global.slot[slotTaken] = "noone";
    spr = spr_nothing;
}
