/// @description 

if (x-xv > view_x+view_w || x+xv < view_x || y-16 > view_y+view_h || y < view_y) 
{event_user(15); }
else if (onscreen == 0) {onscreen = 1; visible = 1; froze = 0; }

if (paused) exit;

if (myhealth <= 0)
{
event_user(15);
instance_create_depth(x-1,y-0,15,itemexplosion);
exit;
}

//if (timeStopping == 0 && sprite_index == SPRITE_STAND) { image_speed = 0.20;}


if(instance_exists(megaman) && paused == 0 && froze == 0 && timeStopping == 0 && (distance_to_object(megaman) < 110)) {
	image_index = 1;
	instance_create_depth(x-16,y-12,5,obj_cannonShot);
}//End of if statement
