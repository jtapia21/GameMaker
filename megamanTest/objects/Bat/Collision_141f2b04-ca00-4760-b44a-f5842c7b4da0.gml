if (froze == 0 && onscreen == 1 && canhit == 0 && other.ricochet == 0)
{
	
	//if sprite is not flying, bullet will bounce off
	if !(image_index > 2) {with (other) {event_user(0); exit; } }

	audio_stop_sound(sndEnemyHit); audio_play_sound(sndEnemyHit, 5, false); 
	audio_stop_sound(sndShoot1); audio_stop_sound(sndShoot2);

	if (flashing == 0)
	{
		flashing = 3;
		visible = 0;
		alarm[7] = 2;
		
		switch (other.object_index)
		{
			case proto_bullet1:	
			case chargeShot1:		
			case frostBarrier:		myhealth -= 1; break;
			case chargeShot2:		myhealth -= global.csp; break;	
		}
	}
	
	//Destroy Bullet
	switch (other.object_index)
	{
		case proto_bullet1:
		case chargeShot1:
		
			with (other) instance_destroy(); break;
			
		case chargeShot2:
        if (myhealth > 0) {with (other) instance_destroy();} break;
		
		case frostBarrier:
		with (other){instance_destroy();event_user(1)} break;
	}
}