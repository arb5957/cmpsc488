if(activated == true)
{
    if(can_quake == true)
    {
        can_quake = false;
        alarm[1] = 300;
        inst_quake = instance_create(obj_char.x, obj_char.y, obj_quake);
        
        with(inst_quake)
        {
            damage = 1;
            owner = other.owner;
        }
    }
}
       
