///do_collision_x_first(horizontal_speed)

var xsonic = argument0;

//Check x and y separately so that you can slide across the walls.
//You get stuck in some diagonal collisions but its not noticeable because
//getting unstuck requires the same speed.
if (xsonic != 0)
if !place_free(x + xsonic, y)
{
    if (xsonic > 0) move_contact_solid(0, xsonic);
    if (xsonic < 0) move_contact_solid(180, -xsonic);
    xsonic = 0;
}

return xsonic;

