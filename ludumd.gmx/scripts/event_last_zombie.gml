///event_last_zombie()

if (instance_number(zombie_obj) == 1)
{
    music_switch(0);
    player_obj.handitem = 0;
    with (customer_obj)
    {
        targetx = inittargetx;
        targety = inittargety;
        solid = false;
    }
}

