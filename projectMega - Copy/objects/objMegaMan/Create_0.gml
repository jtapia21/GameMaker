ground = true //if on the ground
isStep = false //is player currently pixel stepping?
stepTimer = 0
initStep = true //if wanting to move, do we need to pixel step first
vel = 0 // current movement speed
canMinJump = true

//physics variables

//walking speed of character
walkSpeed = 1.296875
//player's gravity
grav = 0.25
//how high player jumps
jumpSpeed = 4.75 + grav*2
//max falling speed
maxVspeed = 7
//speed of the pixel step
stepSpeed = 1/7
//number of frames that step pixel lasts
stepFrames = 7

//sprite variables
mega_Stand = sprMegaStand
mega_Step = sprMegaStep
mega_Walk = sprMegaWalk
mega_Jump = sprMegaJump

