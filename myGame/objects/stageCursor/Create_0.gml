image_speed = 0.2;
whereto_x = "m";
whereto_y = "m";
stc = "";
enc = "";

press_up = 1;
press_down = 1;
press_left = 1;
press_right = 1;
press_a = 1;
press_start = 1;

//Set input
if (global.input == 0)
{
KEYHOLD_UP = keyboard_check(global.key_up);
KEYHOLD_DOWN = keyboard_check(global.key_down);
KEYHOLD_LEFT = keyboard_check(global.key_left);
KEYHOLD_RIGHT = keyboard_check(global.key_right);
KEYHOLD_A = keyboard_check(global.key_jump);
KEYHOLD_START = keyboard_check(global.key_start);
}