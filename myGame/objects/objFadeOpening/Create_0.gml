image_speed = 0;
image_alpha = 1;
alarm[0] = 1;
fadestep = 1;
myscene = 0;
restart = 0;

press_start = 1;
skip = 0;

//Set input
if (global.input == 0)
{
KEYHOLD_START = keyboard_check(global.key_start);
}
