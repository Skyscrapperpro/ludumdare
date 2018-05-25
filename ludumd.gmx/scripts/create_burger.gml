///create_burger(n_ingredients)

var n = argument0 - 1;

var i, burger;

if (n >= 2) then i = irandom_range(2, n);
else i = irandom(n);

//0 = burger cruda
//1 = burger quemada
//2 = bread, 3 = burger
//4 = cheese, 5 = lechuga
// 6 = tomato, 7 = top bread
burger[i] = 7;
for(i--; i > 0; i--) burger[i] = irandom_range(3, 6);
burger[0] = 2;

return burger;


