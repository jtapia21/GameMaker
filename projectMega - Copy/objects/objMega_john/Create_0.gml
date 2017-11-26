canMove = true; //can I move?
ground = true; //if on the ground
isStep = false; //is player currently pixel stepping?
stepTimer = 0;
initStep = true; //if wanting to move, do we need to pixel step first
vel = 0; // current movement speed
canMinJump = true;
isShoot = false; //Are we currently shooting?
canShoot = true; //Can we currently shoot/
isSlide = false; //Are we slidding?
canMove = true; //Can we move while sliding?
canSpriteChange = true; //if we can change our sprites freely


//physics variables
walkSpeed = 1.296875; //walking speed of character
grav = 0.25; //player's gravity
jumpSpeed = 4.75 + grav*2; //how high player jumps
maxVspeed = 7; //max falling speed
stepSpeed = 1/7; //speed of the pixel step
stepFrames = 7; //number of frames that step pixel lasts
slideSpeed = 22.5; //The speed of the slide 
sliideFrames = 26; //The amount of frames when we slide before canceled

//variables to check if player is pressing a button
pressing_right = 0;
pressing_left = 0;
pressing_up = 0;
pressing_down = 0;
pressing_a = 0; //shoot button
pressing_b = 0; //jump button
pressing_start = 0;

//variables to hold controls of the game
KEYHOLD_UP = -1;
KEYHOLD_DOWN = -1;
KEYHOLD_LEFT = -1;
KEYHOLD_RIGHT = -1;
KEYHOLD_A = -1; //shoot button
KEYHOLD_B = -1; //jump button
KEYHOLD_START = -1;

//sprite variables
sprStand = sprMegaStand;
sprWalk = sprMegaWalk;
sprStep = sprMegaStep;
sprJump = sprMegaJump;
sprSlide = sprMegaSlide;
sprShoot = sprMegaStandShoot;
sprSlide = sprMegaSlide;


