/*

var data;
data = ds_map_create();

data[? "save_name"] = txt;
var temp = ds_list_create();

temp[| 0] = inven;

data[? "inven"] = ds_list_write(temp);

ds_list_destroy(temp);
ds_map_secure_save(data, "Save.dat");
ds_map_destroy(data);
