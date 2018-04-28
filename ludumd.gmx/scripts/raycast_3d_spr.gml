var spr = argument0;
var xorig = argument1;
var yorig = argument2;
var zorig = argument3;
var xdest = argument4;
var ydest = argument5;
var zdest = argument6;
var ang = argument7;
var zang = argument8;

var ret = false;
var h = sprite_get_height(spr);
var dist = point_distance(xorig, yorig, xdest, ydest);
var z0 = zdest + h/2;
var z1 = zdest - h/2;

var zangleto0 = add_angle(point_direction(0, zorig, dist, z0), 0, 180);
var zangleto1 = add_angle(point_direction(0, zorig, dist, z1), 0, 180);

if (zang > zangleto0) //and
if (zang < zangleto1) //and
if (raycast_2d_spr(spr, xorig, yorig, xdest, ydest, ang)) then ret = true;

return ret;

