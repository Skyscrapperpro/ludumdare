///event_putdown_plate(plates_table, given_plate)

var ID = argument0;
var given_plate = argument1;

ds_list_copy(ID.burger, given_plate.burger);

//Update raycast heigth
with (ID)
{
    ray_h = (ING_SEP * (ds_list_size(burger) - 1)) + (sprite_get_height(ingredients) * BURGER_SCALE);
    ray_z = hplate + ray_h/2;
}

with (given_plate)
{
    ds_list_destroy(burger);
    instance_destroy();
}

