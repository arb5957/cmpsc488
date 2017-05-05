randomize();

switch(name)
{
    case "enemy1" : 
        hp = irandom_range(2, 6) * obj_universal_controller.world_difficulty;
        weapon = global.weap_array[irandom_range(1,15)];
        movement = global.enemy_movements[irandom_range(1,2)];
        attack_pattern = choose("aggressive", "within_range");
        move_speed_default = 2;
        
        item = global.items_array[2];
        
        common_drop = obj_potion;
        common_drop_rate = 25;
        
        rare_drop = obj_gun_1;
        rare_drop_rate = 65;
        
        ultra_drop = obj_gun_2;
        ultra_drop_rate = 85;
        break;
        
    case "enemy1TEST" :
        hp = 5;
        weapon = "obj_shield";
        movement = "speed";
        attack_pattern = "aggressive";
        move_speed_default = 2;
        
        item = global.items_array[2];
        
        common_drop = obj_potion;
        common_drop_rate = 25;
        
        rare_drop = obj_pet;
        rare_drop_rate = 65;
        
        ultra_drop = obj_quake_boots;
        ultra_drop_rate = 85;
        break;
    
    case "enemy2" :
        hp = irandom_range(6, 10) * obj_universal_controller.world_difficulty;
        weapon = global.weap_array[irandom_range(1,15)];;
        movement = global.enemy_movements[3];
        attack_pattern = choose("aggressive", "within_range");
        item = global.items_array[1];
        
        common_drop = obj_potion;
        common_drop_rate = 25;
        
        rare_drop = obj_glove;
        rare_drop_rate = 65;
        
        ultra_drop = obj_whip;
        ultra_drop_rate = 85;
        break;
    
    case "butterfly" :
        hp = irandom_range(4, 6)* obj_universal_controller.world_difficulty;
        movement = "butterfly";
        attack_pattern = "butterfly";
        weapon = "obj_blue_gun";
        item = "obj_potion_poison";
        move_speed_default = 1;
        
        common_drop = obj_potion_poison;
        common_drop_rate = 25;
        
        rare_drop = obj_speed_boost;
        rare_drop_rate = 65;
        
        ultra_drop = obj_flying_stone;
        ultra_drop_rate = 85;
        
        break;
    
    case "dig" :
        hp = irandom_range(8, 12)* obj_universal_controller.world_difficulty;
        movement = "dig";
        attack_pattern = "dig";
        weapon = global.weap_array[irandom_range(1,15)];
        item = choose("obj_potion", "obj_shield");
        move_speed_default = 1;
        
        common_drop = obj_potion;
        common_drop_rate = 25;
        
        rare_drop = obj_shovel;
        rare_drop_rate = 65;
        
        ultra_drop = obj_quake_boots;
        ultra_drop_rate = 85;
        break;
    
    case "dup_real" :
        hp = irandom_range(5, 10)* obj_universal_controller.world_difficulty;
        movement = "speed";
        attack_pattern = "within_range";
        weapon = global.weap_array[irandom_range(1, 15)];
        item = "obj_pet";
        move_speed_default = 2;
        
        common_drop = obj_potion;
        common_drop_rate = 25;
        
        rare_drop = obj_gun_3;
        rare_drop_rate = 65;
        
        ultra_drop = obj_glove_bounce;
        ultra_drop_rate = 85;
        break;
        
    case "dup_fake" :
        hp = irandom_range (3, 6)* obj_universal_controller.world_difficulty;
        movement = "speed";
        attack_pattern = choose("aggressive", "within_range");
        weapon = global.weap_array[irandom_range(1, 15)];
        item = "obj_potion";
        move_speed_default = 2;
        
        common_drop = obj_potion;
        common_drop_rate = 25;
        
        rare_drop = obj_dagger;
        rare_drop_rate = 65;
        
        ultra_drop = obj_sword;
        ultra_drop_rate = 85;
        break;
    
    case "healer" :
        hp = irandom_range (3, 6)* obj_universal_controller.world_difficulty;
        movement = "healer";
        attack_pattern = "healer";
        weapon = "obj_blue_gun";
        item = choose("obj_potion", "obj_shield", "obj_speed_boost", "obj_flying_stone");
        mvoe_speed_default = 2;
        
        common_drop = obj_potion;
        common_drop_rate = 25;
        
        rare_drop = obj_shield;
        rare_drop_rate = 65;
        
        ultra_drop = obj_speed_boost;
        ultra_drop_rate = 85;
        break;
        
    case "snake" :
        hp = irandom_range (11, 20)* obj_universal_controller.world_difficulty;
        movement = "snake_head";
        attack_pattern = "snake_head";
        weapon = "obj_blue_gun";
        item = choose("obj_sword", "obj_att_remote", "obj_slower");
        move_speed_default = 2;
        
        common_drop = obj_gun_4;
        common_drop_rate = 25;
        
        rare_drop = obj_gun_5;
        rare_drop_rate = 65;
        
        ultra_drop = obj_gun_6;
        ultra_drop_rate = 85;
        break;
    
    case "summoner" :
        hp = irandom_range (4, 8)* obj_universal_controller.world_difficulty;
        movement = "summoner";
        attack_pattern = "summoner";
        weapon = "obj_blue_gun";
        item = "obj_potion";
        move_speed_default = 6;
        
        common_drop = obj_slower;
        common_drop_rate = 25;
        
        rare_drop = obj_sword;
        rare_drop_rate = 65;
        
        ultra_drop = obj_glove;
        ultra_drop_rate = 85;
        break;
        
    case "inker" :
        hp = irandom_range (10, 12)* obj_universal_controller.world_difficulty;
        movement = "inker";
        attack_pattern = "inker";
        weapon = "obj_blue_gun";
        item = "obj_potion";
        move_speed_default = 1;
        
        common_drop = obj_slower;
        common_drop_rate = 25;
        
        rare_drop = obj_dual_sword;
        rare_drop_rate = 65;
        
        ultra_drop = obj_spin_blade;
        ultra_drop_rate = 85;
        break;
        
    case "rock_thing" :
        hp = 2;
        movement = "speed";
        attack_pattern = "aggressive";
        weapon = "obj_flame_gun";
        item = "obj_potion";
        move_speed_default = 2;
        
        common_drop = obj_potion;
        common_drop_rate = 25;
        
        rare_drop = obj_potion;
        rare_drop_rate = 65;
        
        ultra_drop = obj_potion;
        ultra_drop_rate = 85;
        break;  
        
}

drop_rate = irandom_range(1, 100);
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
