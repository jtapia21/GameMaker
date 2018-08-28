/// @description Set Variables

myhealth = 3;
mypower = 4;

image_speed = 0;
paused = 0;
onscreen = 1;
flashing = 0;
froze = 0;
xv = 16;
isbullet = 0;


//Enemy-Specific
hsp = 0;
vsp = 0;

//canup = -1;
//alarm[0] = 2;


if (x-xv > view_x+view_w || x+xv < view_x || y > view_y+view_h || y < view_y) 
{visible = 0; onscreen = 0;}


/////////////////////////////////
image_xscale = -1;

//healthpointsStart = 1;
//healthpoints = healthpointsStart;
contactDamage = 1;
reflectProjectiles = true;
reflectProjectilesRight = false; //Only reflect projectiles that come from the right
reflectProjectilesLeft = false; //Only reflect projectiles that come from the left



//Enemy specific code
radius = 4 * 16; //Four blocks; the radius that MM needs to enter to trigger the shooting of the Met
cooldownTimer = 0;
canShoot = true;
image_speed = 0;
image_index = 0;