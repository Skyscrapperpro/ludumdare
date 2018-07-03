///move_towards(target_x, target_y, speed, sweep_interval)
var _targetx = argument0;
var _targety = argument1;
var _mtspd = argument2;

if ((_targetx != x) || (_targety != y))
{
    //Set angle
    var _m_angle = point_direction(x, y, _targetx, _targety);
    
    //Set speed
    //If it's going to surpass the target
    //then set speed to exact target difference
    var _dist = point_distance(x, y, _targetx, _targety);
    if (_mtspd > _dist) then _mtspd = _dist;
    
    //Move
    do_collision_move(_mtspd, _m_angle, argument3);
}

