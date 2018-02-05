//Alarm - Charge
if (alarmcharge > -1) 
{
    alarmcharge -= 1;
    if (alarmcharge == -1) {if (chargeloop != 0 && charge != 0) {audio_play_sound(sndCharged,5 ,true)} }
}

if (paused) {exit;}

//Alarm - Charge FX
if (alarmchargefx > -1 && canmove) 
{
    alarmchargefx -= 1;
    if (alarmchargefx == 0) 
    {
        if (chargeimgloop > 0 && chargeimgloop < 9)
        {
            alarmchargefx = 1;
            if (global.frame == global.frame_0) swap_color("charging1")
            else if (global.frame == global.frame_1) swap_color("normal")
        }
        if (chargeimgloop > 8 && chargeimgloop < 17)
        {
            alarmchargefx = 1;
            if (global.frame == global.frame_0) swap_color("charging2")
            else if (global.frame == global.frame_2) swap_color("normal")
        }
        if (chargeimgloop > 16 && chargeimgloop < 25)
        {
            alarmchargefx = 1;
            if (global.frame == global.frame_0) swap_color("charging3")
            else if (global.frame == global.frame_3) swap_color("normal")
        }
        if (chargeimgloop > 24)
        {
            alarmchargefx = 1;
            if (global.frame == global.frame_0) swap_color("charged1")
            else if (global.frame == global.frame_c1) swap_color("charged2")
            else if (global.frame == global.frame_c2) swap_color("normal")
        }
    }
}

//Alarm - End shoot
if (alarmshoot > -1) 
{
    alarmshoot -= 1;
    if (alarmshoot == -1) {shooting = 0; canwalkshoot = true; alarmwalkshoot = -1;}
}

//Alarm - Release step if cannot walk and shoot
if (alarmwalkshoot > -1) 
{
    alarmwalkshoot -= 1;
    if (alarmwalkshoot == -1) 
    {
    if (pressing_left == 1) pressing_left = 0; 
    if (pressing_right == 1) pressing_right = 0; 
    canwalk = 0;
    }
}

//Alarm - Air bubble
if (alarmbubble > -1) 
{
    alarmbubble -= 1;
    if (alarmbubble == -1) 
    {
        alarmbubble = 9; 
        if (instance_number(airbubble)==0) 
        {
            if (image_xscale == -1) {instance_create_depth(x-4,y-18,0,airbubble);}
            if (image_xscale == 1) {instance_create_depth(x-2,y-18,0,airbubble);}
            with (airbubble) depth = 1;
        }
    }
}

//Set the input variables

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

///shoot my gun///

//a switch is used to have multiple cases
switch (global.currentweapon)
{
	//uses the script shootNormal()
   case "normal": ShootNormal(); break;
   case "frost": ShootFrost(); break;
}


var bschrg;
if (instance_exists(boss_energyfiller)) bschrg = false;
else bschrg = true;

if (KEYHOLD_B && hurt == 0 && global.currentweapon=="normal" && bschrg) 
{
    if (pressing_b == 0) {pressing_b = 1;}
    if (chargeloop < 45) {chargeloop += 1;}
    if (chargeloop == 21) {audio_play_sound(sndCharging,5,false); alarmchargefx = 1; alarmcharge = 36; charge = 1;}
    if (chargeloop == 44) {charge = 2;}
}
if (!KEYHOLD_B && pressing_b != 0 && sliding == 0) 
{
pressing_b = 0;
chargeloop = 0; 
chargeimgloop = 0;

if (charge == 1) {audio_stop_sound(sndCharging); audio_stop_sound(sndCharged); charge = 0; Fire(chargeShot1,20); }
if (charge == 2) {audio_stop_sound(sndCharging); audio_stop_sound(sndCharged); charge = 0; Fire(chargeShot2,28); }
}
if (chargeloop > 20 && chargeimgloop < 30 && bschrg) {chargeimgloop += 1;}

//handles my gravity or when I hit a block
gravityAndFloor();
    
//enemies and stuff
otherCollisions();

//changes my sprites
spriteChange();

if(charge == 0 && global.currentweapon == "normal") {
	swap_color("normal");
}