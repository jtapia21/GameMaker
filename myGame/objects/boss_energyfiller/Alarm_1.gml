if (!instance_exists(megaman)) {alarm[1] = 1; exit; }

if (megaman.grounded == 1) {
	
	stop_music();
	
	with (megaman)
	{
		charge = 0; chargeloop = 0; chargeimgloop = 0; timeStopping = 0;
		audio_stop_sound(sndCharging); audio_stop_sound(sndCharged);
		if (global.currentweapon=="normal") swap_color("normal")
		instance_create_depth(x,y,-10, obj_exit);
		obj_exit.sprite_index = SPRITE_TELEPORT2;
		paused = 1; visible = 0;
	}
}
else alarm[1] = 1;