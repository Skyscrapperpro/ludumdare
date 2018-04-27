//Returns angle sum between with limit being max vakue
//If it is clamped, then the min value is -limit, otherwise it's limit-360
var scr_angle = argument0;
var addition = argument1;
var limit = argument2;

if ((scr_angle + addition) < (limit-360)) { scr_angle += addition + 360; }
else if ((scr_angle + addition) >= limit) { scr_angle += addition - 360; }
else scr_angle += addition;

return scr_angle;

