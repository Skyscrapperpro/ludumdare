var xpos = argument0;
var ypos = argument1;
var angle = argument2;
var ret = argument3;

var d = point_distance(0, 0, xpos, ypos);
var r = point_direction(0, 0, xpos, ypos);

if (ret) then return lengthdir_y(d, r + angle);
else return lengthdir_x(d, r + angle);

