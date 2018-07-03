///event_place_ing(plates_table, spatulaburger)

var _ID = argument0;
var _size = ds_list_size(_ID.burger);

if (ds_list_find_value(_ID.burger, _size - 1) != 7)
{
    var _spat = spat_to_burger(argument1);
    
    //Add ingredient
    if ((_spat == 2) && (_size > 0)) then _spat = 7;
    ds_list_add(_ID.burger, _spat);
    
    //Update raycast heigth
    with (_ID)
    {
        ray_h += ING_SEP;
        ray_z = hplate + ray_h/2;
    }
    
    //Return
    return true;
}
else return false;

