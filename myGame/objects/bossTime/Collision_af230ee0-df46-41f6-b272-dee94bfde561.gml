//handles what happens when boss is hit by weapons

//note for this boos the condition invisible is only for this boss and basically makes it so this boss
//cant be hit while teleporting around.

if (froze == 0 && onscreen == 1 && canhit == 0 && other.ricochet == 0 && invisible == 0)
{
//with (other) {event_user(0); exit; }

	audio_stop_sound(sndEnemyHit); audio_play_sound(sndEnemyHit, 5, false); 
	audio_stop_sound(sndShoot1); audio_stop_sound(sndShoot2); audio_stop_sound(sndMagmaBazooka);
	audio_stop_sound(sndAirSlash); audio_stop_sound(sndIceBarrier);

if (flashing == 0 && invisible == 0)
{
flashing = 1;
visible = 0;
alarm[7] = 1;
instance_create_depth(x,y,15,hitspark);
flashloop = 29;
switch (other.object_index)
{
    case mega_bullet1:
    case chargeShot1:
	case frostBarrier:
	case timeKnife:			boss_energybar.bosshealth -= 1; break;
    case chargeShot2:		boss_energybar.bosshealth -= global.csp; break;
	case nChain:
    case magmaBazooka:		boss_energybar.bosshealth -= 2; break;
    case miniMagma:			boss_energybar.bosshealth -= 1; break;    
    case airSlash:			
    case airSlash2:			boss_energybar.bosshealth -= 4; break;
}
}

//this condition is specific for this boss
if (invisible == 0) {
	
	//Destroy Bullet
	switch (other.object_index)
	{
	    case mega_bullet1:
	    case chargeShot1: 
	    case magmaBazooka: 
	    case miniMagma:
		case airSlash:
		case airSlash2:
		case timeKnife:
		case nChain:
	        with (other) instance_destroy(); break;
	    case chargeShot2:
	        if (boss_energybar.bosshealth > 0) {with (other) instance_destroy();} break;
	    case frostBarrier: 
	        with (other) {instance_destroy(); event_user(1);} break;
	    //case napalm_bullet2: 
	        //if (boss_energybar.bosshealth > 0) {other.ricochet = 1;} break;
	}
	}

}