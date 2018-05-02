///do_collision_y(horizontal_speed, vertical_speed)

var xsonic = argument0;
var ysonic = argument1;

//Check x and y separately so that you can slide across the walls.
//You get stuck in some diagonal collisions but its not noticeable because
//getting unstuck requires the same speed.
if (ysonic != 0)
if !place_free(x + xsonic, y + ysonic)
{
    if (ysonic > 0) move_contact_solid(270, ysonic);
    if (ysonic < 0) move_contact_solid(90, -ysonic);
    ysonic = 0;
}

return ysonic;

