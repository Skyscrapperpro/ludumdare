///do_collision_move(speed, angle, sweep_interval)

var _spd = argument0;
var _dir = argument1;
var _sweep_interval = argument2;

var _xsonic = lengthdir_x(_spd, _dir);
var _ysonic = lengthdir_y(_spd, _dir);

//Check x and y separately so that you can slide across the walls.
//You get stuck in some diagonal collisions but its not noticeable because
//getting unstuck requires the same speed.
if (!place_free(x + _xsonic, y + _ysonic))
{
    for (var _angle = _sweep_interval, _f_angle, _newspd; _angle <= 90; _angle += _sweep_interval)
    {
        _newspd = lengthdir_x(_spd, -_angle)
        _f_angle = _dir + _angle;
        _xsonic = lengthdir_x(_newspd, _f_angle);
        _ysonic = lengthdir_y(_newspd, _f_angle);
        if (place_free(x + _xsonic, y + _ysonic)) then break;
        
        _newspd = lengthdir_x(_spd, _angle)
        _f_angle = _dir - _angle;
        _xsonic = lengthdir_x(_newspd, _f_angle);
        _ysonic = lengthdir_y(_newspd, _f_angle);
        if (place_free(x + _xsonic, y + _ysonic)) then break;
    }
}
/*if (xsonic != 0)
if !place_free(x + xsonic, y)
{
    if (xsonic > 0) then move_contact_solid(0, xsonic);
    else move_contact_solid(180, -xsonic);
    xsonic = 0;
}

if (ysonic != 0)
if !place_free(x + xsonic, y + ysonic)
{
    if (ysonic > 0) then move_contact_solid(270, ysonic);
    else move_contact_solid(90, -ysonic);
    ysonic = 0;
}*/

x += _xsonic;
y += _ysonic;

