var bgr = argument0;
var xpos = argument1;
var ypos = argument2;
var zpos = argument3;
var w = argument4;
var h = argument5;
var ang = argument6;

var tex = background_get_texture(bgr);

x0 = xpos + (lengthdir_x(w, ang)/2);
y0 = ypos + (lengthdir_y(w, ang)/2);
z0 = zpos - (h/2);
x1 = xpos - (lengthdir_x(w, ang)/2);
y1 = ypos - (lengthdir_y(w, ang)/2);
z1 = zpos + (h/2);

d3d_draw_wall(x0, y0, z0, x1, y1, z1, tex, 1, 1);

