var data;
data = ds_map_create();

data[? "save_name"] = obj_char.name;

var temp = ds_list_create();
var tempLevels = ds_list_create();



var i;
var tempArray;
var tempArrayLevels_stack;

for(i = 0; i < array_length_1d(obj_inventory.inventory); i++)
{
    if(obj_inventory.inventory[i].object_index != obj_empty.object_index)
    {
        tempArray[i] = obj_inventory.inventory[i].object_index;
        tempArrayLevels_stack[i, 0] = obj_inventory.inventory[i].level;
        tempArrayLevels_stack[i, 1] = obj_inventory.inventory[i].stack_size;
    }
    else{
        tempArray[i] = -1;
        tempArrayLevels_stack[i, 0] = -1;
        tempArrayLevels_stack[i, 1] = -1;
    }
}

temp[| 0] = tempArray;
tempLevels[| 0] = tempArrayLevels_stack;


var tempLoadout = ds_list_create();
var tempLoadoutLevels = ds_list_create();

var tempArrayLoadouts;
var tempArrayLoadoutsLevels;
var j;

for(i = 0; i < 4; i++)
{
    for(j = 0; j < 10; j++)
    {
        if(obj_inventory.loadout[i, j].object_index != obj_empty.object_index)
        {
            tempArrayLoadouts[i, j] = obj_inventory.loadout[i, j].object_index;
            tempArrayLoadoutsLevels[i, j] = obj_inventory.loadout[i, j].level;
        }
        else
        {
            tempArrayLoadouts[i, j] = -1;
            tempArrayLoadoutsLevels[i, j] = -1;
        }
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
ds_map_secure_save(data, "Save3.dat");
ds_map_destroy(data);
