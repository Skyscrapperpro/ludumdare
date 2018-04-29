var ID = argument0;

event_delete_customer(ID);
array_delete_element(global.customers, ID);
with (ID)
{
    audio_play_sound(snd, 2, false);
    dying = true;
    subi = 0;
    talki = 0;
    selected_menu = false;
    if (!satisf) then event_lose_life();
}

