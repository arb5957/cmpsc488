inv = obj_inventory;
var toName = argument0;

for(i = 0; i < inv.totalSlots; i++){
    if(global.slot[i] == toName){
        scr_addList(toName);
        break;
    }

    if(i == inv.totalSlots-1){
        for(j = 0; j < inv.totalSlots; j++){
            if(global.slot[j] == "noone"){
                global.slot[j] = toName;    
                scr_addList(toName);
                break;
            }
        }
    }
}
