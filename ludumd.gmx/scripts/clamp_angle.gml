///clamp_angle(angle, format)

//Returns angle in the range (limit - 359, limit)
var _scr_angle = argument0;
var _limit = argument1;

_scr_angle += floor((_limit - _scr_angle) / 360) * 360;

return _scr_angle;

