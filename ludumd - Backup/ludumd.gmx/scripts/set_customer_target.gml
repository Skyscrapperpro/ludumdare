///set_customer_target(customer)

var obj = argument0;

with (obj)
{
    inittargety = table_obj.y - CUSTOMER_SEP;
    repeat (last) inittargety -= CUSTOMER_SEP;
    
    inittargetx = FIRST_LINE_X - (line * LINES_SEP) - CUSTOMER_SEP_X;
}

