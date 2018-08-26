
//how long item stays on screen
if (lifeSpan > 0 && paused == 0) {
	
	lifeSpan -= 1;
	
	if (lifeSpan == 0) {flashloop = 120;}
	alarm[0] = 1;
}

//starts to blink when its about to dissapear
else if (flashloop > 0 && paused == 0) {
	
	alarm[0] = 1;
	flashloop -= 1;
	
	//destroy item if timer is at zero
	if (flashloop == 0) {instance_destroy();}

	if (visible == 0) {visible = 1; exit;}

	if (visible == 1) {visible = 0; exit;}
	
}

else {alarm[0] = 1;}

