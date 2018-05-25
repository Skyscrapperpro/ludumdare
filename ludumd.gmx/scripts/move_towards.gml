///move_towards(target_x, target_y, speed)
var targetx = argument0;
var targety = argument1;
var spd = argument2;

if ((targetx != x) || (targety != y))
{
    //Set angle
    var m_angle = clamp_angle(point_direction(x, y, targetx, targety), ANGREF);
    if (m_angle != 0) then image_angle = m_angle + 90;
    
    //Set speed
    var xspeed = lengthdir_x(spd, m_angle);
    var yspeed = lengthdir_y(spd, m_angle);
    //If it's going to surpass the target
    //then set speed to exact target difference
    if (sign(targetx - x) != sign(targetx - (x + xspeed))) then xspeed = targetx - x;
    if (sign(targety - y) != sign(targety - (y + yspeed))) then yspeed = targety - y;
    
    //Move
    do_collision_move(xspeed, yspeed);
}

