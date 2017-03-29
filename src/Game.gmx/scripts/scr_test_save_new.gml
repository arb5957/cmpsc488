var data;
data = ds_map_create();

data[? "save_name"] = obj_char.name;

var temp = ds_list_create();
var tempLevels = ds_list_create();

var i;
var tempArray;
var tempArrayLevels;
for(i = 0; i < array_length_1d(obj_inventory.inventory); i++)
{
    var item = obj_inventory.inventory[i];
    if(item != obj_inventory.empty)
    {
        tempArray[i] = item.object_index;
        tempArrayLevels[i] = item.level;
    }
}

temp[| 0] = tempArray;
tempLevels[| 0] = tempArrayLevels;

data[? "inventory"] = ds_list_write(temp);
data[? "levels"] = ds_list_write(tempLevels);

ds_list_destroy(temp);
ds_list_destroy(tempLevels);
ds_map_secure_save(data, "Save.dat");
ds_map_destroy(data);
