///var_to_target(moveable, target, ratio_per_frame)

var moveable = argument0;
var target = argument1;
var spd = abs(argument2);

if (moveable < target)
    moveable = min(moveable + spd, target);
else if (moveable > target)
    moveable = max(moveable - spd, target);

return moveable;

