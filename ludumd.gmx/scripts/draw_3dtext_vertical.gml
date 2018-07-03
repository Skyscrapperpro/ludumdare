///draw_3dtext_vertical(x, y, z, string, scale, angle, color, alpha)

var _xpos = argument0;
var _ypos = argument1;
var _zpos = argument2;
var _str = argument3;
var _scale = argument4
var _angle = argument5;
var _color = argument6;
var _alpha = argument7;

d3d_transform_set_identity();
d3d_transform_add_rotation_x(90);
d3d_transform_add_rotation_z(_angle);
d3d_transform_add_translation(_xpos, _ypos, _zpos);

draw_set_alpha(_alpha);
draw_set_colour(_color);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed(0, 0, _str, _scale, _scale, 0);

draw_set_alpha(1);
draw_set_color(c_white);

d3d_transform_set_identity();

