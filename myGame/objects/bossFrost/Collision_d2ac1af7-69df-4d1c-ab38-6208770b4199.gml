if (froze == 0 && onscreen == 1 && canhit == 0 && other.ricochet == 0)
{
//with (other) {event_user(0); exit; }

	audio_stop_sound(sndEnemyHit); audio_play_sound(sndEnemyHit, 5, false); 
	audio_stop_sound(sndShoot1); audio_stop_sound(sndShoot2); //sound_stop(sfx_bazooka);

if (flashing == 0)
{
flashing = 1;
visible = 0;
alarm[7] = 1;
instance_create_depth(x,y,15,hitspark);
flashloop = 29;
switch (other.object_index)
{
    case mega_bullet1:
    case chargeShot1:		boss_energybar.bosshealth -= 1; break;
    case chargeShot2:		boss_energybar.bosshealth -= global.csp; break;
    case magmaBazooka:		boss_energybar.bosshealth -= 5; break;
    case miniMagma:			boss_energybar.bosshealth -= 3; break;
    case frostBarrier:    
    case airSlash:			
    case airSlash2:			boss_energybar.bosshealth -= 1; break;
}
}

//Destroy Bullet
switch (other.object_index)
{
    case mega_bullet1:
    case chargeShot1: 
    case magmaBazooka: 
    case miniMagma:
	case airSlash:
	case airSlash2:
        with (other) instance_destroy(); break;
    case chargeShot2:
        if (boss_energybar.bosshealth > 0) {with (other) instance_destroy();} break;
    case frostBarrier: 
        with (other) {instance_destroy(); event_user(1);} break;
    //case napalm_bullet2: 
        //if (boss_energybar.bosshealth > 0) {other.ricochet = 1;} break;
}

}