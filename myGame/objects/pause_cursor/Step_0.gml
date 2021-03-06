//Used E-Tank
if (alarmfill > -1) 
{
    alarmfill -= 1;
    if (alarmfill == -1) 
    {
        alarmfill = 1;
        if (global.myHealth < 28)
        {
            global.myHealth+=1;
        }
        else 
        {
            audio_stop_sound(sndGetEnergy)
            alarmfill = -1;
            global.tanks_e -= 1;
            canmove = true;
            event_user(15);
        }
    }
}

if (!canmove) {
	exit;
}//End of if statement

//Set Input
if (global.input == 0)
{
	//keys are set to variables here
	//global keys are made in initial room creation code
	KEYHOLD_UP = keyboard_check(global.key_up);
	KEYHOLD_DOWN = keyboard_check(global.key_down);
	KEYHOLD_LEFT = keyboard_check(global.key_left);
	KEYHOLD_RIGHT = keyboard_check(global.key_right);
	KEYHOLD_A = keyboard_check(global.key_jump);
	KEYHOLD_START = keyboard_check(global.key_start);
}

//Press
if (KEYHOLD_START && pressing_start == 0) {pressing_start = 1; event_user(0); exit;}
if (KEYHOLD_A && pressing_a == 0) {pressing_a = 1; event_user(0); exit;}

//Pressing left
if (KEYHOLD_LEFT && pressing_left == 0) {
	pressing_left = 1; 
	event_user(1);
}//End of pressing left if statement

//pressing up
if (KEYHOLD_UP && pressing_up == 0) {
	pressing_up = 1; 
	event_user(2);
}//End of pressing up if statement

//pressing right 
if (KEYHOLD_RIGHT && pressing_right == 0) {
	pressing_right = 1; 
	event_user(3);
}//End of pressing right if statement

//prssing down
if (KEYHOLD_DOWN && pressing_down == 0) {
	pressing_down = 1; 
	event_user(4);
}//End of pressing down if statement

//Release if the player is not pressing the keys 
if (!KEYHOLD_START && pressing_start == 1) {pressing_start = 0;}
if (!KEYHOLD_A && pressing_a == 1) {pressing_a = 0;}
if (!KEYHOLD_LEFT && pressing_left == 1) {pressing_left = 0;}
if (!KEYHOLD_UP && pressing_up == 1) {pressing_up = 0;}
if (!KEYHOLD_RIGHT && pressing_right == 1) {pressing_right = 0;}
if (!KEYHOLD_DOWN && pressing_down == 1) {pressing_down = 0;}

//Check current weapon
if (x == pm.IPW.x && y == pm.IPW.y) {global.currentweapon = "normal"; megaman.myWeapon = 0;}
if (x == pm.IMB.x && y == pm.IMB.y) {global.currentweapon = "magma"; megaman.myWeapon = 1;}
if (x == pm.IFB.x && y == pm.IFB.y) {global.currentweapon = "frost"; megaman.myWeapon = 2;}
if (x == pm.INC.x && y == pm.INC.y) {global.currentweapon = "chain"; megaman.myWeapon = 3;}
if (x == pm.ITS.x && y == pm.ITS.y) {global.currentweapon = "stop"; megaman.myWeapon = 4;}
if (x == pm.IAS.x && y == pm.IAS.y) {global.currentweapon = "air"; megaman.myWeapon = 5;}
if (x == pm.IBC.x && y == pm.IBC.y) {global.currentweapon = "bubble"; megaman.myWeapon = 6;}
if (x == pm.ITN.x && y == pm.ITN.y) {global.currentweapon = "earth"; megaman.myWeapon = 7;}
if (x == pm.ISM.x && y == pm.ISM.y) {global.currentweapon = "meteor"; megaman.myWeapon = 8;}
if (x == pm.IIO.x && y == pm.IIO.y) {global.currentweapon = "item1"; megaman.myWeapon = 9;}


if (x == pm.ET.x && y == pm.ET.y) {global.currentweapon = "normal";}


