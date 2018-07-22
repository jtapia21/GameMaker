/*
Fire(proto_bullet1,14);
argument0 = the bullet object to fire 
argument1 = x value
The x value is used if you need to fire from a different position; 
e.g. with Mega Man sprites his jumping and standing have different
Buster positions.
*/

var yStand,yWalk,yJump,yClimb; //Vertical bullet positions are determined here as opposed to arguments
yStand = -13; yWalk = -13; yJump = -20; yClimb = -20;

shooting = 1;
alarmshoot = 16;


if (climbing != 0) {vsp=0; y=floor(y); if (KEYHOLD_LEFT) {image_xscale = -1;} if (KEYHOLD_RIGHT) {image_xscale = 1;} }

if(global.currentweapon == "normal") {
	
	switch (sprite_index) {
		case SPRITE_STAND: 
		case SPRITE_STANDSHOOT:
		    sprite_index = SPRITE_STANDSHOOT; bl = instance_create_depth(x,y+yStand,10,argument0); break;
		case SPRITE_WALK:
		case SPRITE_WALKSHOOT:
		    sprite_index = SPRITE_WALKSHOOT; bl = instance_create_depth(x,y+yWalk,10,argument0); break;
		case SPRITE_JUMP:
		case SPRITE_JUMPSHOOT:
		    sprite_index = SPRITE_JUMPSHOOT; bl = instance_create_depth(x,y+yJump,10,argument0); break;
		case SPRITE_CLIMB:
		case SPRITE_BEND:
		case SPRITE_CLIMBSHOOT:
		    sprite_index = SPRITE_CLIMBSHOOT; bl = instance_create_depth(x,y+yClimb,10,argument0); break;
	}
	
}

else if(global.currentweapon == "chain") {
	
	switch (sprite_index) {
		case SPRITE_STAND: 
		case SPRITE_STANDSHOOT3:
		    sprite_index = SPRITE_STANDSHOOT3; bl = instance_create_depth(x,y+yStand+6,10,argument0); break;
		case SPRITE_WALK:
		case SPRITE_WALKSHOOT:
		    sprite_index = SPRITE_WALKSHOOT; bl = instance_create_depth(x,y+yWalk+6,10,argument0); break;
		case SPRITE_JUMP:
		case SPRITE_JUMPSHOOT3:
		    sprite_index = SPRITE_JUMPSHOOT3; bl = instance_create_depth(x,y+yJump+6,10,argument0); break;
		case SPRITE_CLIMB:
		case SPRITE_BEND:
		case SPRITE_CLIMBSHOOT3:
		    sprite_index = SPRITE_CLIMBSHOOT3; bl = instance_create_depth(x,y+yClimb+6,10,argument0); break;
	}
	
}

else {
	switch (sprite_index) {
	    case SPRITE_STAND: 
	    case SPRITE_STANDSHOOT2:
	        sprite_index = SPRITE_STANDSHOOT2; bl = instance_create_depth(x,y+yStand,10,argument0); break;
	    case SPRITE_WALK:
	    case SPRITE_WALKSHOOT2:
	        sprite_index = SPRITE_WALKSHOOT2; bl = instance_create_depth(x,y+yWalk,10,argument0); break;
	    case SPRITE_JUMP:
	    case SPRITE_JUMPSHOOT2:
	        sprite_index = SPRITE_JUMPSHOOT2; bl = instance_create_depth(x,y+yJump,10,argument0); break;
	    case SPRITE_CLIMB:
	    case SPRITE_BEND:
	    case SPRITE_CLIMBSHOOT2:
	        sprite_index = SPRITE_CLIMBSHOOT2; bl = instance_create_depth(x,y+yClimb,10,argument0); break;
	}
}
if (instance_exists(bl))
{
if (image_xscale == -1) {bl.image_xscale = -1; bl.x-=argument1;}
if (image_xscale == 1) {bl.image_xscale = 1; bl.x+=argument1;}
}
