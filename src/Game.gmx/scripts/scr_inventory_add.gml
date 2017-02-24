var item = argument0; //This is an instance_id

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
            inventory[i].stack_size++;
            
            show_debug_message(string(inventory[i].name) + " stack size: " + string(inventory[i].stack_size));
            
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
        
        show_debug_message("Added " + string(item.name) + " into slot " + string(empty_slot));
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
            inventory[i] = item;
            item.on_ground = false;
            item.visible = false;
            
            show_debug_message("Added " + string(item.name) + " into slot " + string(i));
            break;
        }
    }
}

//This is the complicated version (untested)
//It's probably better to use a list rather than a stack so when
//we merge two item stacks into one, we can remove the instance id
//of one of the copies more easily.
//If using this version, uncomment the code in obj_inventory's destroy event.
/*
if(item.stackable)
{
    //show_debug_message("object_index = " + string(item.object_index));
    
    //Check if the inventory has this stackable item.
    var item_stack = ds_map_find_value(stackables, item.object_index);
    if(not is_undefined(item_stack))
    {
        var item_reference = ds_stack_top(item_stack);
        //Increase its stack count
        item_reference.stack_size++;
        
        show_debug_message("Picked up " + string(item_reference.name) + " stack_size = " + string(item_reference.stack_size));
        
        //Destroy the item we picked up as it is now stacked in the inventory.
        with(item)
        {
            instance_destroy();
        }
        exit;
    }
    else
    {//If it's not in the inventory,
        //Add it to the stackables hashmap. The key is the object_index.
        //The value(s) are a stack of instance_id's. Each time we break a stack,
        //we create a new object and change the stack_size.
        var stack = ds_stack_create();
        ds_stack_push(stack,item);
        ds_map_add(stackables, item.object_index,stack);
    }
}

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
*/
