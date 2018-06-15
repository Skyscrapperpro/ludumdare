///event_spawn_zombies()

music_switch(1);
event_auto_rotate();
if (global.handitem != 2) then instance_activate_object(gunitem_obj);
repeat(ZOMBIE_AMOUNT) instance_create(x, y, zombie_obj);
with (customer_obj)
{
    selected_menu = false;
    talki = 1;
    solid = true;
}

