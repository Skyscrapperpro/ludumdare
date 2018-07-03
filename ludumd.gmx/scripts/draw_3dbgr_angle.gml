///draw_3dbgr_angle(bgr, x, y, z, width, height, rotation_z, rotation_x, repetitions_x, repetitions_y)

var _w = argument4;
var _h = argument5;
var _sclx = argument8/2;
var _scly = argument9/2;

d3d_transform_set_identity();
d3d_transform_add_rotation_x(argument7);
d3d_transform_add_rotation_z(argument6);
d3d_transform_add_translation(argument1, argument2, argument3);

for(var i = -_sclx; i < _sclx; i++)
    for(var j = -_scly; j < _scly; j++)
        draw_background_stretched(argument0, i * _w, j * _h, _w, _h)

d3d_transform_set_identity();

