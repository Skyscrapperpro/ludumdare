///draw_3dspr_angle(sprite, subimagen, x, y, z, scale, rotation, facing_right)

var sprite = argument[0];
var subi = argument[1];
var xpos = argument[2];
var ypos = argument[3];
var zpos = argument[4];
var scl = argument[5];
var ang = argument[6];
var facing_right;
if (argument_count > 7) then facing_right = argument[7];
else facing_right = true;


var tex, w, h, x0, y0, z0, x1, y1, z1;
var tex = sprite_get_texture(sprite, subi);
var w = sprite_get_width(sprite) * scl;
var h = sprite_get_height(sprite) * scl;
var difx = lengthdir_x(w, ang)/2;
var dify = lengthdir_y(w, ang)/2;

var x0 = xpos + difx;
var y0 = ypos + dify;
var z0 = zpos - h/2;
var x1 = xpos - difx;
var y1 = ypos - dify;
var z1 = zpos + h/2;

if (facing_right) then d3d_draw_wall(x0, y0, z0, x1, y1, z1, tex, 1, 1);
else d3d_draw_wall(x0, y0, z0, x1, y1, z1, tex, -1, 1);

