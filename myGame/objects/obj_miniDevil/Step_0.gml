if (x-xv > view_x+view_w || x+xv < view_x || y > view_y+view_h || y < view_y) 
{event_user(15); }
else if (onscreen == 0) {onscreen = 1; visible = 1; froze = 0; }

if (paused) exit;

if (myhealth <= 0) {
	event_user(15);
	instance_create_depth(x-2,y+4,15,itemexplosion);
	exit;
}

if (x<view_x+view_w && x>view_x) {
	
	if (instance_exists(megaman) && paused == 0 && froze == 0 && timeStopping == 0 && image_index < 2)
	{
		if x>=megaman.x
		image_xscale=1
		if x<megaman.x
		image_xscale=-1
		
		image_speed = 0.20;
	}
}

if (shootTimer > 0 && timeStopping == 0 && froze == 0) {
	
	shootTimer -= 1;
	
	if (shootTimer == 50) {
		
		sprite_index = sprYellowDAttack;
		instance_create_depth(x,y-10,10,obj_bullet1);
		audio_play_sound(sndEnemyShoot,5,false);
	}
	
	if (shootTimer == 0) {
		
		sprite_index = sprYellowDIdle;
		shootTimer = 160;
	}
}