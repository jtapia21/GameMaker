//Sprite Changes
if (hurt == 0)
{
	//if on the ground
	if (grounded == 1)
	{
	
	    if (hsp == 0 && sliding == 0 && canwalk == 0) 
	    {	
			if (global.currentweapon == "normal") {
			
				if (shooting == 0) {sprite_index = SPRITE_STAND;}
		        if (shooting == 1) {sprite_index = SPRITE_STANDSHOOT;}
		        image_speed = 0;
			
		        if (steploop == -1 && blinkloop == -1) {
		            image_index=0; blinkloop = 92; 
		        }
			
			}
			
			else if (global.currentweapon == "chain") {
			
				if (shooting == 0) {sprite_index = SPRITE_STAND;}
		        if (shooting == 1) {sprite_index = SPRITE_STANDSHOOT3;}
		        image_speed = 0;
			
		        if (steploop == -1 && blinkloop == -1) {
		            image_index=0; blinkloop = 92; 
		        }
			
			}
			
			else {
			
		        if (shooting == 0) {sprite_index = SPRITE_STAND;}
				if (shooting == 1) {sprite_index = SPRITE_STANDSHOOT2;}
				image_speed = 0;
			
				if (steploop == -1 && blinkloop == -1) {
					image_speed = 0; blinkloop = 92; 
				}
			}
	    }
	
	    else if (hsp == 0 && canwalk == 1 && image_index != 0 && (sprite_index == SPRITE_STAND || sprite_index == SPRITE_STANDSHOOT || sprite_index == SPRITE_STANDSHOOT2 ))
	    {
	        image_speed = 0; 
	        if (steploop == -1 && blinkloop == -1) 
	        {
	            image_index=0; blinkloop = 92; 
	        }
	    }
	    else 
	    {
	        image_speed = 0.15;
	        if (sliding == 1) {sprite_index = SPRITE_SLIDE;}
			
	        else 
	        {	
				if (global.currentweapon == "normal") {
				
					if (shooting == 0) {sprite_index = SPRITE_WALK;}
					if (shooting == 1) {sprite_index = SPRITE_WALKSHOOT;}
				}
				
				else {
		            if (shooting == 0) {sprite_index = SPRITE_WALK;}
		            if (shooting == 1) {sprite_index = SPRITE_WALKSHOOT2;}
				}
	        }
	    }
	}
	
	//not on the ground
	else
	{
	    if (climbing != 0) 
	    {
			if(global.currentweapon == "normal") {
		        if (shooting == 0) 
		        {
		        if (climbing == 1) {sprite_index = SPRITE_CLIMB;}
		        if (climbing == 2) {sprite_index = SPRITE_BEND;}
		        }
		        if (shooting == 1) {sprite_index = SPRITE_CLIMBSHOOT;}
			}
			
			else if(global.currentweapon == "chain") {
		        if (shooting == 0) 
		        {
		        if (climbing == 1) {sprite_index = SPRITE_CLIMB;}
		        if (climbing == 2) {sprite_index = SPRITE_BEND;}
		        }
		        if (shooting == 1) {sprite_index = SPRITE_CLIMBSHOOT3;}
			}
			
			else {
				
				if (shooting == 0) 
		        {
		        if (climbing == 1) {sprite_index = SPRITE_CLIMB;}
		        if (climbing == 2) {sprite_index = SPRITE_BEND;}
		        }
		        if (shooting == 1) {sprite_index = SPRITE_CLIMBSHOOT2;}
			}
	    }
	    else
	    {
			if(global.currentweapon == "normal") {
		        if (shooting == 0) {sprite_index = SPRITE_JUMP;}
		        if (shooting == 1) {sprite_index = SPRITE_JUMPSHOOT;}
		        image_speed = 0;
			}
			
			else if(global.currentweapon == "chain") {
		        if (shooting == 0) {sprite_index = SPRITE_JUMP;}
		        if (shooting == 1) {sprite_index = SPRITE_JUMPSHOOT3;}
		        image_speed = 0;
			}
			
			else {
				if (shooting == 0) {sprite_index = SPRITE_JUMP;}
		        if (shooting == 1) {sprite_index = SPRITE_JUMPSHOOT2;}
		        image_speed = 0;
			}
	    }
	}
}

//Blink
if (sprite_index == SPRITE_STAND && image_index != 2)
{
    if (blinkloop > 0) {blinkloop -= 1;}
    
    if (blinkloop == 0 && image_index == 0) {blinkloop = 8; image_index = 1;}
    if (blinkloop == 0 && image_index == 1) {blinkloop = 150; image_index = 0;}
}
else {blinkloop = -1;}
