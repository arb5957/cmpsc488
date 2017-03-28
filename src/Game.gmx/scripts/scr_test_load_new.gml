var check;
check = argument0;

if(file_exists("Save.dat"))
{
    data = ds_map_secure_load("Save.dat")
    
    if(check == 1)
    {
        save_name = data[? "save_name"]
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
            if(inventoryTemp[i] != noone)
            {
                inst_weapon = instance_create(-1, -1, inventoryTemp[i]);
                with(inst_weapon)
                {
                    level = other.levelsTemp[i];
                }
                
                with(obj_inventory)
                {
                    scr_inventory_add(other.inst_weapon, obj_char.id);
                }
                show_debug_message(string(inst_weapon.name));
            }
        }
        
        ds_list_destroy(temp);
    }
    
    ds_map_destroy(data);
}
