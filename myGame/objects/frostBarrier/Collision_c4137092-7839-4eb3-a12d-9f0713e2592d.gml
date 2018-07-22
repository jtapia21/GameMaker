
//protects you from projectiles 
if (barrierHealth > 0) {

	with (other)
	{
		
		//destroy enemy projectile
		if (isbullet == 1) {
		
			instance_destroy();
			audio_play_sound(sndRicochet,5,false);
			//with (other) {event_user(1); instance_destroy(); }
		}
	}
	
	//lose one health
	barrierHealth -= 1;
}

//if barrier health is 0, barrier goes away
else {
	
	with (other)
	{
		
		//destroy enemy projectile
		if (isbullet == 1) {
			
	        instance_destroy();
	        audio_play_sound(sndRicochet,5,false);
	        //with (other) {event_user(1); instance_destroy(); }
	    }
	}
	
	//destroy barrier
	instance_destroy();
}
