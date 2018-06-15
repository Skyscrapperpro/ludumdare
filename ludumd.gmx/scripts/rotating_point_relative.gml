///rotating_point_relative(x, y, rotation, return_y)

var xpos = argument0;
var ypos = argument1;

if (argument3) then return lengthdir_y(point_distance(0, 0, xpos, ypos), darctan2(-ypos, xpos) + argument2);
else return lengthdir_x(point_distance(0, 0, xpos, ypos), darctan2(-ypos, xpos) + argument2);

