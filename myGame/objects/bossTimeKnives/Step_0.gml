if (paused) exit;

if (x-2 > view_x+view_w || x+2 < view_x || 
    y > view_y+view_h || y < view_y) 
{instance_destroy();}
    
x+=hsp;
y+=vsp;

if (alarmChangeDirection > -1) {
	
	alarmChangeDirection -= 1;
	
	if (alarmChangeDirection == 0) {
		
		hsp = 0;
		alarm[0] = 12;
		
	}
}