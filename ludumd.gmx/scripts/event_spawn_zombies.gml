///event_spawn_zombies()
music_switch(1);
repeat(ZOMBIE_AMOUNT) instance_create(x, y, zombie_obj);
event_auto_rotate();
if (player_obj.handitem != 1) then instance_activate_object(gunitem_obj);
with (customer_obj)
{
    if (selected_menu) then selected_menu = false;
    solid = true;
    talki = 1;
}

