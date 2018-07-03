///draw_cuboid(x, y, z, w, l, h, angle, backgrounds_array)
// 0 = top;
// 1 = bottom;
// 2 = front;
// 3 = back;
// 4 = left;
// 5 = right;

var _xpos = argument0;
var _ypos = argument1;
var _zpos = argument2;
var _w = argument3;
var _l = argument4;
var _ang = argument6;
var _bak = argument7;

// PRETTY SURE THIS CAN BE DONE BETTER
if (!is_array(_bak)) //Horizontal plane
{
    d3d_transform_set_identity();
    d3d_transform_add_rotation_z(_ang);
    d3d_transform_add_translation(_xpos, _ypos, _zpos);
    draw_background_stretched(_bak, -_w/2, -_l/2, _w, _l);
    d3d_transform_set_identity();
}
else
{
    //Top
    var _h = argument5;
    if (_bak[0] != -1)
    {
        d3d_transform_set_identity();
        d3d_transform_add_rotation_z(_ang);
        d3d_transform_add_translation(_xpos, _ypos, _zpos + _h/2);
        draw_background_stretched(_bak[0], -_w/2, -_l/2, _w, _l);
        d3d_transform_set_identity();
    }
    //Bottom
    if ((array_length_1d(_bak) > 1) && (_bak[1] != -1))
    {
        d3d_transform_set_identity();
        d3d_transform_add_rotation_x(180);
        d3d_transform_add_rotation_z(_ang);
        d3d_transform_add_translation(_xpos, _ypos, _zpos - _h/2);
        draw_background_stretched(_bak[1], -_w/2, -_l/2, _w, _l);
        d3d_transform_set_identity();
    }
    //Front
    if ((array_length_1d(_bak) > 2) && (_bak[2] != -1))
    {
        d3d_transform_set_identity();
        d3d_transform_add_rotation_x(90);
        d3d_transform_add_rotation_z(180);
        d3d_transform_add_translation(0, -_l/2, 0);
        d3d_transform_add_rotation_z(_ang);
        d3d_transform_add_translation(_xpos, _ypos, _zpos);
        draw_background_stretched(_bak[2], -_w/2, -_h/2, _w, _h);
        d3d_transform_set_identity();
    }
    //Back
    if ((array_length_1d(_bak) > 3) && (_bak[3] != -1))
    {
        d3d_transform_set_identity();
        d3d_transform_add_rotation_x(90);
        d3d_transform_add_translation(0, _l/2, 0);
        d3d_transform_add_rotation_z(_ang);
        d3d_transform_add_translation(_xpos, _ypos, _zpos);
        draw_background_stretched(_bak[3], -_w/2, -_h/2, _w, _h);
        d3d_transform_set_identity();
    }
    //Left
    if ((array_length_1d(_bak) > 4) && (_bak[4] != -1))
    {
        d3d_transform_set_identity();
        d3d_transform_add_rotation_x(90);
        d3d_transform_add_rotation_z(270);
        d3d_transform_add_translation(-_w/2, 0, 0);
        d3d_transform_add_rotation_z(_ang);
        d3d_transform_add_translation(_xpos, _ypos, _zpos);
        draw_background_stretched(_bak[4], -_l/2, -_h/2, _l, _h);
        d3d_transform_set_identity();
    }
    //Right
    if ((array_length_1d(_bak) > 5) && (_bak[5] != -1))
    {
        d3d_transform_set_identity();
        d3d_transform_add_rotation_x(90);
        d3d_transform_add_rotation_z(90);
        d3d_transform_add_translation(_w/2, 0, 0);
        d3d_transform_add_rotation_z(_ang);
        d3d_transform_add_translation(_xpos, _ypos, _zpos);
        draw_background_stretched(_bak[5], -_l/2, -_h/2, _l, _h);
        d3d_transform_set_identity();
    }
}

