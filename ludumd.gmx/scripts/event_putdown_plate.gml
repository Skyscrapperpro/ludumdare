var obj = argument0;
var given_plate = argument1;

obj.burger = given_plate.burger;
obj.arraypos = given_plate.arraypos;

with (given_plate) instance_destroy();

