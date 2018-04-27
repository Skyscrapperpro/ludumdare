var bgr = argument0;
var xpos = argument1;
var ypos = argument2;
var zpos = argument3;
var w = argument4;
var h = argument5;
var ang = argument6;

var tex = background_get_texture(bgr);
var difx = (lengthdir_x(w, ang)/2);
var dify = (lengthdir_y(w, ang)/2);
var x0 = xpos + difx;
var y0 = ypos + dify;
var z0 = zpos - (h/2);
var x1 = xpos - difx;
var y1 = ypos - dify;
var z1 = zpos + (h/2);

d3d_draw_wall(x0, y0, z0, x1, y1, z1, tex, 1, 1);

