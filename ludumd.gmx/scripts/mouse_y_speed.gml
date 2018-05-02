if (abs(gamepad_axis_value(0, gp_axisrv)) > 0.1)
    return gamepad_axis_value(0, gp_axisrv) * 5;
else if (global.mouse_active)
    return ((display_get_height()/2) - display_mouse_get_y()) * MOUSESENS;
else return 0;

