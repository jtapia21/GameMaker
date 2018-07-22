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

if (!canmove) {exit;}

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
if (KEYHOLD_LEFT && pressing_left == 0) {pressing_left = 1; event_user(1);}
if (KEYHOLD_UP && pressing_up == 0) {pressing_up = 1; event_user(2);}
if (KEYHOLD_RIGHT && pressing_right == 0) {pressing_right = 1; event_user(3);}
if (KEYHOLD_DOWN && pressing_down == 0) {pressing_down = 1; event_user(4);}

//Release
if (!KEYHOLD_START && pressing_start == 1) {pressing_start = 0;}
if (!KEYHOLD_A && pressing_a == 1) {pressing_a = 0;}
if (!KEYHOLD_LEFT && pressing_left == 1) {pressing_left = 0;}
if (!KEYHOLD_UP && pressing_up == 1) {pressing_up = 0;}
if (!KEYHOLD_RIGHT && pressing_right == 1) {pressing_right = 0;}
if (!KEYHOLD_DOWN && pressing_down == 1) {pressing_down = 0;}

//Check current weapon
if (x == pm.IPW.x && y == pm.IPW.y) {global.currentweapon = "normal";}
if (x == pm.IFB.x && y == pm.IFB.y) {global.currentweapon = "frost";}
if (x == pm.IMB.x && y == pm.IMB.y) {global.currentweapon = "magma";}
if (x == pm.IAS.x && y == pm.IAS.y) {global.currentweapon = "air";}
if (x == pm.ITS.x && y == pm.ITS.y) {global.currentweapon = "stop";}
if (x == pm.INC.x && y == pm.INC.y) {global.currentweapon = "chain";}
if (x == pm.INC.x && y == pm.INC.y) {global.currentweapon = "earth";}
if (x == pm.INC.x && y == pm.INC.y) {global.currentweapon = "bubble";}

if (x == pm.ET.x && y == pm.ET.y) {global.currentweapon = "normal";}


