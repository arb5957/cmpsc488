var check;
check = argument0;

if(file_exists("Save2.dat"))
{
    data = ds_map_secure_load("Save2.dat")
    
    if(check == 1)
    {
        save_name2 = data[? "save_name"]
    }
    
    else if(check == 0)
    {
        var temp = ds_list_create();
        var tempLevels = ds_list_create();
        
        ds_list_read(temp, data[? "inventory"]);
        ds_list_read(tempLevels, data[? "levels"]);
        
        inventoryTemp = temp[| 0];
        levelsTemp = tempLevels[| 0];
        
        var i;
        for(i = 0; i < array_length_1d(inventoryTemp); i++)
        {
            if(inventoryTemp[i] != -1)
            {
                inst_weapon = instance_create(-1, -1, inventoryTemp[i]);
                with(inst_weapon)
                {
                    level = other.levelsTemp[i, 0];
                    stack_size = other.levelsTemp[i, 1];
                }
                
                with(obj_inventory)
                {
                    scr_inventory_add(other.inst_weapon, obj_char.id);
                }
                show_debug_message(string(inst_weapon.name));
            }
        }
        
        ds_list_destroy(temp);
        ds_list_destroy(tempLevels);
        
        var tempLoadout = ds_list_create();
        var tempLoadoutLevels = ds_list_create();
        var tempLoadoutStacks = ds_list_create();
        
        ds_list_read(tempLoadout, data[? "loadouts"]);
        ds_list_read(tempLoadoutLevels, data[? "loadoutsLevels"]);
        ds_list_read(tempLoadoutStacks, data[? "loadoutsStacks"]);
        
        loadoutTemp = tempLoadout[| 0];
        loadoutLevels = tempLoadoutLevels[| 0];
        loadoutStacks = tempLoadoutStacks[| 0];
        
        var j;
        for(i = 0; i < 4; i++)
        {
            for(j = 0; j < 10; j++)
            {
                if(loadoutTemp[i, j] != -1)
                {
                    inst_weapon = instance_create(-1, -1, loadoutTemp[i, j]);
                    
                    with(inst_weapon)
                    {
                        level = other.loadoutLevels[i, j];
                        stack_size = other.loadoutStacks[i, j];
                    }
                    
                    with(obj_inventory)
                    {
                        loadout[i, j] = other.inst_weapon;
                    }
                }
            }
        }
        
        ds_list_destroy(tempLoadout);
        ds_list_destroy(tempLoadoutLevels);
        ds_list_destroy(tempLoadoutStacks);
    }
    
    ds_map_destroy(data);
}
