///event_grill_burger(grill)

var ins = argument0;
var burg = instance_create(ins.xcast, ins.ycast, burger_obj);
burg.z += ins.h;

with (burg)
{
    ztimer = z + TIMER_HEIGHT;
    temp = 0;
    cook = 0;
}

