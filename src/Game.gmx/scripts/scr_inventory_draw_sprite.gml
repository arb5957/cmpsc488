///scr_inventory_draw_sprite(item, x, y)

var item = argument0;
var xx = argument1;
var yy = argument2;

//Draw the sprite.
draw_sprite(item.sprite_index,0,xx+24,yy+24);
//with(item)
//{
//    x = xx+8;
//    y = yy+8;
//    draw_self();
//}

//Draw stack size.
if(item.stackable)
{
    //Save the previous color
    var color = draw_get_color();
    var alpha = draw_get_alpha();
    
    //Set text color.
    draw_set_font(font_inventory);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(text_color);
    draw_set_alpha(text_alpha);

    draw_text(xx, yy, string(item.stack_size));
    
    //Restore the previous color.
    draw_set_color(color);
    draw_set_alpha(alpha);
}
