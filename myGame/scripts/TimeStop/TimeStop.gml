
//stop everything except player
if (KEYHOLD_B && pressing_b == 0 && sliding == 0 && global.stopweapon > 0 &&
    sprite_index != SPRITE_HURT && timeStopping == 0 && hurt == 0) {
		
		//timer to determine energy depletion
		weaponTimer = 15;
		global.stopweapon -= 1;
		
		pressing_b = 1;
		timeStopping = 1;
		
		audio_stop_sound(sndTimeeffect); audio_play_sound(sndTimeeffect, 5, false);
		instance_create_depth(view_x,view_y,-2200,objTimeFlash)
}

//allows knife throws while time is stopped
else if (KEYHOLD_B && pressing_b == 0 && sliding == 0 && global.stopweapon > 0 && instance_number(timeKnife) < 2 && 
    sprite_index != SPRITE_HURT && timeStopping == 1 && hurt == 0) {
		
    pressing_b = 1;
	
    if (!grounded) {Fire(timeKnife,14);}
    else {Fire(timeKnife,14);}
}

//keeps time stopped while you have weapon energy
if (timeStopping == 1 && global.stopweapon > 0) {
	
	weaponTimer -= 1;
	
	if (weaponTimer <= 0) {
		
		global.stopweapon -= 1;
		weaponTimer = 15;
	}
	
	//Enemies
	with (enemyparent)
	{
			
		if (timeStoppable == true) {
			
		    hspeed = 0;
		    vspeed = 0;
		    image_speed = 0;
		    timeStopping = 1;
		}
    
	}
}

//if out of weapon energy
if (global.stopweapon <= 0) {
	
	timeStopping = 0;
}

