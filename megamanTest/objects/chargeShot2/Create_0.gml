image_speed = 0.6;
movesp = 9.5;
hsp=0;
vsp=0;
paused = 0;
ricochet = 0;

audio_stop_sound(sndCharging); audio_stop_sound(sndCharged);
audio_stop_sound(sndShoot3); audio_play_sound(sndShoot3,5,false);

alarmdepth = 1;