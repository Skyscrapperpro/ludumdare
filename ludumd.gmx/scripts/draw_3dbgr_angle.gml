///draw_3dbgr_angle(texture, x, y, z, width, height, rotation, x_repetitions)

var xpos = argument1;
var ypos = argument2;
var zpos = argument3;
var h = argument5;
var ang = argument6;
var sclx = argument7;
var whalf = (argument4/2) * sclx;

var difx = lengthdir_x(whalf, ang);
var dify = lengthdir_y(whalf, ang);

d3d_draw_wall(xpos + difx, ypos + dify, zpos + (h/2), xpos - difx, ypos - dify, zpos - (h/2), argument0, sclx, 1);

