///raycast_3d_spr(width, height, xorig, yorig, zorig, x, y, z, rotation, horizontal_angle_orig, vertical_angle_orig)

var _w = argument0;
var _h = argument1;
var _xorig = argument2;
var _yorig = argument3;
var _z0 = argument4;
var _xdest = argument5;
var _ydest = argument6;
var _z1 = argument7;
var _ang = argument8;
var _angorig = argument9;
var _zang = argument10;

var _ret = false;

//Reuse of variables for optimization
//Could be improved
_z1 = _z1 - _z0; //z1 = relative height
_z0 = _z1 + _h/2; //z0 = point top
_z1 = _z1 - _h/2; //z1 = point bottom
_h = point_distance(_xorig, _yorig, _xdest, _ydest); //h = distance

_z0 = darctan2(_z0, _h); //z0 = angle top
_z1 = darctan2(_z1, _h); //z1 = angle bottom

if ((_zang < _z0) && (_zang > _z1)) //and
if (raycast_2d_spr(_w, _xorig, _yorig, _xdest, _ydest, _ang, _angorig)) then _ret = true;

return _ret;

