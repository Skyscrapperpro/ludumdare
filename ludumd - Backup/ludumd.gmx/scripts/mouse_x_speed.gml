///mouse_x_speed()

if (abs(gamepad_axis_value(0, gp_axisrh)) > 0.1)
    return gamepad_axis_value(0, gp_axisrh) * 50 * MOUSESENS;
else if (global.mouse_active)
    return (display_mouse_get_x() - (display_get_width()/2)) * MOUSESENS;
else return 0;

