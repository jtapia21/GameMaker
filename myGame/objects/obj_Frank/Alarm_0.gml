if (instance_exists(megaman) && froze == 0 && timeStopping == 0)
{
vsp = -10;
jumping = 1;
sprite_index = SPRITE_JUMP;
if (x >= megaman.x) {hsp = -2; image_xscale = 1;}
else if (x < megaman.x) {hsp = 2; image_xscale = -1;}
}
else alarm[0] = 1;