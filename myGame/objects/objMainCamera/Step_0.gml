///Zoom window
/*
if(keyboard_check_pressed(ord("Z")))
{
  zoom++;
  
  if(zoom>max_zoom)
    zoom=1;
  
  window_set_size(ideal_width*zoom,ideal_height*zoom);
  surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
  alarm[0]=1;
}
*/

//checks where player is when outside of camera view
if (instance_exists(megaman))
{
if (megaman.x+4 > view_x+view_w && shift != 1) {shift = 1; movecount = 256;}
if (megaman.x-4 < view_x && shift != 2) {shift = 2; movecount = 256;}

if (megaman.y-16 > view_y+view_h && shift != 3) 
{
    if (megaman.holeshift == 1) {shift = 3; movecount = 224;}
}
if (megaman.y-16 < view_y && shift != 4 && megaman.climbing != 0) {shift = 4; movecount = 224;}
}

/////camera scrolling/////
if(instance_exists(megaman)) {
	
	//stops camera from moving
	if (instance_exists(denyScrollRight) && instance_exists(denyScrollLeft) && shift == 0) {
		
		if (megaman.x > denyScrollRight.x && shift == 0) {view_x = denyScrollRight.x - view_w/2;}
		if (megaman.x < denyScrollLeft.x && shift == 0) {view_x = denyScrollLeft.x - view_w/2;}
		
	}
	
	else if(instance_exists(denyScrollRight)) {
		
		//stop camera from scrolling right
		if (megaman.x > denyScrollRight.x && shift == 0) {view_x = denyScrollRight.x - view_w/2;}
		
		//Follow Player
		else if(shift == 0){view_x = megaman.x - view_w/2;
		//view_y = megaman.y - view_h/2;
		}
		
	}
	
	else if(instance_exists(denyScrollLeft)) {
		
		//stop camera from scrolling left
		if (megaman.x < denyScrollLeft.x && shift == 0) {view_x = denyScrollLeft.x - view_w/2;}
		
		//Follow Player
		else if(shift == 0){view_x = megaman.x - view_w/2;
		//view_y = megaman.y - view_h/2;
		}
		
	}
	
	//Follow Player
	else if( !instance_exists(denyScrollRight) && !instance_exists(denyScrollRight) && shift == 0) {view_x = megaman.x - view_w/2;
		//view_y = megaman.y - view_h/2;
	}
}

//shift right
if (shift == 1) {
	if (megaman.indoor) {with (megaman.indoor) {if (image_speed == 0) event_user(0);} }
	
	else {
		view_x+=hsp; Shift(true,"x",0.80);
		movecount-=hsp; 
		instance_deactivate_object(enemyparent);
		if (movecount <= 0) {
		shift = 0; 
		Shift(false,"x",0); 
		with (door1) {event_user(1);}
		}
	}	
}

//shift left
if (shift == 2) {
	view_x-=hsp; Shift(true,"x",-0.70);
	movecount-=hsp; 
	instance_deactivate_object(enemyparent);
	if (movecount <= 0) {shift = 0; Shift(false,"x",0);}
}

//shift down
if (shift == 3) {
	view_y+=vsp; Shift(true,"y",0.40);
	movecount-=vsp; 
	instance_deactivate_object(enemyparent);
	if (movecount <= 0) {shift = 0; Shift(false,"y",0);}
}

//shift up
if (shift == 4) {
	view_y-=vsp; Shift(true,"y",-0.40);
	movecount-=vsp; 
	instance_deactivate_object(enemyparent);
	if (movecount <= 0) {shift = 0; Shift(false,"y",0);}
}

view_x=clamp(view_x,0,room_width-view_w);
view_y=clamp(view_y,0,room_height-view_h);

//create rain 
if (room == TimeRoom) {
	
	part_emitter_region(partRain_sys,partRain_emit,view_x-200,view_x+view_w,view_y-16, view_y-16,ps_shape_line,ps_distr_linear);
	part_emitter_burst(partRain_sys,partRain_emit,partRain,1);
}

