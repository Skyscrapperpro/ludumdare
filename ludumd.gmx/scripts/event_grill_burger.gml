///event_grill_burger(grill)

var obj = argument0;

if ((player_obj.spatulaburger == 1) || (player_obj.spatulaburger == 2) || (player_obj.spatulaburger == 3))
{
    var burg = instance_create(obj.xcast, obj.ycast, burger_obj);
    
    with (burg)
    {
        cook = player_obj.spatulaburger - 1;
        switch (cook)
        {
            case 1:
                temp = timer_half;
                break;
            case 2:
                temp = timer_end;
                break;
            default:
                temp = 0;
                break;
        }
    }
    with (player_obj) spatulaburger = 0;
}

