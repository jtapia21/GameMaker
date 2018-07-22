if ((y > view_y+224-12 || x < view_x+16)) exit;

instance_destroy();
megaman.canmove = true;
//sound_volume(sfx_charging2,1);

switch (sprite_index)
{
    case time_intro: tbs = instance_create_depth(x,y,10,bossTime); break;
    //case gravityman_intro: tbs = instance_create(x,y,gravityman); break;
    //case crystalman_intro: tbs = instance_create(x,y,crystalman); break;
    //case chargeman_intro: tbs = instance_create(x,y,chargeman); break;
    case frost_intro: tbs = instance_create_depth(x,y,10,bossFrost); break;
	case sprRyuIntro: tbs = instance_create_depth(x,y,10,bossRyu); break;
    //case waveman_intro: tbs = instance_create(x,y,waveman); break;
    //case starman_intro: tbs = instance_create(x,y,starman); break;
    //case gyroman_intro: tbs = instance_create(x,y,gyroman); break;
}

tbs.rx = xstart; 
tbs.ry = ystart; 