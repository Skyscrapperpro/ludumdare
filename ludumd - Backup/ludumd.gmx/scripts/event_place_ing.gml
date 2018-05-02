///event_place_ing(plates_table, spatulaburger)

var obj = argument0;
var spat = spat_to_burger(argument1);

if (!obj.finished)
{
    if (spat == 2)
    {
        with (obj)
        {
            if (arraypos > 0)
            {
                finished = true;
                burger[arraypos] = 7;
            }
            else
            {
                burger[arraypos] = 2;
                arraypos++;
            }
        }
    }
    else
    {
        obj.burger[obj.arraypos] = spat;
        obj.arraypos++;
    }
    return true;
}
else return false;

