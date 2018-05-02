///event_initialize_manager(manager_obj)

var manager = argument0;

if (!gamepad_button_check_pressed(0, gp_start)) then global.mouse_active = true;
//Generate first customer
instance_create(manager.x, manager.y, customer_obj);
//Alarm manager
alarm[0] = CUSTOMER_ALARM;
generated = 1;
global.play = true;

