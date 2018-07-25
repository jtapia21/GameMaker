if (ricochet == 0) 
{
ricochet = 1;
audio_stop_sound(sndRicochet); audio_play_sound(sndRicochet,5,false)
//sound_stop(sfx_bazooka);
vsp = -12;
hsp = -hsp;
image_xscale = -image_xscale;
}