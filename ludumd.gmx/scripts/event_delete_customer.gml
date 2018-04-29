var obj = argument0;

with (obj)
{
    deleted = true;
    if (instance_exists(nextcustomer)) then nextcustomer.prevcustomer = -1;
    if (instance_exists(prevcustomer)) then prevcustomer.nextcustomer = -1;
    room_manager_obj.lines[line]--;
    if (room_manager_obj.customers[line]==id)
        room_manager_obj.customers[line]=-1;
    array_delete_element(global.customers, id);
}

