//Controls what happens when you pick a menu option
switch (mpos) {
	
	case 0: {
		room_goto_next();
		break;
	}//End of case one
	
	case 1: {
		//go to control menu
		break;
	}//End of case 1
	
	case 2: {
		game_end();
		break;
	}
	
	default: break;
}