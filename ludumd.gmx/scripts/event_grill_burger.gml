var obj = argument0;

if ((player_obj.spatulaburger == 1) || (player_obj.spatulaburger == 2) || (player_obj.spatulaburger == 3))
{
    var burg = instance_create(obj.xcast, obj.ycast, burger_obj);
    
    with (burg)
    {
        cook = player_obj.spatulaburger - 1;
        temp = cook * TIME_TO_COOK;
    }
    with (player_obj) spatulaburger = 0;
}

