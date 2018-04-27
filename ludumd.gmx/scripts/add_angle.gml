//Returns angle sum between with limit being max vakue
//If it is clamped, then the min value is -limit, otherwise it's limit-360
var scr_angle = argument0;
var addition = argument1;
var limit = argument2;

scr_angle += addition;

while ((scr_angle) < (limit-360)) { scr_angle += 360; }
while ((scr_angle) >= limit) { scr_angle  -= 360; }

return scr_angle;

