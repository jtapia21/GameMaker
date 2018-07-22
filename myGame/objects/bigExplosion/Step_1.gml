if (soundplayed == 0)
{
soundplayed = 1;

audio_stop_sound(sndEnemyHit); audio_stop_sound(sndEnemyShoot);
audio_stop_sound(sndShoot1); audio_stop_sound(sndShoot2); audio_stop_sound(sndShoot3);
audio_stop_sound(sndAirSlash); audio_stop_sound(sndMagmaBazooka); audio_stop_sound(sndIceBarrier); 
audio_stop_sound(sndTimeeffect);

audio_stop_sound(sndExplosion1); audio_play_sound(sndExplosion1, 5, false);
}