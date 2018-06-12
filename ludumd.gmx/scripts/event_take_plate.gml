///event_take_plate(plates_table)

var ID = argument0;
var given_plate = instance_create(x, y, taken_plate_obj);
given_plate.burger = ds_list_create();
ds_list_copy(given_plate.burger, ID.burger);

with (ID)
{
    ds_list_clear(burger);
    ray_h = sprite_get_height(ingredients) * BURGER_SCALE;
    ray_z = hplate + ray_h/2;
    finished = false;
}

global.handitem = 1;
return given_plate;

