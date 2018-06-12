///draw_cuboid(x, y, z, w, l, h, angle, backgrounds_array)
// 0 = top;
// 1 = bottom;
// 2 = front;
// 3 = back;
// 4 = left;
// 5 = right;

var xpos = argument0;
var ypos = argument1;
var zpos = argument2;
var w = argument3;
var l = argument4;
var ang = argument6;
var bak = argument7;

// PRETTY SURE THIS CAN BE DONE BETTER
if (!is_array(bak)) //Horizontal plane
{
    d3d_transform_set_identity();
    d3d_transform_add_rotation_z(ang);
    d3d_transform_add_translation(xpos, ypos, zpos);
    draw_background_stretched(bak, -w/2, -l/2, w, l);
    d3d_transform_set_identity();
}
else
{
    //Top
    var h = argument5;
    if (bak[0] != -1)
    {
        d3d_transform_set_identity();
        d3d_transform_add_rotation_z(ang);
        d3d_transform_add_translation(xpos, ypos, zpos + h/2);
        draw_background_stretched(bak[0], -w/2, -l/2, w, l);
        d3d_transform_set_identity();
    }
    //Bottom
    if ((array_length_1d(bak) > 1) && (bak[1] != -1))
    {
        d3d_transform_set_identity();
        d3d_transform_add_rotation_x(180);
        d3d_transform_add_rotation_z(ang);
        d3d_transform_add_translation(xpos, ypos, zpos - h/2);
        draw_background_stretched(bak[1], -w/2, -l/2, w, l);
        d3d_transform_set_identity();
    }
    //Front
    if ((array_length_1d(bak) > 2) && (bak[2] != -1))
    {
        d3d_transform_set_identity();
        d3d_transform_add_rotation_x(90);
        d3d_transform_add_rotation_z(180);
        d3d_transform_add_translation(0, -l/2, 0);
        d3d_transform_add_rotation_z(ang);
        d3d_transform_add_translation(xpos, ypos, zpos);
        draw_background_stretched(bak[2], -w/2, -h/2, w, h);
        d3d_transform_set_identity();
    }
    //Back
    if ((array_length_1d(bak) > 3) && (bak[3] != -1))
    {
        d3d_transform_set_identity();
        d3d_transform_add_rotation_x(90);
        d3d_transform_add_translation(0, l/2, 0);
        d3d_transform_add_rotation_z(ang);
        d3d_transform_add_translation(xpos, ypos, zpos);
        draw_background_stretched(bak[3], -w/2, -h/2, w, h);
        d3d_transform_set_identity();
    }
    //Left
    if ((array_length_1d(bak) > 4) && (bak[4] != -1))
    {
        d3d_transform_set_identity();
        d3d_transform_add_rotation_x(90);
        d3d_transform_add_rotation_z(270);
        d3d_transform_add_translation(-w/2, 0, 0);
        d3d_transform_add_rotation_z(ang);
        d3d_transform_add_translation(xpos, ypos, zpos);
        draw_background_stretched(bak[4], -l/2, -h/2, l, h);
        d3d_transform_set_identity();
    }
    //Right
    if ((array_length_1d(bak) > 5) && (bak[5] != -1))
    {
        d3d_transform_set_identity();
        d3d_transform_add_rotation_x(90);
        d3d_transform_add_rotation_z(90);
        d3d_transform_add_translation(w/2, 0, 0);
        d3d_transform_add_rotation_z(ang);
        d3d_transform_add_translation(xpos, ypos, zpos);
        draw_background_stretched(bak[5], -l/2, -h/2, l, h);
        d3d_transform_set_identity();
    }
}

