/// @description Code for menu cursers movement

var move = 0;	//move the mouse curser up and down

//Checks to see if user presses up arrow key or w or return 0 if false 
move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

if (move != 0) {
	
	mpos += move;	//Add 1 to our menu position
	
	//make sure doesnt go over the top or buttom of the menu options
	//comeback around
	if (mpos < 0 ) {
		
		//if menu pos < 0 then array lenght - 1 
		mpos = array_length_1d(menu) - 1;	
		
	}//End of mpos < 0 if statement
		
	//same idea but for the other direction
	if (mpos >	array_length_1d(menu) - 1) {
			
		mpos = 0;
			
	} //End of mpos > array lenght if statement
	
}//End of move != 0 if statement

//Checks to see if we push the enter 
var push;

push = max(keyboard_check_released(vk_enter), keyboard_check_released(vk_space), 0);

//if button is pushed then call menu script
if (push == 1) { 
	scr_menu();	
}//End of if statement 