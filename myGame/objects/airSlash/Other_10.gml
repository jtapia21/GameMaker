if (ricochet == 0) 
{
ricochet = 1;
audio_stop_sound(sndRicochet); audio_play_sound(sndRicochet,5,false)
audio_stop_sound(sndAirSlash);
vsp = -12;
hsp = -hsp;
image_xscale = -image_xscale;
}