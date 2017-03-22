var rate = irandom_range(1, 100);
if(rate >= common_drop_rate && rate < rare_drop_rate)
{
        inst = instance_create(x, y, common_drop);
        
        with(inst)
        {
            on_ground = true;
        }
}

if(rate >= rare_drop_rate && rate < ultra_drop_rate)
{
        inst = instance_create(x, y, rare_drop);
        
        with(inst)
        {
            on_ground = true;
        }
}    

if(rate >= ultra_drop_rate && rate < 101)
{
        inst = instance_create(x, y, ultra_drop);
        
        with(inst)
        {
            on_ground = true;
        }
}

