ground = true; //If we are on the ground
isStep = false; //Are we sidestepping?
stepTimer = 0;
initStep = true;
vel = 0; //Our current movement speed
canMinJump = true;
isShoot = false; //Are we currently shooting?
canShoot = true;
isSlide = false;
canMove = true;
canSpriteChange = true;
ishurt = false; //are we currently hurt?

//Physics variables
grav = 0.25;
jumpSpeed = 4.75 + grav;
walkSpeed = 1.296875;
maxVspeed = 7;
stepSpeed = 1/7;
stepFrames = 7;
slideSpeed = 2.5;
slideFrames = 26;

//Sprites
spriteStand = sprMegaStand;
spriteStep = sprMegaStep;
spriteJump = sprMegaJump;
spriteWalk = sprMegaWalk;
spriteSlide = sprMegaSlide;