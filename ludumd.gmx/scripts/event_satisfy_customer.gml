var ID = argument0;

event_delete_customer(ID);
array_delete_element(global.customers, ID);
with (ID)
{
    talki = 0;
    selected_menu = false;
    satisf = true;
    inittargetx = room_manager_obj.x;
    inittargety = room_manager_obj.y - 100;
}
if ((global.level + LEVEL_RATIO) > MAX_ING) then global.level = MAX_ING;
else global.level += LEVEL_RATIO;
event_add_score();
