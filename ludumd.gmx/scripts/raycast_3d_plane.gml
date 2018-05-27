///raycast_3d_plane(width, length, xorig, yorig, zorig, x, y, z, rotation, horizontal_angle_orig, vertical_angle_orig)

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

var total_angle = clamp_angle(ang + angorig, ANGREF);
var diag_angle = point_direction(0, 0, w, l); //Should be defined at create event (actually even the sums below should)
var diag_l = point_distance(0, 0, w, l); //Should be defined at create event
var ray_is_in_angle;

//Check top-down angle
if ((total_angle > 90) || ((total_angle < 0) && (total_angle > -90)))
    ray_is_in_angle = raycast_2d_spr(diag_l, xorig, yorig, xdest, ydest, image_angle - diag_angle, angorig);
else
    ray_is_in_angle = raycast_2d_spr(diag_l, xorig, yorig, xdest, ydest, image_angle + diag_angle, angorig);

if (ray_is_in_angle)
{
    //Check horizontal plane (copied from raycast_box)
    zi = zclose;
    if (sin(degtorad(zangle)) != 0)
    {
        di = (zi + originz)/sin(degtorad(zangle));
        xi = di * cos(degtorad(xyangle)) + originx;
        yi = di * sin(degtorad(xyangle)) + originy;
        if ((xi > min(x1, x2)) && (xi < max(x1, x2)) && (yi > min(y1, y2)) && (yi < max(y1, y2)))
        {
            ret[0] = true;
            ret[1] = xi;
            ret[2] = yi;
            ret[3] = zi;
            ret[4] = di;
        }
    }
}

return ret;

