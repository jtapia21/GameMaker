if (ricochet == 0) 
{
ricochet = 1;
audio_stop_sound(sndRicochet); audio_play_sound(sndRicochet,5,false)
audio_stop_sound(sndShoot1); audio_stop_sound(sndShoot2); audio_stop_sound(sndShoot3);
vsp = -6;
hsp = -hsp;
image_xscale = -image_xscale;
}
