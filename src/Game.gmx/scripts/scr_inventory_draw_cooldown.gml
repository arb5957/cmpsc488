///scr_inventory_draw_cooldown(item_id,x1,y1,x2,y2);

var item = argument0;
var x1 = argument1;
var y1 = argument2;
var x2 = argument3;
var y2 = argument4;

if(item.cooldown <= 20) exit;

var remaining_cooldown = item.alarm[item.COOLDOWN];
if(remaining_cooldown > -1)
{
    var percent_cooldown = 1-(remaining_cooldown / item.cooldown);
    //show_debug_message(string(percent_cooldown));
    draw_set_alpha(0.5);
    draw_set_color(c_black);
    draw_rectangle(x1,y1+((y2-y1)*percent_cooldown),x2,y2,false);
}
