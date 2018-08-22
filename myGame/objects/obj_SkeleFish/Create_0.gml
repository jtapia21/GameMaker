myhealth = 2; 
//How much damage is dealt to the player
mypower = 3; 

image_speed = 0;
image_xscale = -1;

paused = 0;
onscreen = 1;
flashing = 0;
canhit = 0;
froze = 0;
hsp = 0;

//is affected by time stop
timeStoppable = true;

timeStopping = 0;

//fish is able to turn around
turn = 1;

//animation control
blinkTimer = 120;

//Relates to its cutoff position, or rather, when it becomes visible in the view and such
xv = 14; 
isbullet = 0;

if (x-xv > view_x+view_w || x+xv < view_x || y > view_y+view_h || y < view_y) 
{visible = 0; onscreen = 0;}