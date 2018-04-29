var ID = argument0;

if (!ID.deleted) then event_delete_customer(ID);

with (ID)
{
    audio_play_sound(snd, 2, false);
    dying = true;
    talki = 0;
    selected_menu = false;
    if (!satisf) then event_lose_life();
}

