///event_compare_burger(customer, plate)

var _cust = argument0;
var _given_plate = argument1;

var _ret = true;
var _len = array_length_1d(_cust.burger_asked);
if (_len != ds_list_size(_given_plate.burger)) then _ret = false;
else for(var i = 0; i < _len; i++)
{
    if (_cust.burger_asked[i] != ds_list_find_value(_given_plate.burger, i))
        _ret = false;
}

return _ret;

