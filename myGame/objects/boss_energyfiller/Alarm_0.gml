if (megaman.grounded == 1)
{
    if (sprite_index == time_intro && global.stopDefeated == 1) {alarm[1] = 1; exit;}
    //if (sprite_index == gravityman_intro && global.gravity_defeated == 1) {alarm[1] = 1; exit;}
    //if (sprite_index == crystalman_intro && global.crystal_defeated == 1) {alarm[1] = 1; exit;}
    //if (sprite_index == chargeman_intro && global.charge_defeated == 1) {alarm[1] = 1; exit;}
    if (sprite_index == frost_intro && global.frostDefeated == 1) {alarm[1] = 1; exit;}
	if (sprite_index == sprRyuIntro && global.ryuDefeated == 1) {alarm[1] = 1; exit;}
    //if (sprite_index == waveman_intro && global.wave_defeated == 1) {alarm[1] = 1; exit;}
    //if (sprite_index == starman_intro && global.star_defeated == 1) {alarm[1] = 1; exit;}
    //if (sprite_index == gyroman_intro && global.gyro_defeated == 1) {alarm[1] = 1; exit;}
    
    canfreeze = true;
    with (megaman) {alarm[0]=0; event_perform(ev_alarm,0);}
    
    audio_stop_sound(sndCharged);
    visible = 1;
    vspeed = 3; 
    canfall = 1;
	timeStopping = 0;
    
    event_user(2); //Start music
}
else 
{
    alarm[0] = 1;
}