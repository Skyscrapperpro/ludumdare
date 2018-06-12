///cycle_value(start_pos, end_pos, value, speed)

var start_pos = argument0;
var end_pos = argument1;
var moveable = argument2;
var ratio_per_frame = abs(argument3);

var dir = sign(end_pos - start_pos);

moveable += dir * ratio_per_frame;
if (dir * moveable >= dir * end_pos) then moveable = start_pos + dir * abs(moveable - end_pos);

return moveable;

