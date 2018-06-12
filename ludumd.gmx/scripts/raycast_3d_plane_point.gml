///raycast_3d_plane_point(x1, y1, z, x2, y2, camx, camy, camz, camanglexy, camanglez)
var x1 = argument0;             //first corner coordinates
var y1 = argument1;
var z = argument2;
var x2 = argument3;             //second corner coordinates (oposite to the first)
var y2 = argument4;
var originx = argument5;        //coordinates for the line origin ("camera")
var originy = argument6;
var originz = argument7;
var xyangle = argument8;        //horizontal angle for the camera
var zangle = argument9;         //vertical angle for the camera

var ret = false;                //returned vector. defaults to false, so if there is no intersection, that's what it will return.
                                //ret[3] = distance to intersection from camera
                                //ret[2] = intersection coordinates (y)
                                //ret[1] = intersection coordinates (x)
                                //ret[0] = intersection bool

if (((z - originz) * zangle) > 0)     //if zangle=0, there is no way to hit an horizontal plane, as it has no vertical dimension
{
    var di = (z - originz)/dtan(zangle);  //distance to the plane. usage of sin instead of sec is due to camera usage of cos instead of tan.
    var yi = lengthdir_y(di, xyangle) + originy; //y coordinate of intersection
    var xi = lengthdir_x(di, xyangle) + originx; //x coordinate of intersection
    if ((xi > min(x1, x2)) && (xi < max(x1, x2)) && (yi > min(y1, y2)) && (yi < max(y1, y2)))   //checking if the calculated point is indeed in the plane
    {
        ret[2] = di;
        ret[1] = yi;
        ret[0] = xi;
    }
}

return ret; //return the return vector.

