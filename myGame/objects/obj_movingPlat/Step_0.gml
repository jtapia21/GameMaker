
//speed and direction platform will move
if (paused) {exit}

x += horizontal_speed * dir;

//changes direction
if (x < position_from || x > position_to) {
	
	dir *= -1;
}

if (instance_exists(megaman)) {
	
	//turns solid if megaman lands on top
	if (instance_exists(megaman))
	{
	    if (y+4 > megaman.y) {issolid = 1;}
	    else {issolid = 0;}
	}
	
	//causes megaman to have same horizontal movement as platform
	if (place_meeting(x, y-1, megaman) && issolid == 1) {
		
		megaman.hsp_carry = horizontal_speed * dir;
	}
}

