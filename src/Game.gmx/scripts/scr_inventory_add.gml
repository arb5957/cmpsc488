///scr_inventory_add(item_instance_id,char_instance_id)

var item = argument0; //This is an instance_id
var char_id = argument1; //This is the id of the character. Used to set the item's owner_id.

//By default all item's owner_id is set to obj_char,
//but when enemies equip items, the owner_id is set to the id of the enemy.
//Therefore when we pick up items that enemies dropped, we need to set the
//owner_id to that of the player.

//Naively search to find the next empty slot in the inventory.
//Maybe later we can find a better way.  
if(item.stackable)
{
    var first_sighting = true;
    var empty_slot = -1;
    //Search the entire inventory for the same item, or
    //for the first empty slot.
    for(var i = 0; i < inventory_capacity; i++)
    {
        //If item is already in the inventory,
        if(inventory[i].object_index == item.object_index)
        {
            //Increase the item's stack_size.
            inventory[i].stack_size += item.stack_size;
            
            show_debug_message(string(inventory[i].name) + " stack size: " + string(inventory[i].stack_size));
            scr_item_pickup(item.name, item.stack_size);
            with(item)
            {
                //Destroy redundant item.
                instance_destroy();
            }
            //There is nothing else to do, so exit the script.
            exit;
        }
        else if(inventory[i] == empty)
        {
            //Find the first empty slot.
            if(first_sighting)
            {
                //Mark the first empty slot.
                empty_slot = i;
                first_sighting = false;
            }
        }
    }
    //If the stackable item wasn't in the inventory already,
    //insert it in the first empty slot.
    if(empty_slot > -1)
    {//If we found an empty_slot,
    
        //Insert item into Inventory.
        inventory[empty_slot] = item;
        item.on_ground = false;
        item.visible = false;
        scr_item_pickup(item.name, item.stack_size);
        show_debug_message("Added " + string(item.name) + " into slot " + string(empty_slot));
        
        item.owner_id = char_id;
    }
}
else
{//Insert nonstackable item.
    
    //Naively search to find the next empty slot in the inventory.
    //Maybe later we can find a better way.
    for(var i = 0; i < inventory_capacity; i++)
    {
        if(inventory[i] == empty)
        {
            //Insert item into Inventory.
            inventory[i] = item.object_index;
            item.on_ground = false;
            item.visible = false;
            
            show_debug_message("Added " + string(item.name) + " into slot " + string(i));
            scr_item_pickup(item.name, item.stack_size);
            item.owner_id = char_id;
            
            break;
        }
    }
}
