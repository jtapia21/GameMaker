//Sets the default control variables
if canMove == true
{
		KEYHOLD_UP = keyboard_check(global.key_up);
		KEYHOLD_DOWN = keyboard_check(global.key_down);
		KEYHOLD_LEFT = keyboard_check(global.key_left);
		KEYHOLD_RIGHT = keyboard_check(global.key_right);
		KEYHOLD_A = keyboard_check(global.key_a);
		KEYHOLD_B = keyboard_check(global.key_b);
		KEYHOLD_START = keyboard_check(global.key_start);
}




//check if player is on the ground
if place_meeting(x, y+vspeed+1, objSolid) {
	ground = true
}
else {
	ground = false;
}

///////////////////////////////movement////////////////////////////////////

//if player is on the ground, execute the rest
if ground == true {
	//if holding key to move right and there is no wall, player moves right 
	if KEYHOLD_RIGHT && !place_meeting(x+vel+1, y, objSolid) && canMove == true {
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
			
			if canSpriteChange == true {
			
				//changes sprite to walking one
				sprite_index = sprWalk
			}// end of if statement
			
			//animation speed of the sprite
			image_speed = 0.15
			
			//makes sprite face right
			image_xscale = 1
		}	
	}
	
	//if holding key to move left and there is no wall, player moves left
	else if KEYHOLD_LEFT && !place_meeting(x+vel-1, y, objSolid) && canMove == true {
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
			
			if canSpriteChange == true{
			
				//changes sprite to walking one
				sprite_index = sprWalk
			}// end of if statement 
			
			//animation speed of the sprite
			image_speed = 0.15
			
			//makes sprite face left
			image_xscale = -1
		}	
	}
	// if nothing is pressed and not currently pixel stepping, player stops moving
	else if isStep == false && canMove == true {
		stepTimer = 0
		
		//walking speed is set to zero
		vel = 0
		
		if canSpriteChange == true {
			//changes sprite to standing one
			sprite_index = sprStand;
		}// end of if statement
		
		initStep = true
		
		pressing_b = 0
	}

////////////////////pixel step (or sidestepping) ////////////////////
	if canMove == true {
		//if player is currently pixel stepping
		if isStep == true {
			//makes player move one pixel forward
			vel = image_xscale * stepSpeed
		
			if canSpriteChange == true {		
				//changes sprite to pixel stepping one
				sprite_index = sprStep;
			}// end of if canSpriteChange statement
			
			stepTimer += 1
		
			//makes sure player can't pixel step again until current pixel step finishes
			if stepTimer >= stepFrames {
				stepTimer = 0
				isStep = false
			}
		}
	}
	else { 
		isStep = false;
	}
}

//if not on the ground, do the following
else {
	if canSpriteChange == true {
		//changes sprite to jumping one
		sprite_index = sprJump
	}// end of if canSpriteChange statement
	
	//makes sure you can't pixel step in the air
	initStep = false
	stepTimer = 0
	isStep = false
	
	//if holding right in the air and no wall in the way, player moves right
	if KEYHOLD_RIGHT && !place_meeting(x+vel+1, y, objSolid) && canMove == true {
		//distance and direction to move in the air
		vel = walkSpeed
		image_xscale = 1
	}
	
	//if holding left in the air and no wall in the way, player moves left
	else if KEYHOLD_LEFT && !place_meeting(x+vel-1, y, objSolid) && canMove == true {
		//distance and direction to move in the air
		vel = -walkSpeed
		image_xscale = -1
	}
	//if player is pressing nothing while in the air
	else if canMove = true 
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
}//end of gravity if statement

///////////////////////jumping/////////////////////////////////
//if player is on the ground and presses the jump key
if ground == true && KEYHOLD_B && !KEYHOLD_DOWN
   && !(isSlide == true && place_meeting(x, y-3, objSolid)) {
	
	if isSlide == true {
		event_user(0);
	}//end of isSlide if statement 
	
	//player jumps
	vspeed = -jumpSpeed
	
	if canSpriteChange == true {
		//changes sprite to jump one
		sprite_index = sprJump
	}//end of if canSpriteChange statement
	
	ground = false
	
	/*if isSlide == true {
		event_user(0);
	}*/
	
}// end of jumping if statement

//////////////////////minJump//////////////////////////////////
if ground == false && vspeed < 0 && canMinJump == true && !KEYHOLD_B {
	canMinJump = false
	vspeed = 0
}// end of minJump if statement

//////////////////////Sliding///////////////////////////////////
if ground == true && KEYHOLD_DOWN && KEYHOLD_UP && isSlide == false {
	isSlide = true;
	sprite_index = sprSlide;
	vel = slideSpeed * image_xscale;
	alarm[1] = slideFrames;	
	
}//end of sliding if statement

if isSlide == true {
	mask_index = sprMegaSlideMask;
	canMove = false;
	canSpriteChange = false;
	canShoot = false;
	
	if (KEYHOLD_LEFT && image_xscale == 1 && !place_meeting(x, y-3, objSolid)) 
	   || (KEYHOLD_RIGHT && image_xscale == -1 && !place_meeting(x, y-3, objSolid)) 
	   || ground == false || (image_xscale == 1 && place_meeting(x+vel+1, y, objSolid))
	   || (image_xscale == -1 && place_meeting(x+vel-1, y, objSolid)) {
		event_user(0);
	}// end of inner if statement 
	else if ((KEYHOLD_RIGHT && image_xscale == -1 && place_meeting(x, y-3, objSolid))
			|| (KEYHOLD_LEFT && image_xscale == 1 && place_meeting(x, y-3, objSolid)))
			&& !(KEYHOLD_RIGHT && KEYHOLD_LEFT) {
		vel = -vel;
		image_xscale = -image_xscale;
		
	}//End of else statement
}// end of isSlide if statement 


///////////////////Shooting/////////////////////////////////////
/*if keyboard_check_pressed(ord('X')) &&instance_number(objMegamanBullet) > 3 canShoot == true {
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
Mega_Slide = sprMegaSlide; //We can't shoot while sliding 

