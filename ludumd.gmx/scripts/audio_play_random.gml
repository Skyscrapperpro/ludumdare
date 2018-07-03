///audio_play_random(array)

var _snd = argument0;
audio_play_sound(_snd[irandom(array_length_1d(_snd) - 1)], 2, false);

