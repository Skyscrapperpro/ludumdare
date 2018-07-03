///event_grill_burger(grill, spatulaburger)

switch (argument1)
{
    case 1:
        var _ins = argument0;
        var _burg = instance_create(_ins.xcast, _ins.ycast, burger_obj);
        _burg.z += _ins.h;
        
        with (_burg)
        {
            ztimer = z + TIMER_HEIGHT;
            temp = 0;
            cook = 0;
        }
        break;
        
    case 2:
        var _ins = argument0;
        var _burg = instance_create(_ins.xcast, _ins.ycast, burger_obj);
        _burg.z += _ins.h;
        
        with (_burg)
        {
            ztimer = z + TIMER_HEIGHT;
            temp = (sprite_get_number(burger_timer) - 1)/2;
            cook = temp div divissor;
        }
        break;
        
    default:
        break;
}

