mypower = 5;

hsp = 0;
vsp = 0;

paused = 0;
onscreen = 1;
canhit = 0;
froze = 0;
isbullet = 1;

//is affected by time stop
timeStoppable = false;

timeStopping = 0;

audio_stop_sound(sndShoot1); audio_play_sound(sndShoot1, 5, false);

if (instance_exists(bossTime)) {
	
	if (bossTime.image_xscale == -1) {image_xscale = -1; hsp = -5;}
	else {hsp = 5; image_xscale = 1;}
}