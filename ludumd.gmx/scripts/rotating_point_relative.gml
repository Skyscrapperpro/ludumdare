///rotating_point_relative(x, y, rotation, return_y)

var xpos = argument0;
var ypos = argument1;
var angle = argument2;
var ret = argument3;

var d = point_distance(0, 0, xpos, ypos);
var r = darctan2(-ypos, xpos) + angle;

if (ret) then return lengthdir_y(d, r);
else return lengthdir_x(d, r);

