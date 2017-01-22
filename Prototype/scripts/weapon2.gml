script_execute(weapon1);
var inst;
inst = instance_create(object0.x, object0.y, object1);
with (inst){
    direction = point_direction(x, y, mouse_x, mouse_y - 50);
    speed = 9;
}
