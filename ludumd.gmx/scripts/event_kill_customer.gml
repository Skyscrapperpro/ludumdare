///event_kill_customer(customer)

var ID = argument0;


with (ID)
{
    audio_play_sound(snd, 2, false);
    dying = true;
    talki = 0;
    selected_menu = false;
    if (!satisf)
    {
        event_delete_customer(id);
        event_lose_life();
    }
}

