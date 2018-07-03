///draw_number_spr(number, sprite, x, y, halign, text_color)
var _n = string_format(argument0, 1, 2);
var _spr = argument1;
var _xpos = argument2;
var _ypos = argument3;
var _ha = argument4;
var _col = argument5;

var _total_length = ((sprite_get_width(_spr) + 2 + string_width(_n)) * PIXEL_LENGTH);
var _total_height = ((sprite_get_height(_spr) + 1) * PIXEL_LENGTH);

var _textx, _sprx;

switch(_ha)
{
    case fa_left:
        _textx = _xpos + ((string_width(_n) + 1) * PIXEL_LENGTH);
        break;
    case fa_center:
        _textx = _xpos + (_total_length/2) - ((sprite_get_width(_spr) + 1) * PIXEL_LENGTH);
        break;
    case fa_right:
        _textx = _xpos - ((sprite_get_width(_spr) + 1) * PIXEL_LENGTH);
        break;
}
_sprx = _textx + (sprite_get_width(_spr)/2 * PIXEL_LENGTH);

draw_sprite_ext(_spr, 0, _sprx, _ypos + _total_height/2, PIXEL_LENGTH, PIXEL_LENGTH, 0, -1, 1);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_colour(c_dkgray);
draw_text_transformed(_textx + PIXEL_LENGTH, _ypos + (-2 * PIXEL_LENGTH), _n, PIXEL_LENGTH, PIXEL_LENGTH, 0);
draw_set_colour(_col);
draw_text_transformed(_textx, _ypos + (-3 * PIXEL_LENGTH), _n, PIXEL_LENGTH, PIXEL_LENGTH, 0);
draw_set_colour(c_white);

