//all player variables

//is player sliding?
sliding = 0;
//can player slide?
canslide = 1;
//is player shooting?
shooting = 0;
//is player climbing?
climbing = 0;
//is player on the ground
grounded = 1;
//is game paused?
paused = 0;
//horizontal movement speed
hsp = 0;
//vertical movement speed
vsp = 0;
//is player going into a death hole?
holeshift = 0;
//can player move?
canmove = true;
//is player in water?
inwater = 0;
//which weapon to equip
myWeapon = 0;
//am I stopping time
timeStopping = 0;
//when on moving platform
hsp_carry = 0;

//charge variables
charge = 0;
chargeloop = 0;
chargeimgloop = 0;

//blink and step loop variables
canwalk = 0;
steploop = -1;
blinkloop = 8;

//is player hurt?
hurt = 0;
//after hurt invincibility variables
flash = 0;
flashloop = 0;

//shoot variables
alarmshoot = -1;
alarmcharge = -1;
alarmchargefx = -1;
alarmbubble = -1;
alarmwalkshoot = -1;

//variables to check if player is currently pressing a button
pressing_right = 0;
pressing_left = 0;
pressing_up = 0;
pressing_down = 0;
pressing_a = 0;
pressing_b = 0;
pressing_start = 0;

//how fast player falls
fallsp = 7;
//how fast player climbs up
climbsp = 1.5;
//how fast player walks on land
wsp1 = 1.5;
//current walk speed
walksp = wsp1;
//how fast to slide on land
slsp1 = 2.5;
//current slide speed
slidesp = slsp1;
//gravity on land
grv1 = 0.25;
//gravity in water
grv2 = 0.38 * grv1;
//current gravity
grav = grv1;
//how high to jump on land
jsp1 = -(4.75 + grv1*2);
//how high to jump in water
jsp2 = -(4.85 + grv1*2);
//current jump height
jumpsp = jsp1;

//can player walk and shoot?
canwalkshoot = true;
//can player climb?
canclimb = true;
//can player slide?
canslide = true;


//Define movement variables
KEYHOLD_UP = -1;
KEYHOLD_DOWN = -1;
KEYHOLD_LEFT = -1;
KEYHOLD_RIGHT = -1;
KEYHOLD_A = -1;
KEYHOLD_B = -1;
KEYHOLD_START = -1;

//Sprite variables
SPRITE_STAND = sprStand;
SPRITE_JUMP = sprJump;
SPRITE_WALK = sprWalk;
SPRITE_SLIDE = sprSlide;
SPRITE_CLIMB = sprClimb;
SPRITE_BEND = sprGetUp;
SPRITE_STANDSHOOT = sprStandShoot;
SPRITE_STANDSWORD = sprStandSword
SPRITE_STANDSHOOT2 = sprStandShoot2;
SPRITE_STANDSHOOT3 = sprStandShoot3;
SPRITE_STANDEARTH = sprStandEarthquake;
SPRITE_JUMPSHOOT = sprJumpShoot;
SPRITE_JUMPSWORD = sprJumpSword;
SPRITE_JUMPSHOOT2 = sprJumpShoot2;
SPRITE_JUMPSHOOT3 = sprJumpShoot3;
SPRITE_WALKSHOOT = sprWalkShoot;
SPRITE_WALKSHOOT2 = sprWalkShoot2;
SPRITE_CLIMBSHOOT = sprClimbShoot;
SPRITE_CLIMBSHOOT2 = sprClimbShoot2;
SPRITE_CLIMBSHOOT3 = sprClimbShoot3;
SPRITE_HURT = sprHurt;
SPRITE_TELEPORT1 = sprTeleport1;
SPRITE_TELEPORT2 = sprTeleport2;
