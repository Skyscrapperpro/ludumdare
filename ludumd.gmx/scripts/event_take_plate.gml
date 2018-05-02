///event_take_plate(plates_table)

var obj = argument0;
var given_plate = instance_create(x, y, taken_plate_obj);
given_plate.burger = obj.burger;
given_plate.arraypos = obj.arraypos;

with (obj)
{
    burger = 0;
    arraypos = 0;
    burger[arraypos] = 0;
    finished = false;
}

return given_plate;

