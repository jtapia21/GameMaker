//if megaman exist and there is no frost barrier
//create barrier in megaman's position 
if (instance_exists(megaman) && phase == 1) 
{
	//frost barrier follows megaman 
	image_xscale = megaman.image_xscale;
	x = megaman.x;
	y = megaman.y;
}

//checks if megaman is dead, frost barrier destroyed if true 
if (!instance_exists(megaman) || global.myHealth == 0) instance_destroy();