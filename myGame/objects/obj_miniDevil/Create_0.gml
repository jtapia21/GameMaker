myhealth = 1;
mypower = 4;

image_speed = 0.2;

paused = 0;
onscreen = 1;
flashing = 0;
canhit = 0;
froze = 0;
xv = 8;
isbullet = 0;

//is affected by time stop
timeStoppable = true;

timeStopping = 0;

//timer to shoot
shootTimer = 160;

if (x-xv > view_x+view_w || x+xv < view_x || y > view_y+view_h || y < view_y) 
{visible = 0; onscreen = 0;}
