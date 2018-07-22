stop_music();

with (megaman) {
	
	charge = 0; chargeloop = 0; chargeimgloop = 0; timeStopping = 0;
	audio_stop_sound(sndCharging); audio_stop_sound(sndCharged);
	instance_create_depth(x,y,-10,obj_exit);
	obj_exit.sprite_index = SPRITE_TELEPORT2;
	paused = 1; visible = 0;
}