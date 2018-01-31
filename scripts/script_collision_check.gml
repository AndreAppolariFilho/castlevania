///script_collision_check(obj)
inst = instance_place(x, y, argument0);
if inst != noone{
    with(inst){
        other.points+=points;
        instance_destroy();
    }
   }
