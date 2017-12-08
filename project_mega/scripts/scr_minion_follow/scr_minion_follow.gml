///@description minion follows player

//Finds out the distance between the minion and the player.
var dis = point_distance(x, y, objMega_john.x, objMega_john.y);

//Distance is less than aggroRange 
if(dis <= aggroRange) {
	//Calculates the players 
	//mp_potential_step(objMega_john.x, objMega_john.y, x, y); 
	move_towards_point(objMega_john.x, objMega_john.y, 2); //Move towards player
	
	////////////////Insert code for minion to back off from player here//////////////////////
	/*if(dis == position_meeting(x, y, objMega_john)) {
		
	}*/
}//End of if statement