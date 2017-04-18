//Spawn drone

if (instance_exists(obj_char) && !drone_deployed && can_deploy)
{
    //Disable character's use of items and opening inventory
    if(instance_exists(obj_inventory))
    {
        obj_inventory.can_use_items = false;
        obj_inventory.disabled = true;
    }
    
    //set drone's initial spawn
    var drone_x = obj_char.x + lengthdir_x(20, obj_char.image_angle);
    var drone_y = obj_char.y + lengthdir_y(20, obj_char.image_angle);
    
    //change the character to a stopped state so it cannot move
    obj_char.state = states.STOP;
    obj_char.vspeed = 0;
    obj_char.hspeed = 0;
    
    //spawn drone
    drone = instance_create(drone_x, drone_y, obj_recon_drone);
    drone.image_speed = 1; //make drone animate
    view_object[0] = drone; //set view to follow drone
    drone_deployed = true; //say that the drone is deployed
    drone.depth = -2; // decrease the depth so it appears to fly over stuff
    drone.remote_origin = id; //set remote that is controlling the drone
}

//remote animation
image_speed = .25;
