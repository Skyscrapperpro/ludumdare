///clamp_angle(angle, format)

//Returns angle in the range (limit - 359, limit)
var scr_angle = argument0;
var limit = argument1;

scr_angle += floor((limit - scr_angle) / 360) * 360;

return scr_angle;

