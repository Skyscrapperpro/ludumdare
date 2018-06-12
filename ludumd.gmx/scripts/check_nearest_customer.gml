///check_nearest_customer(zombie)

with (argument0)
{
    var nearest = instance_nearest(x, y, customer_obj);
    if (!nearest.dying) //and
    if (point_distance_sqr(x, y, nearest.x, nearest.y) < ZOMBIE_ATTACK_RANGE_SQR)
        target = nearest;
}

