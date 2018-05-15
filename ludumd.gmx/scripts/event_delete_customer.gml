///event_delete_customer(customer)

var ID = argument0;

with (ID)
{
    //If im the last one on the list
    if (last == (ds_list_size(global.line_ids[line]) - 1))
    {   
        //Then for each line
        for (var i = 0; i < LINES_AMOUNT; i++) 
        {
            //If a line is greater than this one, move the last dude of that line to this one
            if ((ds_list_size(global.line_ids[i])) > (ds_list_size(global.line_ids[line])))
            {
                var dude_to_move = ds_list_find_value(global.line_ids[i], ds_list_size(global.line_ids[i]) - 1);
                event_delete_customer(dude_to_move);
                dude_to_move.line = line;
                dude_to_move.last = last;
                ds_list_add(global.line_ids[line], dude_to_move);
                set_customer_target(dude_to_move);
                break;
            }
        }
        ds_list_delete(global.line_ids[line], last);
    }
    else ds_list_replace(global.line_ids[line], last, -1);
}

