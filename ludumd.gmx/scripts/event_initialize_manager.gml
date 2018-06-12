///event_initialize_manager(manager_obj)

global.play = true;
if (!gamepad_button_check_pressed(0, gp_start)) then mouse_lock();

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

