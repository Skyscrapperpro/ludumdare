///event_kill_zombie(zombie)

var ID = argument0;

with (ID)
{
    if (!dying)
    {
        dying = true;
        sprite = ded_spr;
        subi = 0;
        audio_play_sound(choose(zombiedie0_snd, zombiedie1_snd), 2, false);
    }
}

