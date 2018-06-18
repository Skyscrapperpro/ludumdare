///event_last_zombie()

music_switch(0);
event_initialize_manager(room_manager_obj);
global.handitem = 0;
with (customer_obj)
{
    talki = 0;
    targetx = inittargetx;
    targety = inittargety;
    solid = false;
}

