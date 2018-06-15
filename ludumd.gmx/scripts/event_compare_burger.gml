///event_compare_burger(customer, plate)

var cust = argument0;
var given_plate = argument1;

var ret = true;
var len = array_length_1d(cust.burger_asked);
if (len != ds_list_size(given_plate.burger)) then ret = false;
else for(var i = 0; i < len; i++)
{
    if (cust.burger_asked[i] != ds_list_find_value(given_plate.burger, i))
        ret = false;
}

return ret;

