///pixelate(pixel_length)

var pixel_length = argument0;

shader_set(pix);
shader_set_uniform_f(shader_get_uniform(pix, "pixel"), surface_get_width(application_surface), surface_get_height(application_surface), pixel_length, pixel_length);
    draw_surface(application_surface, 0, 0);
shader_reset();

