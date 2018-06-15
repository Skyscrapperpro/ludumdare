///event_initialize_manager(manager_obj)

with (argument0)
{
    //Destroy particles
    if (part_type_exists(titleparttype)) then part_type_destroy(titleparttype);
    if (part_system_exists(titlepartsis)) then part_system_destroy(titlepartsis);

    //Alarm manager
    alarm[0] = CUSTOMER_ALARM;
    zombie_marg = ZOMBIE_ACTIVATION;
    
    //Generate first customer
    instance_create(x, y, customer_obj);
    generated++;
}

