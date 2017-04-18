///Fire gun.
angle = image_angle;
//We can only fire if the weapon is not on cooldown.
//if(can_activate)
//{
    //show_debug_message("blue gun image angle " + string(image_angle));
    //show_debug_message("blue gun.visible = " + string(visible));
    //Fire bullet. 
    inst = instance_create(x, y, obj_bullet);
    with(inst)
    {
        speed = 5;
        direction = other.angle;
        damage = other.damage;
        owner = other.owner;
        
        //show_debug_message("bullet direction = " + string(other.angle));
    }
    
    //Initiate cooldown.
    alarm[COOLDOWN] = cooldown;
    //We can't fire until the cooldown is complete.
    can_activate = false;

//}
