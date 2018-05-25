///subimg_animation(sprite, current_subimg, speed)

var spr = argument0;
var subi = argument1;
var spd = argument2;

subi = cycle_value(0, sprite_get_number(spr), subi, spd);

return subi;

