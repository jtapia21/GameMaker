if (canfreeze == true) {
	
	with (megaman) {
		
		canmove = false;
		KEYHOLD_UP = 0;
		KEYHOLD_DOWN = 0;
		KEYHOLD_LEFT = 0;
		KEYHOLD_RIGHT = 0;
		KEYHOLD_A = 0;
		timeStopping = 0;
	}
}

if (canfall == 1) {vspeed += 1;}

//If a boss intro sprite needs image_speed adjusting mid-animation, do it like so:
//if (sprite_index == crystalman_intro && image_index > 5 && image_speed == 0.2) image_speed = 0.4;