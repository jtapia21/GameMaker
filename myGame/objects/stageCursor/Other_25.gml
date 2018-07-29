stop_music()

switch (global.currentlevel) {
	
	case testRoom: room_goto_next(); break;
	//case TimeRoom: room_goto(TimeRoom); break;
	case TimeRoom: room_goto(introduction); break;
	
}