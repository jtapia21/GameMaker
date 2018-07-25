if (paused) exit;

if (x-2 > view_x+view_w || x+2 < view_x || 
    y > view_y+view_h || y < view_y) 
{instance_destroy();}
    
x+=hsp;
y+=vsp;

//changes direction to go down
if (instance_exists(megaman)) {
	
	if (image_xscale == -1 && x-1 < megaman.x) {
		
		hsp = 0;
		vsp = 4;
		sprite_index = sprTimeKnivesDown;
	}
	
	else if (image_xscale == 1 && x+1 > megaman.x) {
		
		hsp = 0;
		vsp = 4;
		sprite_index = sprTimeKnivesDown;
	}
}
