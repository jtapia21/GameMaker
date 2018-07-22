randomize();

init_music();
init_color();

global.currentlevel = -1;
global.checkpoint_x = 0;
global.checkpoint_y = 0;

//sets the controls
global.input = 0;
global.key_up = ord("W");
global.key_down = ord("S");
global.key_right = ord("D");
global.key_left = ord("A");
global.key_jump = ord("K");
global.key_shoot = ord("J");
global.key_start = vk_enter;

global.myHealth = 28;
global.myLives = 2;
global.tanks_e = 0;
global.tanks_m = 0;
global.csp = 3; //charge shot power

//sets current weapon at start of game
global.currentweapon = "normal";

//weapon variables
global.frostweapon = 28;
global.magmaweapon = 28;
global.airweapon = 28;
global.stopweapon = 28;
global.chainweapon = 28;

//boss variables
global.frostDefeated = 1;
global.magmaDefeated = 1;
global.airDefeated = 1;
global.stopDefeated = 0;
global.chainDeafeated = 1;

global.ryuDefeated = 0;

global.stageselect_value = 0;

room_goto_next();

