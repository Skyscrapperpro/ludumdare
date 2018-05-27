///var_to_target(moveable, target, speed)

var moveable = argument0;
var target = argument1;
var ratio_per_frame = abs(argument2);

if (moveable < target)
{
    if ((moveable + ratio_per_frame) > target) { moveable = target; }
    else moveable += ratio_per_frame;
}
else if (moveable > target)
{
    if ((moveable - ratio_per_frame) < target) { moveable = target; }
    else moveable -= ratio_per_frame;
}

return moveable;

