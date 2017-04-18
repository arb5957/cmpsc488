///scr_destroy(object);
//This won't work for objects with more than one instance.
//Beware.
object = argument0;
if(!object == "obj_universal_controller"){
    if(instance_exists(object))
    {
        with(object)
        {
            instance_destroy();
        }
    }
}
