///var_to_target(moveable, target, ratio_per_frame)

var moveable = argument0;
var target = argument1;

if (moveable < target) then moveable = min(moveable + abs(argument2), target);
else if (moveable > target) moveable = max(moveable - abs(argument2), target);

return moveable;

