if (paused) {exit;}

//handles time on screen
if (alarmMoveUp > -1) {
	
	alarmMoveUp -= 1;
	
	if (alarmMoveUp < 0) {
		
		y -= 1;
		alarmMoveUp = 45;
	}
}

//if outside of view, destroy
if (x-18 > view_x+view_w || x+18 < view_x || y > view_y+view_h || y < view_y)
{instance_destroy();}