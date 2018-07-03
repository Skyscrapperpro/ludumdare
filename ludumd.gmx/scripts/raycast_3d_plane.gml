///raycast_3d_plane(width_x_to_angle, length_y_to_angle, xorig, yorig, zorig, x, y, z, rotation, horizontal_angle_orig, vertical_angle_orig)

var _w = argument0;
var _l = argument1;
var _xorig = argument2;
var _yorig = argument3;
var _zorig = argument4;
var _xdest = argument5;
var _ydest = argument6;
var _zdest = argument7;
var _ang = argument8;
var _angorig = argument9;
var _zang = argument10;

var _ret = false;

var _angrel = angle_difference(_angorig, _ang);
var _dangrel = angle_difference(point_direction(_xorig, _yorig, _xdest, _ydest), _ang);
var _dist = point_distance(_xorig, _yorig, _xdest, _ydest);
var _zrel = _zdest - _zorig;

var _zang_p = zangle_projection_x(_zang, _angrel);
var _distp = lengthdir_x(_dist, _dangrel);
var _a0 = darctan2(_zrel, _distp + _w/2);
var _a1 = darctan2(_zrel, _distp - _w/2);

if ((_zang_p < _a0) && (_zang_p > _a1))
{
    _zang_p = zangle_projection_y(_zang, _angrel);
    _distp = -lengthdir_y(_dist, _dangrel);
    _a0 = darctan2(_zrel, _distp + _l/2);
    _a1 = darctan2(_zrel, _distp - _l/2);
    
    if ((_zang_p < _a0) && (_zang_p > _a1)) then _ret = true;
}

return _ret;

