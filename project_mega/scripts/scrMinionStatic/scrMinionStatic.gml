///@description minion static

//Finds out the distance between the minion and the player
var dis = point_distance(x, y, objMega_john.x, objMega_john.y);

//if that distance is less than the aggro range 
if (dis <= aggroRange) {
	state = scr_minion_follow; //Than minion starts following the player.
}//End of if statement 