///scr_item_pickup(item_name, stacksize); 
ds_queue_enqueue(obj_char.queue, string(argument0) + " x" + string(argument1));
obj_char.timer++;
