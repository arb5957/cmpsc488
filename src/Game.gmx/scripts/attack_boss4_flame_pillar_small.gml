
var i;
for( i = 1; i < 5; i+=1)
{
    inst_set = instance_create(obj_char.x + irandom_range(-100, 100), obj_char.y + irandom_range(-100, 100), obj_flame_piller_large_set);
    
    with(inst_set)
    {
        sprite_index = spr_flame_piller_small_set;
        alarm[1] = 30;
    }
}
