//move left

/////left side weapons/////
if (x == pm.IPW.x && y == pm.IPW.y) {
	
	x=pm.IMB.x; y=pm.IMB.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false);
	exit;
}

/////right side weapons/////
if (x == pm.IMB.x && y == pm.IMB.y) {
	
	x=pm.IPW.x; y=pm.IPW.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false);
	exit;
}