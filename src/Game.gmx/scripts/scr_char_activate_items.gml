///scr_char_activate_items()

//The draw event might be called more than the step event,
//so it might be more efficient to put this code in the step event
//if we need to.

//Passive items don't currently activate.
with(obj_inventory)
{
    if(not inventory_open && can_use_items)
    {
        var loadout_activate;
        var loadout_release;
        var persistent_activate;
        var persistent_release;
        for(var i = 0; i < first_passive_slot; i++)
        {
            loadout_activate[i] = false;
            loadout_release[i] = false;
        }
        for(var i = 0; i < persistent_items_capacity; i++)
        {
            persistent_activate[i] = false;
            persistent_release[i] = false;
        }
        
        if(mouse_check_button(mb_left))
        {
            if(keyboard_check(vk_shift))
            {
                loadout_activate[2] = true;
            }
            else if(keyboard_check(vk_control))
            {
                loadout_activate[4] = true;
            }
            else
            {
                loadout_activate[0] = true;
            }
        }
        else if(mouse_check_button_released(mb_left))
        {
            if(keyboard_check(vk_shift) or keyboard_check_released(vk_shift))
            {
                loadout_release[2] = true;
            }
            else if(keyboard_check(vk_control) or keyboard_check_released(vk_control))
            {
                loadout_release[4] = true;
            }
            else
            {
                loadout_release[0] = true;
            }
        }
        
        
        if(mouse_check_button(mb_right))
        {
            if(keyboard_check(vk_shift))
            {
                loadout_activate[3] = true;
            }
            else if(keyboard_check(vk_control))
            {
                loadout_activate[5] = true;
            }
            else
            {
                loadout_activate[1] = true;
            }
        }
        else if(mouse_check_button_released(mb_right))
        {
            if(keyboard_check(vk_shift) or keyboard_check_released(vk_shift))
            {
                loadout_release[3] = true;
            }
            else if(keyboard_check(vk_control) or keyboard_check_released(vk_control))
            {
                loadout_release[5] = true;
            }
            else
            {
                loadout_release[1] = true;
            }
        }
        
        
        if(keyboard_check(ord('Z')))
        {
            persistent_activate[0] = true;
        }
        else if(keyboard_check_released(ord('Z')))
        {
            persistent_release[0] = true;
        }
        if(keyboard_check(ord('X')))
        {
            persistent_activate[1] = true;
        }
        else if(keyboard_check_released(ord('X')))
        {
            persistent_release[1] = true;
        }
        if(keyboard_check(ord('C')))
        {
            persistent_activate[2] = true;
        }
        else if(keyboard_check_released(ord('C')))
        {
            persistent_release[2] = true;
        }
        
        //Activate item(s).
        for(var i = 0; i < first_passive_slot; i++)
        {
            if(loadout_activate[i])
            {
                var item = loadout[current_loadout,i];
                
                if(item.can_activate)
                {
                    most_recent_item = item;
                    
                    with(item)
                    {
                        script_execute(position_script);
                        script_execute(script);
                    }
                    
                    if(item.stack_size < 1)
                    {
                        with(item) instance_destroy();
                        loadout[current_loadout,i] = empty;
                        most_recent_item = empty;
                    }
                }
            }
            else if(loadout_release[i])
            {
                var item = loadout[current_loadout,i];
                if(item.can_activate)
                {
                    with(item)
                    {
                        script_execute(release_script);
                    }
                }
            }
        }
        for(var i = 0; i < persistent_items_capacity; i++)
        {
            if(persistent_activate[i])
            {
                var item = persistent_items[i];
                
                if(item.can_activate)
                {
                    most_recent_item = item;
                    
                    with(item)
                    {
                        script_execute(position_script);
                        script_execute(script);
                    }
                    
                    if(item.stack_size < 1)
                    {
                        with(item) instance_destroy();
                        persistent_items[i] = empty;
                        most_recent_item = empty;
                    }
                }
            }
            else if(persistent_release[i])
            {
                var item = persistent_items[i];
                if(item.can_activate)
                {
                    with(item)
                    {
                        script_execute(release_script);
                    }
                }
            }
        }
    }
    
    with(most_recent_item)
    {
        if(equipped)
        {
            script_execute(position_script);
            if(not always_invisible)
            {
                draw_self();
            }
        }
    }
}

