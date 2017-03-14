if(instance_exists(parent_id))
{   
    with(parent_id)
    {
        new_inst = instance_create(x, y, obj_enemy_duplicate_fake);
        with(new_inst)
        {
            parent_id = other.id;
        }
        children[children_count] = new_inst;
        children_count = children_count + 1;
        
    }
   
}
