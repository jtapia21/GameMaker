//Alarm - Charge
if (alarmcharge > -1) 
{
    alarmcharge -= 1;
    if (alarmcharge == -1) {if (chargeloop != 0 && charge != 0) {audio_play_sound(sndCharged,5 ,true)} }
}

if (paused) {exit;}

//handles charge shot
chargeShot();

//if player can move
if (canmove)
{
//if there was no input from player to change controls, controls are set to defult
if (global.input == 0)
{
	//keys are set to variables here
	//global keys are made in initial room creation code
	KEYHOLD_UP = keyboard_check(global.key_up);
	KEYHOLD_DOWN = keyboard_check(global.key_down);
	KEYHOLD_LEFT = keyboard_check(global.key_left);
	KEYHOLD_RIGHT = keyboard_check(global.key_right);
	KEYHOLD_A = keyboard_check(global.key_jump);
	KEYHOLD_B = keyboard_check(global.key_shoot);
	KEYHOLD_START = keyboard_check(global.key_start);
}
}

//makes me move all around
movementScript()

//makes me climb ladders
climbScript()

//a switch is used to have multiple cases
switch (global.currentweapon)
{
	//uses the script shootNormal()
   case "normal": ShootNormal(); break;
   case "frost": ShootFrost(); break;
   case "magma": ShootMagma(); break;
   case "air": ShootAir(); break;
   case "stop": TimeStop(); break;
   case "chain": ShootChain(); break;
}


//handles my gravity or when I hit a block
gravityAndFloor();

//enemies and stuff
otherCollisions();

//changes my sprites
spriteChange();
