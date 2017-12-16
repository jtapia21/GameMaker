/// @description Minion's health & moves towards player

//script_execute(state);	//Activates state

if ground == true && place_meeting(x, y-4, objSolid) {
	vspeed = -jumpSpeed;
	sprite_index = mSpriteJump;
	ground = false;
}
///////////////////////jumping/////////////////////////////////

////////////////Minion's Health////////////////////////
if (minionHealth <= 0 ) {
		instance_destroy();	//Minion gets destroyed
}//End of if statement
