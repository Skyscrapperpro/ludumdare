var spr = argument0;
var xorig = argument1;
var yorig = argument2;
var xdest = argument3;
var ydest = argument4;
var ang = argument5;

var ret = false;
var w = sprite_get_width(spr);
var difx = lengthdir_x(w, ang)/2;
var dify = lengthdir_y(w, ang)/2;
var x0 = xdest + difx;
var y0 = ydest + dify;
var x1 = xdest - difx;
var y1 = ydest - dify;

var angleto0 = add_angle(point_direction(xorig, yorig, x0, y0), -90, ANGREF);
var angleto1 = add_angle(point_direction(xorig, yorig, x1, y1), -90, ANGREF);
var anglemin = min(angleto0, angleto1);
var anglemax = max(angleto0, angleto1);
var target = add_angle(point_direction(xorig, yorig, xdest, ydest), -90, ANGREF);

if ((target > anglemin) && (target < anglemax))
{
    if (ang > anglemin) //and
    if (ang < anglemax)
        ret = true;
}
else if ((player_obj.angle < anglemin) || (player_obj.angle > anglemax))
    ret = true;
    
if (event_type == ev_draw) d3d_draw_wall(x0, y0, -CAM_Z, x1, y1, 0, sprite_get_texture(spr, 0), 1, 1)
    
return ret;

