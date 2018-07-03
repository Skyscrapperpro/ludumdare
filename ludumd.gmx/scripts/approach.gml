///approach(moveable, target, ratio_per_frame)

var _moveable = argument0;
var _target = argument1;

if (_moveable < _target) then _moveable = min(_moveable + abs(argument2), _target);
else if (_moveable > _target) _moveable = max(_moveable - abs(argument2), _target);

return _moveable;

