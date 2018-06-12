///audio_play_random(array)

var snd = argument0;
audio_play_sound(snd[irandom(array_length_1d(snd) - 1)], 2, false);

