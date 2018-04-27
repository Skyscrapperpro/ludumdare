pixel_length = argument0;

var unif = shader_get_uniform(pix, "pixel");
var w = surface_get_width(application_surface);
var h = surface_get_height(application_surface);

shader_set(pix);
shader_set_uniform_f(unif, w, h, pixel_length, pixel_length);
    draw_surface(application_surface, -2, -2);
shader_reset();

