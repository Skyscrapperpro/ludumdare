///cycle_value(start_pos, end_pos, value, speed)

var _start_pos = argument0;
var _end_pos = argument1;
var _moveable = argument2;
var _ratio_per_frame = abs(argument3);

var _cydir = sign(_end_pos - _start_pos);

_moveable += _cydir * _ratio_per_frame;
if (_cydir * _moveable >= _cydir * _end_pos) then _moveable = _start_pos + _cydir * abs(_moveable - _end_pos);

return _moveable;

