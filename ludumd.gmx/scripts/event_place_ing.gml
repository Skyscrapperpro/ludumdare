///event_place_ing(plates_table, spatulaburger)

var ID = argument0;

if (!ID.finished)
{
    var spat = spat_to_burger(argument1);
    var size = ds_list_size(ID.burger);
    
    //Add ingredient
    if ((spat == 2) && (size > 0))
    {
        ds_list_add(ID.burger, 7);
        ID.finished = true;
    }
    else ds_list_add(ID.burger, spat);
    
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

