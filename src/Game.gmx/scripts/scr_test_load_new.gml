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
        
        ds_list_read(temp, data[? "inventory"]);
        
        inventoryTemp = temp[| 0];
        
        var i;
        for(i = 0; i < array_length_1d(inventoryTemp); i++)
        {
            if(inventoryTemp[i] != noone)
            {
                instance_create(obj_char.x, obj_char.y, inventoryTemp[i])
            }
        }
        
        ds_list_destroy(temp);
    }
    
    ds_map_destroy(data);
}
