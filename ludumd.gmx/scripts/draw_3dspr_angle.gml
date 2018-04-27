var sprite = argument0;
var subi = argument1;
var xpos = argument2;
var ypos = argument3;
var zpos = argument4;
var ang = argument5;

var tex, w, h, x0, y0, z0, x1, y1, z1;
tex = sprite_get_texture(sprite, subi);
w = sprite_get_width(sprite);
h = sprite_get_height(sprite);

x0 = xpos + lengthdir_x(w, ang)/2;
y0 = ypos + lengthdir_y(w, ang)/2;
z0 = zpos - h/2;
x1 = xpos - lengthdir_x(w, ang)/2;
y1 = ypos - lengthdir_y(w, ang)/2;
z1 = zpos + h/2;

d3d_draw_wall(x0, y0, z0, x1, y1, z1, tex, 1, 1);

