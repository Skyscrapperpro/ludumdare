///event_zombie_reset_target(zombie)

with (argument0)
{
    var valid_ins;
    
    //Get !dying instances
    for (var i = 0, ind = 0, ins; i < instance_number(customer_obj); i++)
    {
        ins = instance_find(customer_obj, i);
        if (!ins.dying)
        {
            valid_ins[ind] = ins;
            ind++;
        }
    }
    
    //Select target
    if (is_array(valid_ins)) then target = valid_ins[irandom(array_length_1d(valid_ins) - 1)];
    else target = player_obj;
}

