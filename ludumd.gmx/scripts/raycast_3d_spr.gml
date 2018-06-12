///raycast_3d_spr(width, height, xorig, yorig, zorig, x, y, z, rotation, horizontal_angle_orig, vertical_angle_orig)

var w = argument0;
var h = argument1;
var xorig = argument2;
var yorig = argument3;
var z0 = argument4;
var xdest = argument5;
var ydest = argument6;
var z1 = argument7;
var ang = argument8;
var angorig = argument9;
var zang = argument10;

var ret = false;

//Reuse of variables for optimization
//Could be improved
z1 = z1 - z0; //z1 = relative height
z0 = z1 + h/2; //z0 = point top
z1 = z1 - h/2; //z1 = point bottom
h = point_distance(xorig, yorig, xdest, ydest); //h = distance

z0 = darctan2(z0, h); //z0 = angle top
z1 = darctan2(z1, h); //z1 = angle bottom

if ((zang < z0) && (zang > z1)) //and
if (raycast_2d_spr(w, xorig, yorig, xdest, ydest, ang, angorig)) then ret = true;

return ret;

