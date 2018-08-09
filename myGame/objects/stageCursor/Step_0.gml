//Set Input
if (global.input == 0)
{
KEYHOLD_UP = keyboard_check(global.key_up);
KEYHOLD_DOWN = keyboard_check(global.key_down);
KEYHOLD_LEFT = keyboard_check(global.key_left);
KEYHOLD_RIGHT = keyboard_check(global.key_right);
KEYHOLD_A = keyboard_check(global.key_jump);
KEYHOLD_START = keyboard_check(global.key_start);
}

//Press
if (visible)
{
if (KEYHOLD_START && press_start == 0) {press_start = 1; event_user(0); exit;}
if (KEYHOLD_A && press_a == 0) {press_a = 1; event_user(0); exit;}
if (KEYHOLD_LEFT && press_left == 0) {press_left = 1; event_user(1);}
if (KEYHOLD_UP && press_up == 0) {press_up = 1; event_user(2);}
if (KEYHOLD_RIGHT && press_right == 0) {press_right = 1; event_user(3);}
if (KEYHOLD_DOWN && press_down == 0) {press_down = 1; event_user(4);}
}

//Release
if (!KEYHOLD_START && press_start == 1) {press_start = 0;}
if (!KEYHOLD_A && press_a == 1) {press_a = 0;}
if (!KEYHOLD_LEFT && press_left == 1) {press_left = 0;}
if (!KEYHOLD_UP && press_up == 1) {press_up = 0;}
if (!KEYHOLD_RIGHT && press_right == 1) {press_right = 0;}
if (!KEYHOLD_DOWN && press_down == 1) {press_down = 0;}

//top face
if (whereto_x == "l" && whereto_y == "t") {objPlayerFace.image_index = 1;}
if (whereto_x == "m" && whereto_y == "t") {objPlayerFace.image_index = 2;}
if (whereto_x == "r" && whereto_y == "t") {objPlayerFace.image_index = 3;}

//middle face
if (whereto_x == "l" && whereto_y == "m") {objPlayerFace.image_index = 8;}
if (whereto_x == "m" && whereto_y == "m") {objPlayerFace.image_index = 0;}
if (whereto_x == "r" && whereto_y == "m") {objPlayerFace.image_index = 4;}

//bottom face
if (whereto_x == "l" && whereto_y == "b") {objPlayerFace.image_index = 7;}
if (whereto_x == "m" && whereto_y == "b") {objPlayerFace.image_index = 6;}
if (whereto_x == "r" && whereto_y == "b") {objPlayerFace.image_index = 5;}
