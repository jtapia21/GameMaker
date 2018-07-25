if (paused) {exit;}
x+=hsp;
y+=vsp;


if (x-32 > view_x+view_w|| x+32 < view_x || y-32 > view_y+view_h || y < view_y)
{instance_destroy();}

//Alarm Depth
if (alarmdepth > -1) 
{
    alarmdepth -= 1;
    if (alarmdepth == -1) 
    {
    depth = -10;
    }
}

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
