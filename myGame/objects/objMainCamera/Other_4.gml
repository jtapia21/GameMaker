view_camera[0]=camera;
view_enabled=true;
view_visible[0]=true;

//specific spot to put camera in stages
if(room == testRoom) {
	view_x = 0;
	view_y = 224;
	view_w = ideal_width;
	view_h = ideal_height;
}
else if (room == TimeRoom) {
	view_x = 0;
	view_y = 464;
	view_w = ideal_width;
	view_h = ideal_height;
	
}

else {
	view_x = 0;
	view_y = 0;
	view_w = ideal_width;
	view_h = ideal_height;
}
	

//when you want camera to be disabled
switch(room) {
	
	case firstRoom:
	case Opening:
	case titleScreen:
	case selectScreen:
	case saveRoom:
		view_camera[0] = noone;
		view_enabled=false;
		view_visible[0]=false;
		break;
}

