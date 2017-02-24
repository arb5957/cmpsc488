///scr_inventory_draw_sprite(item, x, y)

var item = argument0;
var xx = argument1;
var yy = argument2;

//Draw the sprite.
draw_sprite(item.sprite_index,-1,xx+8,yy+8);

//Draw stack size.
if(item.stackable)
{
    //Set text color.
    draw_set_color(text_color);
    draw_set_alpha(text_alpha);

    draw_text(xx, yy, string(item.stack_size));
}
