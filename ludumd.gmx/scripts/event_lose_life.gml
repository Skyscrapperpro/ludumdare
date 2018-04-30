with (player_obj)
{
    lifei[lifeval - 1]++;
    lifeval--;
    if (lifeval < 1) then event_game_over();
}

