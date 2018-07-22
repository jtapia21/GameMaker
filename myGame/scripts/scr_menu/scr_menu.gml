//Controls what happens when you pick a menu option
/*itch (mpos) {
	
	case 0: {
		fade_to_room(selectScreen);
		stop_music();
		//global.isStart = 1;
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
}*/

switch (mpos) {
	
	case 0: {
		fade_to_room(selectScreen);
		stop_music();
		//global.isStart = 1;
		break;
	}//End of case one
	
	case 1: {
		game_end();
		break;
	}//End of case 1
	
	default: break;
}