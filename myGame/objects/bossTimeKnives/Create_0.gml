mypower = 5;
image_speed = 0;

hsp = 0;
vsp = 0;

paused = 0;
onscreen = 1;
canhit = 0;
froze = 0;

//setting it to zero causes this projectile to destroy frost barrier in one hit
isbullet = 0;

//is affected by time stop
timeStoppable = false;

timeStopping = 0;

audio_stop_sound(sndShoot1); audio_play_sound(sndShoot1, 5, false);

if (instance_exists(bossTime)) {
	
	if (bossTime.image_xscale == -1) {image_xscale = -1; hsp = -4;}
	else {hsp = 4; image_xscale = 1;}
}