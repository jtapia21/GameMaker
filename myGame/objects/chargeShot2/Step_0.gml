if (paused) {exit;}
x+=hsp;
y+=vsp;


if (x-24 > view_x+view_w|| x+24 < view_x || y > view_y+view_h || y < view_y)
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
