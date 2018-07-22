image_speed = 0; image_index = 1;
whereto = 1;

pressing_up = 1;
pressing_down = 1;
pressing_a = 1;
pressing_start = 1;

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
