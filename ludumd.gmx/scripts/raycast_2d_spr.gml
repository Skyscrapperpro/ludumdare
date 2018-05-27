///raycast_2d_spr(width, xorig, yorig, x, y, rotation, angle_orig)

//var spr = argument0;
var w = argument0;
var xorig = argument1;
var yorig = argument2;
var xdest = argument3;
var ydest = argument4;
var ang = argument5;
var angorig = argument6;

var ret = false;
var difx = lengthdir_x(w, ang)/2; //Could be improved
var dify = lengthdir_y(w, ang)/2;
var x0 = xdest + difx;
var y0 = ydest + dify;
var x1 = xdest - difx;
var y1 = ydest - dify;

var angleto0 = clamp_angle(point_direction(xorig, yorig, x0, y0) - 90, ANGREF);
var angleto1 = clamp_angle(point_direction(xorig, yorig, x1, y1) - 90, ANGREF);
var anglemin = min(angleto0, angleto1);
var anglemax = max(angleto0, angleto1);
var target = clamp_angle(point_direction(xorig, yorig, xdest, ydest) - 90, ANGREF);

if ((target > anglemin) && (target < anglemax))
{
    if (angorig > anglemin) //and
    if (angorig < anglemax)
        ret = true;
}
else if ((angorig < anglemin) || (angorig > anglemax))
    ret = true;
     
return ret;

