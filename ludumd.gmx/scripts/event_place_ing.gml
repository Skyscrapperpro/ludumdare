///event_place_ing(plates_table, spatulaburger)

var ID = argument0;
var size = ds_list_size(ID.burger);

if (ds_list_find_value(ID.burger, size - 1) != 7)
{
    var spat = spat_to_burger(argument1);
    
    //Add ingredient
    if ((spat == 2) && (size > 0)) then spat = 7;
    ds_list_add(ID.burger, spat);
    
    //Update raycast heigth
    with (ID)
    {
        ray_h += ING_SEP;
        ray_z = hplate + ray_h/2;
    }
    
    //Return
    return true;
}
else return false;

