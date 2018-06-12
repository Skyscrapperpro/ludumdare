///event_grill_burger(grill, player)

var obj = argument0;
var player = argument1;

if (player.spatulaburger == 1)
{
    var burg = instance_create(obj.xcast, obj.ycast, burger_obj);
    burg.z += obj.h;
    
    with (burg)
    {
        ztimer = z + TIMER_HEIGHT;
        temp = 0;
        cook = 0;
    }
    with (player) spatulaburger = 0;
}

