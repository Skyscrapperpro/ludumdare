///cycle_value(start_pos, end_pos, value, speed)

var start_pos = argument0;
var end_pos = argument1;
var moveable = argument2;
var ratio_per_frame = abs(argument3);

if (start_pos < end_pos)
{
    moveable += ratio_per_frame;
    if (moveable >= end_pos) then moveable = start_pos + (moveable - end_pos);
}
else if (start_pos > end_pos)
{
    moveable -= ratio_per_frame;
    if (moveable <= end_pos) then moveable = start_pos - (end_pos - moveable);
}
else moveable = start_pos;

return moveable;

