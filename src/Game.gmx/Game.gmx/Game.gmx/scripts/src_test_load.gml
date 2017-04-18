if (file_exists("Save.dat"))
{
    data = ds_map_secure_load("Save.dat")
    
        save_name = data[? "save_name"]
    
        var temp = ds_list_create();
    
            ds_list_read(temp, data[? "inven"]);
    
            inven = temp[| 0];
            
            ds_list_destroy(temp);
            ds_map_destroy(data);

}
