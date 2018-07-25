if (flashloop > 0)
{
	
alarm[0] = 2;
flashloop -= 1;

if (visible == 0)
{visible = 1; exit;}

if (visible == 1) {visible = 0; exit;}
}
else 
{
instance_destroy();
}
