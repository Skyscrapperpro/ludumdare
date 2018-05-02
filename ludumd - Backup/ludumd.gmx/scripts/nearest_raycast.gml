///nearest_raycast(obj_type)

//Requires each checked object to have an "in_angle" variable set to true if in raycast
var obj = argument0;

var fins = noone;
var num = instance_number(obj);
if (num != noone)
{
    var valid_ins, ins;
    var ind = 0;
    for (var i = 0; i < num; i++)
    {
        ins = instance_find(obj, i);
        if (ins.in_angle)
        {
            valid_ins[ind] = ins;
            ind++;
        }
    }
    
    if (ind > 0)
    {
        fins = valid_ins[0];
        for (var i = 1; i < array_length_1d(valid_ins); i++)
        {
            ins = valid_ins[i];
            if (point_distance(x, y, ins.x, ins.y) < point_distance(x, y, fins.x, fins.y))
                fins = ins;
        }
    }
}

return fins;

