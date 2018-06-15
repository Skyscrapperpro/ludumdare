///event_grill_burger(grill, spatulaburger)

switch (argument1)
{
    case 1:
        var ins = argument0;
        var burg = instance_create(ins.xcast, ins.ycast, burger_obj);
        burg.z += ins.h;
        
        with (burg)
        {
            ztimer = z + TIMER_HEIGHT;
            temp = 0;
            cook = 0;
        }
        break;
        
    case 2:
        var ins = argument0;
        var burg = instance_create(ins.xcast, ins.ycast, burger_obj);
        burg.z += ins.h;
        
        with (burg)
        {
            ztimer = z + TIMER_HEIGHT;
            temp = (sprite_get_number(burger_timer) - 1)/2;
            cook = temp div divissor;
        }
        break;
        
    default:
        break;
}

