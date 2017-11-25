ground = true //if on the ground
isStep = false //is player currently pixel stepping?
stepTimer = 0
initStep = true //if wanting to move, do we need to pixel step first
vel = 0 // current movement speed
canMinJump = true
isShoot = false //Are we currently shooting?


//physics variables
walkSpeed = 1.296875 //walking speed of character
grav = 0.25 //player's gravity
jumpSpeed = 4.75 + grav*2 //how high player jumps
maxVspeed = 7 //max falling speed
stepSpeed = 1/7 //speed of the pixel step
stepFrames = 7 //number of frames that step pixel lasts

//sprite variables
mega_Stand = sprMegaStand
mega_Step = sprMegaStep
mega_Walk = sprMegaWalk
mega_Jump = sprMegaJump

