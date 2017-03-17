var data;
data = ds_map_create();

data[? "save_name"] = obj_char.name;

var temp = ds_list_create();

var i;
var tempArray;
for(i = 0; i < array_length_1d(obj_inventory.inventory); i++)
{
    tempArray[i] = obj_inventory.inventory[i].object_index;
}

temp[| 0] = tempArray;

data[? "inventory"] = ds_list_write(temp);

ds_list_destroy(temp);
ds_map_secure_save(data, "Save.dat");
ds_map_destroy(data);
