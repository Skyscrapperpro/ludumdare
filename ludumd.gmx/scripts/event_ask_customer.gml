var obj = argument0;
var given_plate = argument1;

var ret = true;
var len = array_length_1d(obj.burger_asked);
if (len == array_length_1d(given_plate.burger))
{
    for(var i = 0; i < len; i++)
    {
        if (obj.burger_asked[i] != given_plate.burger[i])
            ret = false;
    }
}
else ret = false;

return ret;

