if (froze == 0 && onscreen == 1 && canhit == 0 && other.ricochet == 0)
{
	
	audio_stop_sound(sndEnemyHit); audio_play_sound(sndEnemyHit, 5, false); 
	audio_stop_sound(sndShoot1); audio_stop_sound(sndShoot2); audio_stop_sound(sndMagmaBazooka);
	audio_stop_sound(sndAirSlash); audio_stop_sound(sndIceBarrier);

	if (flashing == 0)
	{
		flashing = 3;
		visible = 0;
		alarm[7] = 4;
		
		switch (other.object_index)
		{
			case mega_bullet1:	
			case chargeShot1:	
			case miniMagma:		if sprite_index == sprYellowDAttack	myhealth -= 1; break;
			case frostBarrier:	if sprite_index == sprYellowDAttack	myhealth -= 2; break;
			case airSlash:
			case airSlash2:
			case timeKnife:			myhealth -=2;  break;
			case nChain:
			case magmaBazooka:		myhealth -= 3; break;
			case chargeShot2:		if sprite_index == sprYellowDAttack	myhealth -= global.csp; break;
		}
	}
	
	//Destroy Bullet
	switch (other.object_index)
	{
		case mega_bullet1:
		case chargeShot1:
		case magmaBazooka:
		case miniMagma:
		case timeKnife:
		
			with (other) instance_destroy(); break;
			
		case chargeShot2:
		case airSlash:
		case airSlash2:
		case nChain:
        if (myhealth > 0) {with (other) instance_destroy();} break;
		
		case frostBarrier:
        with (other) {instance_destroy(); event_user(1);} break;
	}
}
