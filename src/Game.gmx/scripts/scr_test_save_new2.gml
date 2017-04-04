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
    tempArray[i] = obj_inventory.inventory[i].object_index;
    tempArrayLevels[i] = obj_inventory.inventory[i].level;
}

temp[| 0] = tempArray;
tempLevels[| 0] = tempArrayLevels;


var tempLoadout = ds_list_create();
var tempLoadoutLevels = ds_list_create();

var tempArrayLoadouts;
var tempArrayLoadoutsLevels;
var j;

for(i = 0; i < 4; i++)
{
    for(j = 0; j < 10; j++)
    {
        tempArrayLoadouts[i, j] = obj_inventory.loadout[i, j].object_index;
        tempArrayLoadoutsLevels[i, j] = obj_inventory.loadout[i, j].level;
    }
}



tempLoadout[| 0] = tempArrayLoadouts;
tempLoadoutLevels[| 0] = tempArrayLoadoutsLevels;


data[? "inventory"] = ds_list_write(temp);
data[? "levels"] = ds_list_write(tempLevels);
data[? "loadouts"] = ds_list_write(tempLoadout);
data[? "loadoutsLevels"] = ds_list_write(tempLoadoutLevels);

ds_list_destroy(temp);
ds_list_destroy(tempLevels);
ds_list_destroy(tempLoadout);
ds_list_destroy(tempLoadoutLevels);
ds_map_secure_save(data, "Save2.dat");
ds_map_destroy(data);
