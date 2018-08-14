
//test
myWeapon += 1;
chargeloop = 0; 
chargeimgloop = 0;
charge = 0;
audio_stop_sound(sndCharging); audio_stop_sound(sndCharged);

if(myWeapon == 10) {
	
	myWeapon = 0;
}

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

