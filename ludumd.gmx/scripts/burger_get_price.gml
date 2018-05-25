///burger_get_price(burger)

var burger = argument0;

var l = array_length_1d(burger);
var price = 0;
for (var i = 0; i < l; i++)
{
    if (burger[i] == 3) then price += PRICE_BURGER;
    else
    if (burger[i] != 2) //and
    if (burger[i] != 7) then price += PRICE_INGREDIENT;
}

return price;

