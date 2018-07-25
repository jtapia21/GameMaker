if (paused) {exit;}

//has the bullet move 
x+=hsp;
y+=vsp;

//bullet is destroyed if outside camera view
if (x-18 > view_x+view_w|| x+18 < view_x || y > view_y+view_h || y < view_y)
{instance_destroy();}