///set_customer_target(customer)

var obj = argument0;

with (obj)
{
    inittargety = table_obj.y - CUSTOMER_SEP_Y;
    repeat (last) inittargety -= CUSTOMER_SEP_Y;
    
    inittargetx = FIRST_LINE_X + (line * LINES_SEP) + CUSTOMER_SEP_X;
    
    targetx = inittargetx;
    targety = inittargety;
}

