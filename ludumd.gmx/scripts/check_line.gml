///check_line(customer)

var obj = argument0;

with (obj)
{
    if (last > 0)
    if (ds_list_find_value(global.line_ids[line], last - 1) == -1)
    {
        event_delete_customer(id);
        last--;
        ds_list_replace(global.line_ids[line], last, id);
        set_customer_target(id);
    }
}

