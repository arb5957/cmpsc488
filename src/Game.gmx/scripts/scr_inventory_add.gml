var item = argument0;

//Naively search to find the next empty slot in the inventory.
//Maybe later we can find a better way.
for(var i = 0; i < inventory_capacity; i++)
{
    if(inventory[i] == empty)
    {
        inventory[i] = item;
        item.on_ground = false;
        item.visible = false;
        
        show_debug_message("Added " + string(item.name) + " into slot " + string(i));
        break;
    }
}
