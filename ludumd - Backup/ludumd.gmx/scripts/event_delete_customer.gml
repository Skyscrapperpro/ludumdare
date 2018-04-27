if (instance_exists(nextcustomer)) then nextcustomer.prevcustomer = -1;
if (instance_exists(prevcustomer)) then prevcustomer.nextcustomer = -1;
customer_manager_obj.lines[line]--;
if (customer_manager_obj.customers[line]==id)
    customer_manager_obj.customers[line]=-1;

