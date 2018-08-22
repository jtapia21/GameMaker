myhealth = 1;
mypower = 4;

image_speed = 0;
paused = 0;
onscreen = 1;
flashing = 0;
canhit = 0;
froze = 0;
xv = 16;
isbullet = 0;

//is affected by time stop
timeStoppable = true;

timeStopping = 0;

if (x-xv > view_x+view_w || x+xv < view_x || y > view_y+view_h || y < view_y) 
{visible = 0; onscreen = 0;}


//Sprite Variations
if (global.currentlevel == TimeRoom)
{
    SPRITE_NORMAL = sprBat;
}
else
{
    SPRITE_NORMAL = sprBat;
}
sprite_index = SPRITE_NORMAL;


//Enemy-Specific
hsp = 0;
vsp = 0;

canup = -1;
alarm[0] = 2;