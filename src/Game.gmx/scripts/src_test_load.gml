if (file_exists("Save.dat"))
{
    data = ds_map_secure_load("Save.dat")
    
        save_name = data[? "save_name"]
        global.savedX = data[? "savedX"];
        global.savedY = data[? "savedY"];
    
        var temp = ds_list_create();
    
            //ds_list_read(temp, data[? "inven"]);
    
            //inven = temp[| 0];
            
            ds_list_read(temp, data[? "inventory"]);
            
            obj_inventory.inventory = temp[| 0];
            
            ds_list_destroy(temp);
            ds_map_destroy(data);

}
