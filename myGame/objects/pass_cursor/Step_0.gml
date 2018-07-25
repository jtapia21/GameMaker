//Set input
if (global.input == 0)
{
	//keys are set to variables here
	//global keys are made in initial room creation code
	KEYHOLD_UP = keyboard_check(global.key_up);
	KEYHOLD_DOWN = keyboard_check(global.key_down);
	KEYHOLD_A = keyboard_check(global.key_jump);
	KEYHOLD_START = keyboard_check(global.key_start);
}

//Press
if (visible)
{
    if (KEYHOLD_START && pressing_start == 0) {pressing_start = 1; event_user(0); exit;}
    if (KEYHOLD_A && pressing_a == 0) {pressing_a = 1; event_user(0); exit;}
    if (KEYHOLD_UP && pressing_up == 0) {pressing_up = 1; event_user(1);}
    if (KEYHOLD_DOWN && pressing_down == 0) {pressing_down = 1; event_user(2);}
}

//Release
if (!KEYHOLD_START && pressing_start == 1) {pressing_start = 0;}
if (!KEYHOLD_A && pressing_a == 1) {pressing_a = 0;}
if (!KEYHOLD_UP && pressing_up == 1) {pressing_up = 0;}
if (!KEYHOLD_DOWN && pressing_down == 1) {pressing_down = 0;}
