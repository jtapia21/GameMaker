//speed of the sprite
image_speed = 0.30;

//
movesp = 4;

//horizontal and vertical speed
hsp = 0;
vsp = 0;

//for pausing
paused = 0;

//if it needs to ricochet off objects
ricochet = 0;

//
phase = 1;

//
alarmdepth = -1;

audio_stop_sound(sndIceBarrier); audio_play_sound(sndIceBarrier, 5, false);
