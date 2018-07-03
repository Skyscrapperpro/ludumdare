///draw_3dspr_angle(sprite, subimagen, x, y, z, xscale, yscale, rotation, shaders_work)

var _sprite = argument0;
var _subi = argument1;
var _xpos = argument2;
var _ypos = argument3;
var _zpos = argument4;
var _sclx = argument5;
var _scly = argument6;
var _ang = argument7;

d3d_transform_set_identity();
d3d_transform_add_rotation_x(90);
d3d_transform_add_rotation_z(_ang);
d3d_transform_add_translation(_xpos, _ypos, _zpos);

if (argument8 && ((_sclx * _scly) < 0))
{
    var _uvs = sprite_get_uvs(_sprite, _subi);
    shader_set(flip_shd);
    shader_set_uniform_f(shader_get_uniform(flip_shd, "uvs_sum"),
        (_uvs[0] + _uvs[2]) * (_sclx < 0),
        (_uvs[1] + _uvs[3]) * (_scly < 0));
    draw_sprite_ext(_sprite, _subi, 0, 0, abs(_sclx), abs(_scly), 0, -1, 1);
    shader_reset();
}
else draw_sprite_ext(_sprite, _subi, 0, 0, abs(_sclx), abs(_scly), 0, -1, 1);

d3d_transform_set_identity();

