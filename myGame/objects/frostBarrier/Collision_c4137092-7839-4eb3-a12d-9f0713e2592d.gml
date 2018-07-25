
//protects you from projectiles 
	
with (other)
{
		
	//destroy enemy projectile
	if (isbullet == 1) {
		
		instance_destroy();
		audio_play_sound(sndRicochet,5,false);
	}
		
}


