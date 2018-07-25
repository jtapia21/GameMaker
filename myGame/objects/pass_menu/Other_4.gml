//Resets all active variables after leaving a stage

global.currentweapon = "normal";
swap_color("normal");
global.myHealth = 28;
global.checkpoint_x = 0;
global.checkpoint_y = 0;

if (global.myLives <= -1) {
	
	image_index = 1;
	alarm[0] = 240;
}

if (global.myLives <= -1) global.myLives = 2;

//weapon variables
global.frostweapon = 28;
global.magmaweapon = 28;
global.airweapon = 28;
global.stopweapon = 28;
global.chainweapon = 28;
global.earthweapon = 28;
global.bubbleweapon = 28;
global.meteorweapon = 28;
global.item1weapon = 28;

if (image_index == 0) {
	
	pass_cursor.visible = 1;
}
