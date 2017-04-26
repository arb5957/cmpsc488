///scr_save(integer_save_slot);
//Consider saving the current_loadout.
//Valid slots 1,2,3
var save_slot = argument0;
if(save_slot < 1 || save_slot > 3)
{
    exit;
}
save_slot = string(save_slot);
sdb("Saving into slot " + save_slot);

var data;
data = ds_map_create();

data[? "save_name"] = obj_char.name;
data[? "char_hp"] = obj_char.hp;

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
var tempLoadoutStacks = ds_list_create();

var tempArrayLoadouts;
var tempArrayLoadoutsLevels;
var tempArrayLoadoutsStacks;
var j;

for(i = 0; i < 4; i++)
{
    for(j = 0; j < 10; j++)
    {
        if(obj_inventory.loadout[i, j].object_index != obj_empty.object_index)
        {
            tempArrayLoadouts[i, j] = obj_inventory.loadout[i, j].object_index;
            tempArrayLoadoutsLevels[i, j] = obj_inventory.loadout[i, j].level;
            tempArrayLoadoutsStacks[i, j] = obj_inventory.loadout[i, j].stack_size;
        }
        else
        {
            tempArrayLoadouts[i, j] = -1;
            tempArrayLoadoutsLevels[i, j] = -1;
            tempArrayLoadoutsStacks[i, j] = -1;
        }
    }
}

tempLoadout[| 0] = tempArrayLoadouts;
tempLoadoutLevels[| 0] = tempArrayLoadoutsLevels;
tempLoadoutStacks[| 0] = tempArrayLoadoutsStacks;

var tempPersistent = ds_list_create();
var tempPersistentLevels = ds_list_create();
var tempPersistentStacks = ds_list_create();

var tempArrayPersistent;
var tempArrayPersistentLevels;
var tempArrayPersistentStacks;
for(var i = 0; i < 3; i++)
{
    if(obj_inventory.persistent_items[i].object_index != obj_empty.object_index)
    {
        tempArrayPersistent[i] = obj_inventory.persistent_items[i].object_index;
        tempArrayPersistentLevels[i] = obj_inventory.persistent_items[i].level;
        tempArrayPersistentStacks[i] = obj_inventory.persistent_items[i].stack_size;
    }
    else
    {
        tempArrayPersistent[i] = -1;
        tempArrayPersistentLevels[i] = -1;
        tempArrayPersistentStacks[i] = -1;
    }
}


tempPersistent[| 0] =  tempArrayPersistent;
tempPersistentLevels[| 0] = tempArrayPersistentLevels;
tempPersistentStacks[| 0] = tempArrayPersistentStacks;

data[? "inventory"] = ds_list_write(temp);
data[? "levels"] = ds_list_write(tempLevels);
data[? "loadouts"] = ds_list_write(tempLoadout);
data[? "loadoutsLevels"] = ds_list_write(tempLoadoutLevels);
data[? "loadoutsStacks"] = ds_list_write(tempLoadoutStacks);
data[? "persistent"] = ds_list_write(tempPersistent);
data[? "persistentLevels"] = ds_list_write(tempPersistentLevels);
data[? "persistentStacks"] = ds_list_write(tempPersistentStacks);

var currentloadout = 0;
var saveloadout = 0;
var savingloadout = false;

if(instance_exists(obj_inventory))
{
    currentloadout = obj_inventory.current_loadout;
    saveloadout = obj_inventory.save_loadout;
    savingloadout = obj_inventory.saving_loadout;
}

data[? "currentloadout"] = currentloadout;
data[? "saveloadout"] = saveloadout;
data[? "savingloadout"] = savingloadout;

ds_list_destroy(temp);
ds_list_destroy(tempLevels);
ds_list_destroy(tempLoadout);
ds_list_destroy(tempLoadoutLevels);
ds_list_destroy(tempLoadoutStacks);
ds_list_destroy(tempPersistent);
ds_list_destroy(tempPersistentLevels);
ds_list_destroy(tempPersistentStacks);
ds_map_secure_save(data, "Save" + save_slot + ".dat");
ds_map_destroy(data);
