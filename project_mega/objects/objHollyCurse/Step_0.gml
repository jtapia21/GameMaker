/// @description Minion's health & moves towards player

script_execute(state); //Activates state

////////////////Minion's Health////////////////////////
//minion health reaches 0
if minionHealth <= 0 {
	
	instance_destroy(); //Minion gets destroyed
}//End of if statement