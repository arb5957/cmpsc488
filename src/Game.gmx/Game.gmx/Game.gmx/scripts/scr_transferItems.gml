var i = argument0;
var itemId = argument1;
var sprite = argument2;

var tempSpr = spr;

if(tempSpr == sprite)
{
    global.slot[i] = itemId;
    global.slot[slotTaken] = "noone";
    spr = spr_nothing;
}
