///raycast_2d_spr(width, xorig, yorig, x, y, rotation, angle_orig)

var _halfw = argument0/2;
var _xorig = argument1;
var _yorig = argument2;
var _xdest = argument3;
var _ydest = argument4;
var _ang = argument5;
var _angorig = argument6;

var _ret;
if (_ang + 90 == _angorig)
{
    var _midang = clamp_angle(point_direction(_xorig, _yorig, _xdest, _ydest), ANGREF);
    _angorig = abs(angle_difference(_angorig, _midang));
    
    _xdest = _xdest + lengthdir_x(_halfw, _ang);
    _ydest = _ydest + lengthdir_y(_halfw, _ang);
    _ang = abs(angle_difference(point_direction(_xorig, _yorig, _xdest, _ydest), _midang));
    
    if (_angorig < _ang) then _ret = true;
    else _ret = false;
}
else
{
    var _midang = clamp_angle(point_direction(_xorig, _yorig, _xdest, _ydest), ANGREF);
    _angorig = angle_difference(_angorig, _midang);
    var _difx = lengthdir_x(_halfw, _ang);
    var _dify = lengthdir_y(_halfw, _ang);
    
    var _tempx = _xdest + _difx;
    var _tempy = _ydest + _dify;
    var _a0 = angle_difference(point_direction(_xorig, _yorig, _tempx, _tempy), _midang);
    _tempx = _xdest - _difx;
    _tempy = _ydest - _dify;
    var _a1 = angle_difference(point_direction(_xorig, _yorig, _tempx, _tempy), _midang);
    
    if ((_angorig > min(_a0, _a1)) && (_angorig < max(_a0, _a1))) then _ret = true;
    else _ret = false;
}

return _ret;

