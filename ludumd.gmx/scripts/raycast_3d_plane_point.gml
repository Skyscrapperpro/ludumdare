///raycast_3d_plane_point(x1, y1, z, x2, y2, camx, camy, camz, camanglexy, camanglez)
var _x1 = argument0;             //first corner coordinates
var _y1 = argument1;
var _z = argument2;
var _x2 = argument3;             //second corner coordinates (oposite to the first)
var _y2 = argument4;
var _originx = argument5;        //coordinates for the line origin ("camera")
var _originy = argument6;
var _originz = argument7;
var _xyangle = argument8;        //horizontal angle for the camera
var _zangle = argument9;         //vertical angle for the camera

var _ret = false;                //returned vector. defaults to false, so if there is no intersection, that's what it will return.
                                //ret[3] = distance to intersection from camera
                                //ret[2] = intersection coordinates (y)
                                //ret[1] = intersection coordinates (x)
                                //ret[0] = intersection bool

if (((_z - _originz) * _zangle) > 0)     //if zangle=0, there is no way to hit an horizontal plane, as it has no vertical dimension
{
    var _di = (_z - _originz)/dtan(_zangle);  //distance to the plane. usage of sin instead of sec is due to camera usage of cos instead of tan.
    var _yi = lengthdir_y(_di, _xyangle) + _originy; //y coordinate of intersection
    var _xi = lengthdir_x(_di, _xyangle) + _originx; //x coordinate of intersection
    if ((_xi > min(_x1, _x2)) && (_xi < max(_x1, _x2)) && (_yi > min(_y1, _y2)) && (_yi < max(_y1, _y2)))   //checking if the calculated point is indeed in the plane
    {
        _ret[2] = _di;
        _ret[1] = _yi;
        _ret[0] = _xi;
    }
}

return _ret; //return the return vector.

