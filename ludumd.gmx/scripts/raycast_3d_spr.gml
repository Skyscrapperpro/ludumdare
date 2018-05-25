///raycast_3d_spr(width, height, xorig, yorig, zorig, x, y, z, rotation, horizontal_angle_orig, vertical_angle_orig)

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
var z0 = zdest + h/2; //ToDo: this is not counting on sligth rotations of the object and perspective
var z1 = zdest - h/2;

var zangleto0 = clamp_angle(point_direction(0, zorig, dist, z0), ANGREF);
var zangleto1 = clamp_angle(point_direction(0, zorig, dist, z1), ANGREF);

if (zang > zangleto0) //and
if (zang < zangleto1) //and
if (raycast_2d_spr(w, xorig, yorig, xdest, ydest, ang, angorig)) then ret = true;

return ret;

