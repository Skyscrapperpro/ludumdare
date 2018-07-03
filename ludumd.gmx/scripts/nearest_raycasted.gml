///nearest_raycasted(obj_type)

//Requires each checked object to have an "in_angle" variable set to true if in raycast
var _obj = argument0;

var _fins = noone;
var _num = instance_number(_obj);
if (_num != noone)
{
    var _valid_ins, _ins;
    var _ind = 0;
    
    //Get in_angle instances
    for (var i = 0; i < _num; i++)
    {
        _ins = instance_find(_obj, i);
        if (_ins.in_angle)
        {
            _valid_ins[_ind] = _ins;
            _ind++;
        }
    }
    
    //Get nearest in_angle instance
    if (_ind > 0)
    {
        _fins = _valid_ins[0];
        for (var i = 1; i < array_length_1d(_valid_ins); i++)
        {
            _ins = _valid_ins[i];
            if (point_distance_sqr(x, y, _ins.x, _ins.y) < point_distance_sqr(x, y, _fins.x, _fins.y))
                _fins = _ins;
        }
    }
}

return _fins;

