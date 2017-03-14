if(can_cloud == true)
{
    can_cloud = false;
    alarm[2] = 20;
    instance_create(x, y, obj_acid_cloud);
}
