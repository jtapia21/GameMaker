pressing_right = 1;
pressing_left = 1;
pressing_up = 1;
pressing_down = 1;
pressing_a = 1;
pressing_start = 1;

weaponquestion = global.currentweapon;
canmove = false;
alarmfill = -1;

pm = pause_menu.id;

//checks what weapon is currently equipped going into the pause menu
switch (global.currentweapon)
{
    case "normal": 
        x = pause_menu.IPW.x; y = pause_menu.IPW.y; break;
    case "frost": 
        x = pause_menu.IFB.x; y = pause_menu.IFB.y; break;
    case "magma": 
        x = pause_menu.IMB.x; y = pause_menu.IMB.y; break;
	case "air": 
		x = pause_menu.IAS.x; y = pause_menu.IAS.y; break;
	case "stop": 
		x = pause_menu.ITS.x; y = pause_menu.ITS.y; break;
	case "chain": 
		x = pause_menu.INC.x; y = pause_menu.INC.y; break;
	case "earth": 
		x = pause_menu.ITN.x; y = pause_menu.ITN.y; break;
	case "bubble": 
		x = pause_menu.IBC.x; y = pause_menu.IBC.y; break;
	case "meteor": 
		x = pause_menu.ISM.x; y = pause_menu.ISM.y; break;
	case "item1": 
		x = pause_menu.IIO.x; y = pause_menu.IIO.y; break;

}

//Set input
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