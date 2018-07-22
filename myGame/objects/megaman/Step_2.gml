if (paused) {exit;}
if (global.myHealth <= 0) {exit;}

//Pause
if (KEYHOLD_START && pressing_start == 0 && hurt == 0 && !paused && !instance_exists(boss_energyfiller))
{
pressing_start = 1;

audio_stop_sound(sndPause); audio_play_sound(sndPause,5,false);
instance_create_depth(view_x,view_y,-2800,fadeOutPause);
fadeOutPause.pausevalue = 1;
}
if (!KEYHOLD_START && pressing_start == 1) {pressing_start = 0;}

if (instance_exists(enemyparent)) {
	
	if (timeStopping == 1) {
		
		enemyparent.timeStopping = 1; 
	}
	else {
		
		enemyparent.timeStopping = 0;
	}
}