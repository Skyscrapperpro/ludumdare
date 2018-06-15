///set_customer_line_target(customer)

with (argument0)
{
    inittargetx = FIRST_LINE_X + (line * LINES_SEP) + CUSTOMER_SEP_X;
    inittargety = table_obj.y - CUSTOMER_SEP_Y;
    repeat (last) inittargety -= CUSTOMER_SEP_Y;
    
    targetx = inittargetx;
    targety = inittargety;
}

