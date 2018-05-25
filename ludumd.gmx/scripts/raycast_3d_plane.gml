///raycast_3d_plane(width, length, xorig, yorig, zorig, x, y, z, rotation, horizontal_angle_orig, vertical_angle_orig)

var w = argument0;
var h = argument1;
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
var dist = point_distance(xorig, yorig, xdest, ydest);
var y0 = dist - h/2; //ToDo: this the arch of a circular line, not a rectangle
var y1 = dist + h/2;

var zangleto0 = clamp_angle(point_direction(0, zorig, y0, zdest), ANGREF);
var zangleto1 = clamp_angle(point_direction(0, zorig, y1, zdest), ANGREF);

if (zang > zangleto0) //and
if (zang < zangleto1) //and
if (raycast_2d_spr(w, xorig, yorig, xdest, ydest, ang, angorig)) then ret = true;

return ret;

