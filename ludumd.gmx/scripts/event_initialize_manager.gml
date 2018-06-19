///event_initialize_manager(manager_obj)

with (argument0)
{
    //Alarm manager
    alarm[0] = CUSTOMER_ALARM;
    zombie_marg = ZOMBIE_ACTIVATION;
    
    //Generate first customer
    instance_create(x, y, customer_obj);
    generated++;
}

