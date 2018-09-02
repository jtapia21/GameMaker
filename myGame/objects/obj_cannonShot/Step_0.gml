/// @description Code for the cannon ball

if (paused) exit;

if (x-8 > view_x+view_w || x+8 < view_x || y > view_y+view_h || y < view_y) {
	instance_destroy();
}
    
x+=hsp;
y+=vsp;

if (instance_exists(megaman)) move_towards_point(megaman.x,megaman.y-16,4);
else instance_destroy();