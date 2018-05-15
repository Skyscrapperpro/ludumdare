///event_satisfy_customer(customer)

var ID = argument0;

with (ID)
{
    talki = 0;
    selected_menu = false;
    satisf = true;
    inittargetx = room_manager_obj.x;
    inittargety = room_manager_obj.y - 1;
    event_delete_customer(id);
}
if ((global.level + LEVEL_RATIO) > MAX_ING) then global.level = MAX_ING;
else global.level += LEVEL_RATIO;
event_add_score(SCORE_PER_CUSTOMER);

