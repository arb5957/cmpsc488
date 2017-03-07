var data;
data = ds_map_create();

data[? "save_name"] = obj_char.name;
data[? "global.savedX"] = obj_char.x;
data[? "global.savedY"] = obj_char.y;
var temp = ds_list_create();

//temp[| 0] = inven;

temp[| 0] = obj_inventory.inventory;

//data[? "inven"] = ds_list_write(temp);

data[? "inventory"] = ds_list_write(temp);

ds_list_destroy(temp);
ds_map_secure_save(data, "Save.dat");
ds_map_destroy(data);
