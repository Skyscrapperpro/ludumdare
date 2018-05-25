///event_kill_customer(customer)

var ID = argument0;


with (ID)
{
    if (!dying)
    {
        dying = true;
        selected_menu = false;
        talki = 0;
        sprite = ded_spr;
        subi = 0;
        audio_play_sound(snd, 2, false);
        if (!satisf)
        {
            event_delete_customer(id);
            event_lose_life();
        }
    }
}

