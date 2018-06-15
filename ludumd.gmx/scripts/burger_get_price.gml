///burger_get_price(burger)

var burger = argument0;

var price = 0;
for (var i = 1; i < (array_length_1d(burger) - 1); i++)
{
    if (burger[i] == 3) then price += PRICE_BURGER;
    else price += PRICE_INGREDIENT;
}

return price;

