//Set input
if (global.input == 0)
{
KEYHOLD_START = keyboard_check(global.key_start);
}

//Press
if (KEYHOLD_START && press_start == 0) 
{
    press_start = 1; 
    if (skip == 0 /*&& myscene > 2*/ && image_alpha == 0)
    {
        skip = 1;
        alarm[0] = 1;
        image_alpha += 0.2;
        myscene = 2;
    }
}

//Release
if (!KEYHOLD_START && press_start == 1) {press_start = 0;}