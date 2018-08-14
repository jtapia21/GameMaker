myhealth = 3;
mypower = 4;

image_speed = 0.20;
paused = 0;
onscreen = 1;
flashing = 0;
canhit = 0;
froze = 0;
xv = 0;
isbullet = 0;

//is affected by time stop
timeStoppable = true;

timeStopping = 0;

if (x-xv > view_x+view_w || x+xv < view_x || y > view_y+view_h || y < view_y) 
{visible = 0; onscreen = 0;}

//Sprite Variations
if (global.currentlevel == TimeRoom)
{
    SPRITE_STAND = sprRatIdle;
    SPRITE_JUMP = sprRatJump;
}
else
{
    SPRITE_STAND = sprRatIdle;
    SPRITE_JUMP = sprRatJump;
}

//Enemy-Specific
hsp = 0;
vsp = 0;
grounded = 1;
grav = 0.45;

jumping = 0;
canjump = 0;
hit = 0;
y+=1;

event_user(14);

//Define movement variables
press_b = 1;
KEYHOLD_B = -1;
sprite_index = SPRITE_STAND;