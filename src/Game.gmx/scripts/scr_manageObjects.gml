var cellWidth = argument0;
var cellHeight = argument1;

for(i = 0; i < totalSlots; i++)
{
    scr_drawInvSprite(i, "wood", spr_wood, global.item[0]);
    scr_drawInvSprite(i, "potion", spr_potion, global.item[1]);
    scr_drawInvSprite(i, "stone", spr_stone, global.item[2]);
    scr_drawInvSprite(i, "dagger2", spr_dagger2, global.item[3]);
    scr_drawInvSprite(i, "bow2", spr_bow2, global.item[4]);
}

//<----->

for(i = 0; i < totalSlots; i++)
{
    if(mouse_check_button_pressed(mb_left))
    {
        if(scr_mouseOver(coordX[i], coordY[i], cellWidth, cellHeight))
        {
            scr_clickSlot(i, "wood", spr_wood);
            scr_clickSlot(i, "potion", spr_potion);
            scr_clickSlot(i, "stone", spr_stone);
            scr_clickSlot(i, "dagger2", spr_dagger2);
            scr_clickSlot(i, "bow2", spr_bow2);
        }
    }
}

//Dragging the item around

if(mouse_check_button(mb_left))
{
    draw_sprite(spr, 0, mouse_x - 8, mouse_y - 8);
}

//Release the object

if(mouse_check_button_released(mb_left))
{
    for(i = 0; i < totalSlots; i++){
        var startX = view_xview[0] + 256;
        var startY = view_yview[0] + 144;
        var width = 576;
        var height = 288;
        
        if(!scr_mouseOver(startX, startY, width, height))
        {
            var tempSpr = spr;
            scr_realeaseSlot(spr_wood, obj_wood, 0);
            scr_realeaseSlot(spr_potion, obj_potion, 1);
            scr_realeaseSlot(spr_stone, obj_stone, 2);
            scr_realeaseSlot(spr_dagger2, obj_dagger2, 3);
            scr_realeaseSlot(spr_bow2, obj_bow2, 4);
        }
        
        
        if(global.slot[i] == "noone")
        {
            if(scr_mouseOver(coordX[i], coordY[i], cellWidth, cellHeight))
            {   
                var tempSor = spr;
                if(i == 15)
                {
                    scr_transferItems(i, "potion", spr_potion);  
                    scr_transferItems(i, "dagger2", spr_dagger2);    
                    scr_transferItems(i, "bow2", spr_bow2);              
                }
                else{
                    scr_transferItems(i, "wood", spr_wood);
                    scr_transferItems(i, "stone", spr_stone);
                    scr_transferItems(i, "potion", spr_potion);
                    scr_transferItems(i, "dagger2", spr_dagger2);
                    scr_transferItems(i, "bow2", spr_bow2);   
                }
            }   
        }
    }   
    spr = spr_nothing;
}
