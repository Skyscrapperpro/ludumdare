///create_burger(n_ingredients)

var n = argument0 - 1;

var i, burger;

i = irandom_range(2, n);

//0 = uncooked burger
//1 = burned burger
//2 = bread, 3 = good burger
//4 = cheese, 5 = lechuga
// 6 = tomato, 7 = top bread
burger[i] = 7;
for(i--; i > 0; i--) burger[i] = irandom_range(3, 6);
burger[0] = 2; //It doesn't accept uncooked or burned burgers right now

return burger;

