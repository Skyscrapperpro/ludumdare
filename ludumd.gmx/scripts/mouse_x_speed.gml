///mouse_x_speed()

if (abs(gamepad_axis_value(0, gp_axisrh)) > 0.1)
    return gamepad_axis_value(0, gp_axisrh) * 50 * MOUSESENS;
else if (mouse_is_locked())
    return mouse_delta_x * MOUSESENS;
else return 0;

