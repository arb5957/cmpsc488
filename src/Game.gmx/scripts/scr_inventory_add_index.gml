///scr_inventory_add_index(item_instance_id,char_instance_id,index);
//This function returns true if we could add to the inventory successfully.
//It returns false if there is already something in that slot unless it is
//a stackable item that is the same item we are trying to add.

var item = argument0; //This is an instance_id
var char_id = argument1; //This is the id of the character. Used to set the item's owner_id.
var index = argument2; //This is the inventory slot we are trying to add to.


//By default all item's owner_id is set to obj_char,
//but when enemies equip items, the owner_id is set to the id of the enemy.
//Therefore when we pick up items that enemies dropped, we need to set the
//owner_id to that of the player.

if(index >= inventory_capacity)
{
    show_debug_message("invalid index");
    return false;
}

if(item.stackable)
{
    if(inventory[index].object_index == item.object_index)
    {
        inventory[index].stack_size += item.stack_size;
            
        show_debug_message(string(inventory[index].name) + " stack size: " + string(inventory[index].stack_size));
        with(item)
        {
            //Destroy redundant item.
            instance_destroy();
        }
        return true;
    }
    else if(inventory[index] == empty)
    {
        inventory[index] = item;
        item.on_ground = false;
        item.visible = false;
        item.persistent = true;
        show_debug_message("Added " + string(item.name) + " into slot " + string(empty_slot));
        item.owner_id = char_id;
        return true;
    }
    else
    {
        show_debug_message("Could not add item " + object_get_name(item.object_index) + " into slot " + string(index)+
        " because " + object_get_name(inventory[index].object_index) + " is in that slot.");
        return false;
    }
}
else
{
    if(inventory[index] == empty)
    {
        //Insert item into Inventory.
        inventory[i] = item;
        item.on_ground = false;
        item.visible = false;
        item.persistent = true;
        
        show_debug_message("Added " + string(item.name) + " into slot " + string(i));
        item.owner_id = char_id;
        return true;
    }
    else
    {
        show_debug_message("Could not add item " + object_get_name(item.object_index) + " into slot " + string(index)+
        " because " + object_get_name(inventory[index].object_index) + " is in that slot.");
        return false;
    }
            
}
