///event_zombie_reset_target(zombie)

with (argument0)
{
    target = instance_find(customer_obj, irandom(instance_number(customer_obj) - 1));
    if (target == noone) then target = player_obj;
}

