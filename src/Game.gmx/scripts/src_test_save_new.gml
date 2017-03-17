var data;
data = ds_map_create();

data[? "save_name"] = obj_char.name;
data[? "global.savedX"] = obj_char.x;
data[? "global.savedY"] = obj_char.y;
var temp = ds_list_create();
var temp2 = ds_list_create();


//temp[| 0] = inven;

var i;
var tempArray;
for(i = 0; i < array_length_1d(obj_inventory.inventory); i++)
{
    tempArray[i] = obj_inventory.inventory[i].object_index;
}

temp[| 0] = tempArray;
temp2[| 0] = obj_inventory.loadout;

//data[? "inven"] = ds_list_write(temp);

data[? "inventory"] = ds_list_write(temp);
data[? "loadout"] = ds_list_write(temp2);

ds_list_destroy(temp);
ds_list_destroy(temp2);
ds_map_secure_save(data, "Save.dat");
ds_map_destroy(data);
