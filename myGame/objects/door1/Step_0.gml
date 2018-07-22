if (image_speed == 0.30)
{
	Freeze(true);

	if (mysteps == 1) {
		
		if (instance_exists(enemyparent)) {enemyparent.visible = 0;}
	}
}

if (image_index >= midimg && mysteps == 0)
{
mysteps = 1;
image_index = midimg;
image_speed = 0;
megaman.indoor = -4;

megaman.image_speed = pre_isp;
with (enemyparent) {event_user(15);}
instance_deactivate_object(enemyparent);

if (instance_exists(itemparent)) {itemparent.visible = 0;}
objMegaEnergy.image_speed = 1;
}

if (image_index >= finimg && mysteps == 1)
{
mysteps = 0;
image_index = 0;
image_speed = 0;
megaman.indoor = -4;
if (instance_exists(enemyparent)) {enemyparent.visible = 1;}
Freeze(false);
if (instance_exists(boss_energyfiller)) {boss_energyfiller.alarm[0] = 1;}
lockd = instance_create_depth(x+16,y,5,block);
if (finimg == 6) lockd.image_yscale = 3;
else lockd.image_yscale = 4;
}