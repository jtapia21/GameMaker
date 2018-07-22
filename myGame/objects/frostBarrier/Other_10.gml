if (ricochet == 0) {
	event_user(1);	//calls it
	phase = 2;
	ricochet = 1;	//makes this true
	audio_stop_sound(sndRicochet); audio_play_sound(sndRicochet,5,false)
	vsp = -6;
	
	//checks which direction megaman is facing
	if (image_xscale == 1) {
		hsp = -movesp;
	}
	else {
		hsp = movesp;
	}
	
	image_xscale = -image_xscale;
}
