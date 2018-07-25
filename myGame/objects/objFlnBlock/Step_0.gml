/// @description 


if (falling == true) {
	gravity =  0.10;
} 
else {
	gravity = 0;
}

if (place_meeting(x,y-1,megaman)) {
	canFall = true;	
}

if (fallTimer < 0){
	falling = true;	
}

if (canFall = true){
	fallTimer -= 1;	
}
