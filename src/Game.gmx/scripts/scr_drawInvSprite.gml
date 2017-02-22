///Draw inv sprite(i, itemId, sprite, itemAmmount);

var i = argument0;
var itemId = argument1;
var sprite = argument2;
var itemAmmount = argument3;

if(global.slot[i] = itemId){
    draw_sprite(sprite, 0, coordX[i]+8, coordY[i]+8);
    draw_set_color(c_white);
    draw_text(coordX[i]+3, coordY[i]+3, string(itemAmmount));
}
