if (paused) exit;
if (timeStopping) exit;

if (x-8 > view_x+view_w || x+8 < view_x || 
    y > view_y+view_h || y < view_y) 
{instance_destroy();}

x+=hsp;
y+=vsp;