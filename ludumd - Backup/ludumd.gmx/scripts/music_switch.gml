///music_switch(track_number)

var musicID = argument0;

switch (musicID)
{
    case 0:
        if (audio_is_playing(zombies_music)) then audio_stop_sound(zombies_music);
        if (!audio_is_playing(cooking_music)) then audio_play_sound(cooking_music, 1, true);
        break;
    case 1:
        if (audio_is_playing(cooking_music)) then audio_stop_sound(cooking_music);
        if (!audio_is_playing(zombies_music)) then audio_play_sound(zombies_music, 1, true);
        break;
    default:
        audio_stop_all();
        break;
}

