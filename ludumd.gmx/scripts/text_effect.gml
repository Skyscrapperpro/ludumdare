///text_effect(x, y, z, string, scale, angle, color, alpha)
var xpos = argument0;
var ypos = argument1;
var zpos = argument2;
var str = argument3;
var scale = argument4
var angle = argument5;
var color = argument6;
var alpha = argument7;

d3d_transform_add_rotation_x(90);
d3d_transform_add_rotation_z(angle);
d3d_transform_add_translation(xpos, ypos, zpos);
draw_set_alpha(alpha);
draw_set_colour(color);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed(0, 0, str, scale, scale, 180);
draw_set_alpha(1);
draw_set_color(c_white);
d3d_transform_set_identity();

