if (visible)
{
if (vspeed != 0) {vspeed = 0; canfall = 0; y=other.y+1;}
if (hspeed != 0) {hspeed = 0; x=xprevious;}

switch (sprite_index)
{
    case time_intro: image_speed = 0.4; break;
    //case gravityman_intro: image_speed = 0.2; break;
    //case crystalman_intro: image_speed = 0.2; break;
    //case chargeman_intro: image_speed = 0.2; break;
    case frost_intro: image_speed = 0.2; break;
	case sprRyuIntro: image_speed = 0.2; break;
    //case waveman_intro: image_speed = 0.2; break;
    //case starman_intro: image_speed = 0.2; break;
    //case gyroman_intro: image_speed = 0.2; break;
}
}