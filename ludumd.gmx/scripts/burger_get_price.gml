///burger_get_price(burger)

var _burger = argument0;

var _price = 0;
for (var i = 1; i < (array_length_1d(_burger) - 1); i++)
{
    if (_burger[i] == 3) then _price += PRICE_BURGER;
    else _price += PRICE_INGREDIENT;
}

return _price;

