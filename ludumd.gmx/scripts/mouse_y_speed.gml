///mouse_y_speed()

if (abs(gamepad_axis_value(0, gp_axisrv)) > 0.1)
    return gamepad_axis_value(0, gp_axisrv) * 50 * MOUSESENS;
else if (mouse_is_locked())
    return mouse_delta_y * MOUSESENS;
else return 0;

