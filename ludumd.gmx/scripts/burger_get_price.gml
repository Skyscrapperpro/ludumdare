///burger_get_price(burger)

var burger = argument0;

var l = array_length_1d(burger) - 1;
var price = 0;
for (var i = 1; i < l; i++)
{
    if (burger[i] == 3) then price += PRICE_BURGER;
    else price += PRICE_INGREDIENT;
}

return price;

