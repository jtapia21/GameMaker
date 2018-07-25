
if (prsEnter == 1) {
	
	
	//when presses enter or k button Rem teleports
	sprite_index = SPRITE_TELEPORT2;
	image_xscale = -1;
	image_speed = 0.30;
	
	if (image_index > 4 && image_index < 5) {
		
		audio_stop_sound(sndTeleport2); audio_play_sound(sndTeleport2,5,false);
		image_index = 5;
		image_speed = 0;
		vsp = -5;
		prsEnter = 0;
	}
}


y += vsp;