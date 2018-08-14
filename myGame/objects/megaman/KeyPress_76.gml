
//handles switching weapons in forward order

if (myWeapon == 0) {
	
	if (global.magmaDefeated == 1) {myWeapon = 1;}
	
	else if (global.frostDefeated == 1) {myWeapon = 2;}
	
	else if (global.chainDefeated == 1) {myWeapon = 3;}
	
	else if (global.stopDefeated == 1) {myWeapon = 4;}
	
	else if (global.airDefeated == 1) {myWeapon = 5;}
	
	else if (global.bubbleDefeated == 1) {myWeapon = 6;}
	
	else if (global.earthDefeated == 1) {myWeapon = 7;}
	
	else if (global.meteorDefeated == 1) {myWeapon = 8;}
	
	else if (global.item1Aquired == 1) {myWeapon = 9;}
	
	else { exit;}
}

else if (myWeapon == 1) { 
	
	if (global.frostDefeated == 1) {myWeapon = 2;}
	
	else if (global.chainDefeated == 1) {myWeapon = 3;}
	
	else if (global.stopDefeated == 1) {myWeapon = 4;}
	
	else if (global.airDefeated == 1) {myWeapon = 5;}
	
	else if (global.bubbleDefeated == 1) {myWeapon = 6;}
	
	else if (global.earthDefeated == 1) {myWeapon = 7;}
	
	else if (global.meteorDefeated == 1) {myWeapon = 8;}
	
	else if (global.item1Aquired == 1) {myWeapon = 9;}
	
	else {myWeapon = 0;}
}

else if (myWeapon == 2) { 
	
	if (global.chainDefeated == 1) {myWeapon = 3;}
	
	else if (global.stopDefeated == 1) {myWeapon = 4;}
	
	else if (global.airDefeated == 1) {myWeapon = 5;}
	
	else if (global.bubbleDefeated == 1) {myWeapon = 6;}
	
	else if (global.earthDefeated == 1) {myWeapon = 7;}
	
	else if (global.meteorDefeated == 1) {myWeapon = 8;}
	
	else if (global.item1Aquired == 1) {myWeapon = 9;}
	
	else {myWeapon = 0;}
}

else if (myWeapon == 3) { 
	
	if (global.stopDefeated == 1) {myWeapon = 4;}
	
	else if (global.airDefeated == 1) {myWeapon = 5;}
	
	else if (global.bubbleDefeated == 1) {myWeapon = 6;}
	
	else if (global.earthDefeated == 1) {myWeapon = 7;}
	
	else if (global.meteorDefeated == 1) {myWeapon = 8;}
	
	else if (global.item1Aquired == 1) {myWeapon = 9;}
	
	else {myWeapon = 0;}
}

else if (myWeapon == 4) { 
	
	if (global.airDefeated == 1) {myWeapon = 5;}
	
	else if (global.bubbleDefeated == 1) {myWeapon = 6;}
	
	else if (global.earthDefeated == 1) {myWeapon = 7;}
	
	else if (global.meteorDefeated == 1) {myWeapon = 8;}
	
	else if (global.item1Aquired == 1) {myWeapon = 9;}
	
	else {myWeapon = 0;}
}

else if (myWeapon == 5) { 
	
	if (global.bubbleDefeated == 1) {myWeapon = 6;}
	
	else if (global.earthDefeated == 1) {myWeapon = 7;}
	
	else if (global.meteorDefeated == 1) {myWeapon = 8;}
	
	else if (global.item1Aquired == 1) {myWeapon = 9;}
	
	else {myWeapon = 0;}
}

else if (myWeapon == 6) { 
	
	if (global.earthDefeated == 1) {myWeapon = 7;}
	
	else if (global.meteorDefeated == 1) {myWeapon = 8;}
	
	else if (global.item1Aquired == 1) {myWeapon = 9;}
	
	else {myWeapon = 0;}
}

else if (myWeapon == 7) { 
	
	if (global.meteorDefeated == 1) {myWeapon = 8;}
	
	else if (global.item1Aquired == 1) {myWeapon = 9;}
	
	else {myWeapon = 0;}
}

else if (myWeapon == 8) { 
	
	if (global.item1Aquired == 1) {myWeapon = 9;}
	
	else {myWeapon = 0;}
}

else if (myWeapon == 9) { myWeapon = 0;}


//stops charging if currently charging
chargeloop = 0; 
chargeimgloop = 0;
charge = 0;
audio_stop_sound(sndCharging); audio_stop_sound(sndCharged);

//equips next weapon
switch(myWeapon) {
	
	case 0:
		global.currentweapon = "normal";
		timeStopping = 0;
		with (bulletparent) {instance_destroy();}
		swap_color(global.currentweapon); break;
		
	case 1:
		global.currentweapon = "magma";
		timeStopping = 0;
		with (bulletparent) {instance_destroy();}
		swap_color(global.currentweapon); break;
		
	case 2:
		global.currentweapon = "frost";
		timeStopping = 0;
		with (bulletparent) {instance_destroy();}
		swap_color(global.currentweapon); break;
	
	case 3:
		global.currentweapon = "chain";
		timeStopping = 0;
		with (bulletparent) {instance_destroy();}
		swap_color(global.currentweapon); break;
		
	case 4:
		global.currentweapon = "stop";
		with (bulletparent) {instance_destroy();}
		swap_color(global.currentweapon); break;
		
	case 5:
		global.currentweapon = "air";
		timeStopping = 0;
		with (bulletparent) {instance_destroy();}
		swap_color(global.currentweapon); break;
		
	case 6:
		global.currentweapon = "bubble";
		timeStopping = 0;
		with (bulletparent) {instance_destroy();}
		swap_color(global.currentweapon); break;
		
	case 7:
		global.currentweapon = "earth";
		timeStopping = 0;
		with (bulletparent) {instance_destroy();}
		swap_color(global.currentweapon); break;
		
	case 8:
		global.currentweapon = "meteor";
		timeStopping = 0;
		with (bulletparent) {instance_destroy();}
		swap_color(global.currentweapon); break;
		
	case 9:
		global.currentweapon = "item1";
		timeStopping = 0;
		with (bulletparent) {instance_destroy();}
		swap_color(global.currentweapon); break;
}

