///event_satisfy_customer(customer)

with (argument0)
{
    talki = 0;
    selected_menu = false;
    satisf = true;
    inittargetx = room_manager_obj.x;
    inittargety = -10;
    targetx = inittargetx;
    targety = inittargety;
    satix = x;
    satiy = y;
    pr_alp -= 0.01;
    add_score(price);
    event_delete_customer(id);
    level_up(LEVEL_RATIO);
}

