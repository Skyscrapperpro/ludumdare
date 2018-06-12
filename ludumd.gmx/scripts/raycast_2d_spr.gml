///raycast_2d_spr(width, xorig, yorig, x, y, rotation, angle_orig)

var halfw = argument0/2;
var xorig = argument1;
var yorig = argument2;
var xdest = argument3;
var ydest = argument4;
var ang = argument5;
var angorig = argument6;

var ret;
if (ang + 90 == angorig)
{
    var midang = clamp_angle(point_direction(xorig, yorig, xdest, ydest), ANGREF);
    angorig = abs(angle_difference(angorig, midang));
    
    xdest = xdest + lengthdir_x(halfw, ang);
    ydest = ydest + lengthdir_y(halfw, ang);
    ang = abs(angle_difference(point_direction(xorig, yorig, xdest, ydest), midang));
    
    if (angorig < ang) then ret = true;
    else ret = false;
}
else
{
    var midang = clamp_angle(point_direction(xorig, yorig, xdest, ydest), ANGREF);
    angorig = angle_difference(angorig, midang);
    var difx = lengthdir_x(halfw, ang);
    var dify = lengthdir_y(halfw, ang);
    
    var tempx = xdest + difx;
    var tempy = ydest + dify;
    var a0 = angle_difference(point_direction(xorig, yorig, tempx, tempy), midang);
    tempx = xdest - difx;
    tempy = ydest - dify;
    var a1 = angle_difference(point_direction(xorig, yorig, tempx, tempy), midang);
    
    if ((angorig > min(a0, a1)) && (angorig < max(a0, a1))) then ret = true;
    else ret = false;
}
     
return ret;

