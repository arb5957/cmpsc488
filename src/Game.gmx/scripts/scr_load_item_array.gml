if(file_exists("saved_item.dat"))
{
    data = ds_map_secure_load("saved_item.dat")
    
    var temp = ds_list_create();
    ds_list_read(temp, data[? "saved_items"]);
    
    saved_item_temp = temp[| 0];
    
    var i;
    for(i = 0; i < array_length_1d(saved_item_temp); i++)
    {
        global.saved_items_array[i] = saved_item_temp[i];
    }
    
    ds_list_destroy(temp);
    ds_map_destroy(data);
}
