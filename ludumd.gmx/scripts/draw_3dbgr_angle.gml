///draw_3dbgr_angle(bgr, x, y, z, width, height, rotation_z, rotation_x, repetitions_x, repetitions_y)

var w = argument4;
var h = argument5;
var sclx = argument8/2;
var scly = argument9/2;

d3d_transform_set_identity();
d3d_transform_add_rotation_x(argument7);
d3d_transform_add_rotation_z(argument6);
d3d_transform_add_translation(argument1, argument2, argument3);

for(var i = -sclx; i < sclx; i++)
    for(var j = -scly; j < scly; j++)
        draw_background_stretched(argument0, i * w, j * h, w, h)

d3d_transform_set_identity();

