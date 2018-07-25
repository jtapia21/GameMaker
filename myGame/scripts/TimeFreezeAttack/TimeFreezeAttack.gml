//this is her timestop attack, works the same way as the freeze script except it only freezes megaman

stopTimer -= 1;

//freeze
if (stopTimer > -1) {
	
	with (megaman) {
		
		if (megaman.paused == 0) {
				
			//freeze megaman
			pre_isp = megaman.image_speed;
			megaman.image_speed = 0;
			megaman.paused = 1;
				
			//freeze Bullets
			with (bulletparent) {
				pre_bisp = image_speed;
				image_speed = 0;
				paused = 1;
			}
		}
			
		//controls are locked
		canmove = false;
		KEYHOLD_UP = 0;
		KEYHOLD_DOWN = 0;
		KEYHOLD_LEFT = 0;
		KEYHOLD_RIGHT = 0;
		KEYHOLD_A = 0;
		timeStopping = 0;
			
		if (alarm[0] >= 0) {alarm[0] += 1;}
		if (alarm[1] >= 0) {alarm[1] += 1;}
	}
		
	with (bulletparent) {for (i=0; i<=11; i+=1) {if (alarm[i] > 0) {alarm[i]+=1;} } }
		
	with (effectsparent) {image_speed = 0;}
}

//unfreeze
else {
	
	//megaman is free
	with (megaman) {
		
		canmove = true;
		megaman.paused = 0;
		megaman.image_speed = pre_isp;
	}
	
	//Character Bullets
	with (bulletparent)
	{
	    image_speed = pre_bisp;
	    paused = 0;
	}
	
	with (effectsparent) {image_speed = misp;}
		
	attack = 0;
}