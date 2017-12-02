//Enemy moves towards the players x & y position to the character.
//move_towards_point(objMega_john.x, objMega_john.y, 2);

//If Minion health reaches 0 then destroy minion
if minionHealth <= 0 {
	instance_destroy(); //destroys itself with contact of bullet
}//end of if statement.