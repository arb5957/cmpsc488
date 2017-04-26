
if(owner == owners.CHARACTER)
{
    inst = instance_create(obj_char.x, obj_char.y, obj_lightning);
    
    with(inst)
    {
        owner = other.owner;
        from_weapon = other.id;
    }
    
    activated = true;
    can_activate = false;
    image_index = 1;
    alarm[COOLDOWN] = cooldown;
}

else
{
    inst = instance_create(owner_id.x, owner_id.y, obj_lightning);
    
    with(inst)
    {
        owner = other.owner;
        from_weapon = other.id;
    }
    
    activated = true;
    can_activate = false;
    image_index = 1;
    alarm[COOLDOWN] = cooldown;
}
