//Flashing

if (flashloop > 0) {
	
	alarm[7] = 1;
	flashloop -= 1;
	if (visible == 0) {visible = 1; with (hitspark) {instance_destroy();} exit;}
	if (visible == 1) {visible = 0; instance_create_depth(x,y,15,hitspark); exit;}
}
else {
	
	flashloop = 0;
	flashing = 0;
	visible = 1;
	with (hitspark) {instance_destroy();}
}