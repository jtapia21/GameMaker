
if (x-xv > view_x+view_w || x+xv < view_x || y > view_y+view_h || y < view_y) 
{event_user(15);}
else if (onscreen == 0) {onscreen = 1; visible = 1; froze = 0; }

if (paused) exit;

if (myhealth <= 0)
{
event_user(15);
//creates explosion that spawns a random item
instance_create_depth(x-1,y+16,15,itemexplosion);
exit;
}

/////movement of fish/////

if (paused == 0 && froze == 0 && timeStopping == 0) {
	
	//goes right or left depending on direction it faces
	if (image_xscale == -1) { hsp = 1;}
	else {hsp = -1;}
	
	image_speed = 0.15;
	
	x += hsp;

}