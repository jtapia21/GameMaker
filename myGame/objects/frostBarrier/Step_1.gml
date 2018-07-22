//This gets called first when user presses shoot button
//if megaman exists and there is no frost barrier
//creates barrier in megaman's position
if (instance_exists(megaman) && phase == 1)
{
	//frost barrier follows megaman
    image_xscale = megaman.image_xscale;
    x = megaman.x;
    y = megaman.y;
}

//checks if megaman is dead, frost barrier destroyed if true
if (!instance_exists(megaman) || global.myHealth == 0) instance_destroy();
