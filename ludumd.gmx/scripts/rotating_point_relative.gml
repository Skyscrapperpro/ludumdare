///rotating_point_relative(x, y, rotation, return_y)

var _xpos = argument0;
var _ypos = argument1;

if (argument3) then return lengthdir_y(point_distance(0, 0, _xpos, _ypos), darctan2(-_ypos, _xpos) + argument2);
else return lengthdir_x(point_distance(0, 0, _xpos, _ypos), darctan2(-_ypos, _xpos) + argument2);

