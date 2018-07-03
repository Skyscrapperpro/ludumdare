///create_burger(n_ingredients)

var _n = argument0 - 1;

var _i, _burger;

_i = irandom_range(2, _n);

//0 = uncooked burger
//1 = burned burger
//2 = bread, 3 = good burger
//4 = cheese, 5 = lechuga
// 6 = tomato, 7 = top bread
_burger[_i] = 7;
for(_i--; _i > 0; _i--) _burger[_i] = irandom_range(3, 6);
_burger[0] = 2; //It doesn't accept uncooked or burned burgers right now

return _burger;

