var obj = argument0;

with (obj)
{
    if (last > 0)
    if (ds_list_find_value(global.line_ids[line], last - 1) == -1)
    {
        if (last == (ds_list_size(global.line_ids[line]) - 1)) then ds_list_delete(global.line_ids[line], last - 1);
        else ds_list_replace(global.line_ids[line], last, -1);

        ds_list_replace(global.line_ids[line], last - 1, id);
        last--;
        set_customer_target(id);
    }
}

