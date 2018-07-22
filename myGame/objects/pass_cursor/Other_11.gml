//Up

audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false);

if (whereto == 1) {whereto = 2; y+=16; exit; }
if (whereto == 2) {whereto = 1; y-=16; exit; }