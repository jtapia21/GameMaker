/// @description Move towards player

script_execute(state); //Activates state

//minion health reaches 0
if minionHealth <= 0 {
	
	instance_destroy(); //Minion gets destroyed
}//End of if statement