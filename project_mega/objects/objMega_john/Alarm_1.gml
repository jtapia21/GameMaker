///@description Checks solids above player
//if there is no solid above the character than we can cancel it 
if !place_meeting(x, y-3, objSolid) {
	event_user(0);
}//end of if statement

else {	
	alarm[1] = 1;
}//end of else statement