///event_lose_life(player)

if (lives > 0)
{
    argument0.lifei[lives - 1]++;
    lives--;
    if (lives < 1) then event_game_over();
    audio_play_sound(lifelost_snd, 2, false);
}

