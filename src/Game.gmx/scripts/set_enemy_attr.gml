randomize();
switch(name)
{
    case "enemy1" : 
        hp = irandom_range(2, 6);
        weapon = global.weap_array[irandom_range(1,2)];
        movement = global.enemy_movements[irandom_range(1,2)];
        item = global.items_array[2];
        break;
    
    case "enemy2" :
        hp = irandom_range(6, 10);
        weapon = global.weap_array[irandom_range(1,2)];;
        movement = global.enemy_movements[3];
        item = global.items_array[1];
        break;
    
    case "heavy" :
        hp = irandom_range(10, 15);
        weapon = global.weap_array[3];
        movement = global.enemy_movements[3];
        item = global.items_array[3];
        break;
}

drop_rate = irandom_range(1, 100);
attack_pattern = global.attack_pattern_array[irandom_range(1, 2)];
weapon_inst = instance_create(x + 16, y, asset_get_index(weapon));
item_inst = instance_create(x, y, asset_get_index(item));

//Set the owner of the weapon to enemy.
weapon_inst.owner = owners.ENEMY;
item_inst.owner = owners.ENEMY;
//Tell weapon the owner's instance id.
weapon_inst.owner_id = id;
item_inst.owner_id = id;
item_inst.on_ground = false;
item_inst.visible = false;
weapon_inst.on_ground = false;

//obj_potion uses this variable.
max_hp = hp;

//Using for enemy healer
enemy_max_hp = hp;
