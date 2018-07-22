if (global.currentlevel == testRoom)
{
  myhealth = 10;
  mypower = 8;
}
else
{
  myhealth = 13;
  mypower = 8;
}

image_speed = 0;
paused = 0;
onscreen = 1;
flashing = 0;
canhit = 0;
froze = 0;
xv = 12;
isbullet = 0;

//is affected by time stop
timeStoppable = true;

timeStopping = 0;

if (x-xv > view_x+view_w || x+xv < view_x || y > view_y+view_h || y < view_y) 
{visible = 0; onscreen = 0;}

SPRITE_STAND = sprFrankIdle;
SPRITE_JUMP = sprFrankJump;

sprite_index = SPRITE_STAND;


//Enemy-Specific
hsp = 0;
vsp = 0;
grounded = 1;
grav = 0.45;

jumping = 0;
stomping = 0;
alarm[0] = 16;
y+=1;

event_user(14);