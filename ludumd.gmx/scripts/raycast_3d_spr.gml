var spr_w = argument0;
var h = argument1;
var xorig = argument2;
var yorig = argument3;
var zorig = argument4;
var xdest = argument5;
var ydest = argument6;
var zdest = argument7;
var ang = argument8;
var zang = argument9;

var ret = false;
//var h = sprite_get_height(spr);
var dist = point_distance(xorig, yorig, xdest, ydest);
var z0 = zdest + h/2;
var z1 = zdest - h/2;

var zangleto0 = add_angle(point_direction(0, zorig, dist, z0), 0, ANGREF);
var zangleto1 = add_angle(point_direction(0, zorig, dist, z1), 0, ANGREF);

if (zang > zangleto0) //and
if (zang < zangleto1) //and
if (raycast_2d_spr(spr_w, xorig, yorig, xdest, ydest, ang)) then ret = true;

return ret;

