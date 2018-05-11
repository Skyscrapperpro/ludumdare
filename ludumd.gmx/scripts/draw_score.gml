///draw_score(score, x, y, halign, text_color)
var scoreval = string(argument0);
var spr = argument1;
var xpos = argument2;
var ypos = argument3;
var ha = argument4;
var col = argument5;

var total_length = ((sprite_get_width(spr) + 2 + string_width(scoreval)) * PIXEL_LENGTH)
var total_height = ((sprite_get_height(spr) + 1) * PIXEL_LENGTH)

var textx;
var sprx;

switch(ha)
{
    case fa_left:
        textx = xpos + ((string_width(scoreval) + 1) * PIXEL_LENGTH);
        break;
    case fa_center:
        textx = xpos + (total_length/2) - ((sprite_get_width(spr) + 1) * PIXEL_LENGTH);
        break;
    case fa_right:
        textx = xpos - ((sprite_get_width(spr) + 1) * PIXEL_LENGTH);
        break;
}
sprx = textx + (sprite_get_width(spr)/2 * PIXEL_LENGTH);

draw_sprite_ext(spr, 0, sprx, ypos + total_height/2, PIXEL_LENGTH, PIXEL_LENGTH, 0, -1, 1);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_colour(c_dkgray);
draw_text_transformed(textx + PIXEL_LENGTH, ypos + (-2 * PIXEL_LENGTH), string(scoreval), PIXEL_LENGTH, PIXEL_LENGTH, 0);
draw_set_colour(col);
draw_text_transformed(textx, ypos + (-3 * PIXEL_LENGTH), string(scoreval), PIXEL_LENGTH, PIXEL_LENGTH, 0);
draw_set_colour(c_white);

