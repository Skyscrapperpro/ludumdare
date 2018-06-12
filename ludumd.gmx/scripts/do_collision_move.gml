///do_collision_move(hspeed, vspeed)

var xsonic = argument0;
var ysonic = argument1;

//Check x and y separately so that you can slide across the walls.
//You get stuck in some diagonal collisions but its not noticeable because
//getting unstuck requires the same speed.
if (xsonic != 0)
if !place_free(x + xsonic, y)
{
    if (xsonic > 0) then move_contact_solid(0, xsonic);
    else if (xsonic < 0) then move_contact_solid(180, -xsonic);
    xsonic = 0;
}

if (ysonic != 0)
if !place_free(x + xsonic, y + ysonic)
{
    if (ysonic > 0) then move_contact_solid(270, ysonic);
    else if (ysonic < 0) then move_contact_solid(90, -ysonic);
    ysonic = 0;
}

x += xsonic;
y += ysonic;

