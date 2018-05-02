///event_lose_life()

with (player_obj)
{
    if (lifeval > 0)
    {
        lifei[lifeval - 1]++;
        lifeval--;
        if (lifeval < 1) then event_game_over();
        audio_play_sound(lifelost_snd, 2, false);
    }
}

