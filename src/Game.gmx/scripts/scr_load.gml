///scr_load(integer_load_slot,check);
//Valid load slots are 1,2,3.
var load_slot = argument0;
if(load_slot < 1 || load_slot > 3)
{
    exit;
}
load_slot = string(load_slot);
sdb("Loading from slot " + load_slot);
var check = argument1;


if(file_exists("Save" + load_slot + ".dat"))
{
    data = ds_map_secure_load("Save" + load_slot + ".dat")
    
    if(check == 1)
    {
        global.save_name[load_slot] = data[? "save_name"]
    }
    
    else if(check == 0)
    {
        var temp = ds_list_create();
        var tempLevels = ds_list_create();
        
        ds_list_read(temp, data[? "inventory"]);
        ds_list_read(tempLevels, data[? "levels"]);
        
        inventoryTemp = temp[| 0];
        levelsTemp = tempLevels[| 0];
        
        
        var i;
        for(i = 0; i < array_length_1d(inventoryTemp); i++)
        {
            if(inventoryTemp[i] != -1)
            {
                inst_weapon = instance_create(-1, -1, inventoryTemp[i]);
                with(inst_weapon)
                {
                    persistent = true;
                    level = other.levelsTemp[i, 0];
                    stack_size = other.levelsTemp[i, 1];
                    
                }
                
                with(obj_inventory)
                {
                    scr_inventory_add_index(other.inst_weapon, obj_char.id, i);
                }
                //show_debug_message(string(inst_weapon.name));
            }
        }
        
        ds_list_destroy(temp);
        ds_list_destroy(tempLevels);
        
        var tempLoadout = ds_list_create();
        var tempLoadoutLevels = ds_list_create();
        var tempLoadoutStacks = ds_list_create();
        
        ds_list_read(tempLoadout, data[? "loadouts"]);
        ds_list_read(tempLoadoutLevels, data[? "loadoutsLevels"]);
        ds_list_read(tempLoadoutStacks, data[? "loadoutsStacks"]);
        
        loadoutTemp = tempLoadout[| 0];
        loadoutLevels = tempLoadoutLevels[| 0];
        loadoutStacks = tempLoadoutStacks[| 0];
        
        var j;
        for(i = 0; i < 4; i++)
        {
            for(j = 0; j < 10; j++)
            {
                if(loadoutTemp[i, j] != -1)
                {
                    inst_weapon = instance_create(-1, -1, loadoutTemp[i, j]);
                    
                    with(inst_weapon)
                    {
                        persistent = true;
                        level = other.loadoutLevels[i, j];
                        stack_size = other.loadoutStacks[i, j];
                        equipped = true;
                        on_ground = false;
                        visible = false;
                    }
                    
                    with(obj_inventory)
                    {
                        loadout[i, j] = other.inst_weapon;
                    }
                    
                    if(inst_weapon.passive)
                    {
                        with(inst_weapon)
                        {
                            script_execute(activation_script);
                        }
                    }
                }
            }
        }
        
        ds_list_destroy(tempLoadout);
        ds_list_destroy(tempLoadoutLevels);
        ds_list_destroy(tempLoadoutStacks);
        
        var tempPersistent = ds_list_create();
        var tempPersistentLevels = ds_list_create();
        var tempPersistentStacks = ds_list_create();
        
        ds_list_read(tempPersistent, data[? "persistent"]);
        ds_list_read(tempPersistentLevels, data[? "persistentLevels"]);
        ds_list_read(tempPersistentStacks, data[? "persistentStacks"]);
        
        persistentTemp = tempPersistent[| 0];
        persistentLevels = tempPersistentLevels[| 0];
        persistentStacks = tempPersistentStacks[| 0];
        
        for(i = 0; i < 3; i++)
        {
            if(persistentTemp[i] != -1)
            {
                inst_weapon = instance_create(-1, -1, persistentTemp[i]);
                
                with(inst_weapon)
                {
                    persistent = true;
                    level = other.persistentLevels[i];
                    stack_size = other.persistentStacks[i];
                    equipped = true;
                    on_ground = false;
                    visible = false;
                }
                
                with(obj_inventory)
                {
                    persistent_items[i] = other.inst_weapon;
                }
                
                if(inst_weapon.passive)
                {
                    with(inst_weapon)
                    {
                        script_execute(activation_script);
                    }
                }
            }
        }
        
        ds_list_destroy(tempPersistent);
        ds_list_destroy(tempPersistentLevels);
        ds_list_destroy(tempPersistentStacks);
        
        if(instance_exists(obj_inventory))
        {
            obj_inventory.current_loadout = data[? "currentloadout"];
            obj_inventory.save_loadout = data[? "saveloadout"];
            obj_inventory.saving_loadout = data[? "savingloadout"];
        }
    }
    
    ds_map_destroy(data);
}

//Load world

if(file_exists("room_save.ini")) {
    file_delete("room_save.ini");
}

if(file_exists("room_save_" + load_slot + ".ini")) {
    file_copy("room_save_" + load_slot + ".ini", "room_save.ini");
    ini_open("room_save_" + load_slot + ".ini");
    room_x = ini_read_real("char_position", "room_x", -1);
    room_y = ini_read_real("char_position", "room_y", -1);
    char_x = ini_read_real("char_position", "x", 0);
    char_y = ini_read_real("char_position", "y", 0);
    world_difficulty = ini_read_real("controller_config", "world_difficulty", 1);
    farthest_world = ini_read_real("controller_config", "farthest_world", 1);
    ini_close();
    
    if(instance_exists(obj_universal_controller)) {
        obj_universal_controller.room_x = room_x;
        obj_universal_controller.room_y = room_y;
        obj_universal_controller.world_difficulty = world_difficulty;
        obj_universal_controller.farthest_world = farthest_world;
    }
    if(instance_exists(obj_char)) {
        if(not obj_char.using_key) {
            obj_char.x = char_x;
            obj_char.y = char_y;
            obj_universal_controller.loading_char_x = char_x;
            obj_universal_controller.loading_char_y = char_y;
        }
    }       
}
