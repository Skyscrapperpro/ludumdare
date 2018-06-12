///event_delete_customer(customer)

with (argument0)
{
    var dude_to_move;
    var sizel = ds_list_size(global.line_ids[line]);
    //If im the last one on the list
    if (last == (sizel - 1))
    {
        //If a line is greater than this one, move the last dude of that line to this one
        for (var i = 0, sizei; i < LINES_AMOUNT; i++) 
        {
            sizei = ds_list_size(global.line_ids[i]);
            if (sizei > sizel)
            {
                dude_to_move = ds_list_find_value(global.line_ids[i], sizei - 1);
                event_delete_customer(dude_to_move);
                ds_list_add(global.line_ids[line], dude_to_move);
                dude_to_move.line = line;
                dude_to_move.last = last;
                set_customer_line_target(dude_to_move);
                break;
            }
        }
        ds_list_delete(global.line_ids[line], last);
    }
    else
    {
        dude_to_move = ds_list_find_value(global.line_ids[line], last + 1);
        event_delete_customer(dude_to_move);
        ds_list_replace(global.line_ids[line], last, dude_to_move);
        dude_to_move.last = last;
        set_customer_line_target(dude_to_move);
    }
}

