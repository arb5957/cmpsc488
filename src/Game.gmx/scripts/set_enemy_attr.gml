randomize();
switch(name)
{
    case "enemy1" : 
        hp = irandom_range(2, 6);
        weapon = weap_array[1];
        movement = enemy_movements[irandom_range(1,2)];
        item = items_array[1];
        break;
    
    case "enemy2" :
        hp = irandom_range(6, 10);
        weapon = weap_array[1];
        movement = enemy_movements[irandom_range(3, 4)];
        item = items_array[1];
        break;
    
    case "heavy" :
        hp = irandom_range(10, 15);
        weapon = weap_array[3];
        movement = enemy_movements[3];
        item = items_array[3];
        break;
}

drop_rate = irandom_range(1, 100);
attack_pattern = attack_pattern_array[irandom_range(1, 2)];
weapon_inst = instance_create(x + 16, y, asset_get_index(weapon));

//Set the owner of the weapon to enemy.
weapon_inst.owner = owners.ENEMY;
