
//goes towards player
if (instance_exists(megaman)) {
	
	if (x-16 > megaman.x) {
		
		sprite_index = sprTimeKnivesDiag;
		image_xscale = -1;
	}
	
	else if (x+16 < megaman.x) {
		
		sprite_index = sprTimeKnivesDiag;
		image_xscale = 1;
	}
	
	else {
		
		sprite_index = sprTimeKnivesDown;
	}
		
	move_towards_point(megaman.x,megaman.y-16,4);
}

else {instance_destroy();}