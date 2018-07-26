
/*TODO
Check when rem is in Position
When Rem is in postion timer turns on 
when timer reaches approprite time sprite changes
when platform opens Rem falls down
	- platform destroys itself when fully open
	- restart the gimmick's original phase
*/

//checks when Rem is on top of the gimmick
if (place_meeting(x,y-1,megaman)) {
	canFall = true;	
}//End of place_meeting if statement

//if Rem can fall than start open timer
if(canFall = true){
	timer -= 1;	
}//End of canFall if statement 

//if open timer is less than 0
//start image speed and image phase count down 
if(timer <= 0){
	image_speed = 0.30;
	imagePhase += 1;
	
	//if imagePhase reches X then Rem falls
	if(imagePhase > 25){
		issolid = 0;
		
		//need code here to restart the gimmick to its original state
		//(Find a better way on doing this)
		if(imagePhase = 74)  {
			image_speed = 0;
			image_index = 0;
			canFall = false;
			timer = 20;
			issolid = 1;
			imagePhase = 0;
		}//End of restart imagePhase if statement
		
		/*
		//if image phase reaches X then destroy platform
		if(imagePhase = 70) {
			instance_destroy();
		}//End of instance_destroy if statement
		*/
		
	}//End of issolid if statement
}//End of timer if stament
