//check if player is on the ground
if place_meeting(x, y+vspeed+1, objSolid) {
	ground = true
}
else {
	ground = false
}
//movement

//if player is on the ground, execute the rest
if ground == true {
	//if holding key to move right and there is no wall, player moves right 
	if keyboard_check(ord("D")) && !place_meeting(x+vel+1, y, objSolid)
	{
		//makes sure player does pixel step before walking 
		if initStep == true
		{
			initStep = false
			
			//player is currently pixel stepping
			IsStep = true
		}
		//if already pixel stepping, player will walk at full speed
		else if isStep == false
		{
			//walkspeed of player
			vel = walkSpeed
			
			//changes sprite to walking one
			sprite_index = mega_Walk
			
			//animation speed of the sprite
			image_speed = 0.15
			
			//makes sprite face right
			image_xscale = 1
		}	
	}
	
	//if holding key to move left and there is no wall, player moves left
	else if keyboard_check(ord("A")) && !place_meeting(x+vel-1, y, objSolid) {
		//makes sure player does pixel step before walking 
		if initStep == true {
			initStep = false
			
			//player is currently pixel stepping
			IsStep = true
		}
		//if already pixel stepping, player will walk at full speed
		else if isStep == false {
			//walkspeed of player
			vel = -walkSpeed
			
			//changes sprite to walking one
			sprite_index = mega_Walk
			
			//animation speed of the sprite
			image_speed = 0.15
			
			//makes sprite face left
			image_xscale = -1
		}	
	}
	// if nothing is pressed and not currently pixel stepping, player stops moving
	else if isStep == false {
		stepTimer = 0
		
		//walking speed is set to zero
		vel = 0
		
		//changes sprite to standing one
		sprite_index = mega_Stand
		initStep = true
	}

////////////////////pixel step////////////////////

	//if player is currently pixel stepping
	if isStep == true {
		//makes player move one pixel forward
		vel = image_xscale * stepSpeed
		
		//changes sprite to pixel stepping one
		sprite_index = mega_Step
		stepTimer += 1
		
		//makes sure player can't pixel step again until current pixel step finishes
		if stepTimer >= stepFrames {
			stepTimer = 0
			isStep = false
		}
	}
}

//if not on the ground, do the following
else {
	//changes sprite to jumping one
	sprite_index = mega_Jump
	
	//makes sure you can't pixel step in the air
	initStep = false
	stepTimer = 0
	isStep = false
	
	//if holding right in the air and no wall in the way, player moves right
	if keyboard_check(ord("D")) && !place_meeting(x+vel+1, y, objSolid) {
		//distance and direction to move in the air
		vel = walkSpeed
		image_xscale = 1
	}
	
	//if holding left in the air and no wall in the way, player moves left
	else if keyboard_check(ord("A")) && !place_meeting(x+vel-1, y, objSolid) {
		//distance and direction to move in the air
		vel = -walkSpeed
		image_xscale = -1
	}
	//if player is pressing nothing while in the air
	else
	{
		//player does not move any direction
		vel = 0
	}
}

//allow movement
x += vel

////////////////////////gravity////////////////////////////////

//if player is on the ground, no gravity
if ground == true {
	gravity = 0
	canMinJump = true
}

//else if player is in the air, turn on gravity
else {
	gravity = grav
	
	//keeps the fall speed from going too fast
	if vspeed > maxVspeed {
		vspeed = maxVspeed
	}
}

///////////////////////jumping/////////////////////////////////

//if player is on the ground and presses the jump key
if ground == true && keyboard_check(ord("K")) {
	//player jumps
	vspeed = -jumpSpeed
	
	//changes sprite to jump one
	sprite_index = mega_Jump
	ground = false
}

//////////////////////minJump//////////////////////////////////
if ground == false && vspeed < 0 && canMinJump == true && !keyboard_check(ord("K")) {
	canMinJump = false
	vspeed = 0
}


///////////////////Shooting/////////////////////////////////////
/*if keyboard_check_pressed(ord('X')) &&instance_number(objMegamanBullet) > 3 {
	var box;
	if image_xscale == -1 {
		box = bbox_left;
	} //end of inner if statement
	else {
		box == bbox_right;
	} //end of inner else stament
	
	//need to figur whether its instance_create_depth or instance_create_layer
	//instance_create(box+image_xscale*6, y+2, objMegamanBullet); 
	isShoot = true;
	alarm[0] = 20;
	
} //end of if statement

//////////////////Normal shooting sprites//////////////////////////
if isShoot = false {
	mega_Stand = sprMegaStand;
	mega_Step = sprMegaStep;
	mega_Walk = sprMegaWalk;
	mega_Jump = sprMegaJump;
}//End of if statement 
else {
	mega_Stand = sprMegaStandShoot;
	mega_Step = sprMegaStandShoot;
	mega_Walk = sprMegaWalkShoot;
	mega_Jump = sprMegaJumpShoot;
}//End of else statement
*/
