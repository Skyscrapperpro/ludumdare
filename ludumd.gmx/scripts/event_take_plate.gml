///event_take_plate(plates_table)

var _ID = argument0;
var _given_plate = instance_create(x, y, taken_plate_obj);
_given_plate.burger = ds_list_create();
ds_list_copy(_given_plate.burger, _ID.burger);

with (_ID)
{
    ds_list_clear(burger);
    ray_h = sprite_get_height(ingredients) * BURGER_SCALE;
    ray_z = hplate + ray_h/2;
}

global.handitem = 1;
return _given_plate;

