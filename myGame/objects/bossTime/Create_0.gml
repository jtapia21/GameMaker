//how much damage to do when colliding with player
mypower = 5;

//variables all bosses have
image_speed = 0;
image_xscale = -1;
paused = 0;
onscreen = 1;
canhit = 0;
froze = 0;
flashing = 0;
flashloop = 0;
hsp = 0;
vsp = 0;
grounded = 1;
grav = 0.25;

//am I a projectile?
isbullet = 0;

//am I affected by time stop?
timeStoppable = false;

//currently time stopping?
timeStopping = 0;

//specific variables to this boss
shoot = 0;
shooting = 0;
alarmshoot = 1;
alarmshooting = -1;
stopTimer = -1;

jumping = 0;
alarmjump = -1;
flashtimer = -1;
invisible = 0;

attack = 0;
wait = 0;
myFirstPositionX = x;
myFirstPositionY = y;

//sprite variables
SPRITE_INTRO = time_intro;
SPRITE_STANDBOSS = sprTimeStand;
SPRITE_SHOOTBOSS = sprTimeStandShoot
SPRITE_SHOOTBOSS2 = sprTimeStandKnife
SPRITE_JUMPBOSS = sprTimeJump;
SPRITE_WALKBOSS = sprTimeWalk;
SPRITE_FLASH = sprTimeStandFlash;
SPRITE_FLASH2 = sprTimeStandKnifeFlash;