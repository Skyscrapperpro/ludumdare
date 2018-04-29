var scl = (view_wport/sprite_get_width(focus));
var alp=0;

while (alp<1)
{
draw_sprite_ext(gameover, 0, 0, 0, scl, scl, 0, -1, alp);
alp+=0.1;
}
while (!RESTARTKEY)
{
}
room_restart();
