/// @description Intialize Demon Dog

//Code activates when distance between player and minion are met

//state = scrMinionStatic; 

minionHealth = 4;	//takes 4 hits from player
image_speed = .10;	//The speed of the sprite change
aggroRange = 110;	//Distance before minion starts following player
ground = true;
canSpriteChange = true;

//////////Physics variables/////////
grav = 0.25;
jumpSpeed = 4.75 + grav;

mSpriteJump = sprDemonDogJump;