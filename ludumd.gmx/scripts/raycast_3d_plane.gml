///raycast_3d_plane(width_x_to_angle, length_y_to_angle, xorig, yorig, zorig, x, y, z, rotation, horizontal_angle_orig, vertical_angle_orig)

var w = argument0;
var l = argument1;
var xorig = argument2;
var yorig = argument3;
var zorig = argument4;
var xdest = argument5;
var ydest = argument6;
var zdest = argument7;
var ang = argument8;
var angorig = argument9;
var zang = argument10;

var ret = false;

var angrel = angle_difference(angorig, ang);
var dangrel = angle_difference(point_direction(xorig, yorig, xdest, ydest), ang);
var dist = point_distance(xorig, yorig, xdest, ydest);
var zrel = zdest - zorig;

var zang_p = zangle_projection_x(zang, angrel);
var distp = lengthdir_x(dist, dangrel);
var a0 = darctan2(zrel, distp + w/2);
var a1 = darctan2(zrel, distp - w/2);

if ((zang_p < a0) && (zang_p > a1))
{
    zang_p = zangle_projection_y(zang, angrel);
    distp = -lengthdir_y(dist, dangrel);
    a0 = darctan2(zrel, distp + l/2);
    a1 = darctan2(zrel, distp - l/2);
    
    if ((zang_p < a0) && (zang_p > a1)) then ret = true;
}

return ret;

