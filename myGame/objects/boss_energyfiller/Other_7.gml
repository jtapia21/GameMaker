//When creating a boss energy bar, assign the two colors it will use

image_speed = 0;
eb = instance_create_depth(view_x+216,view_y+17,-1000,boss_energybar);

switch (sprite_index)
{
    case time_intro: 
        image_index = 9; 
        eb.col_head = make_color_rgb(36,24,149); make_color_hsv(246,83,55);
        eb.col_body = make_color_rgb(0,136,148); make_color_hsv(185,100,58);
        break;
    //case gravityman_intro: image_index = 0; break;
    //case crystalman_intro: image_index = 0; break;
    //case chargeman_intro: image_index = 0; break;
    case frost_intro: 
        image_index = 9; 
        eb.col_head = make_color_rgb(60,188,255); 
        eb.col_body = make_color_rgb(229,229,229); 
        break;
		
	case sprRyuIntro: 
        image_index = 9; 
        eb.col_head = make_color_rgb(60,188,255); 
        eb.col_body = make_color_rgb(229,229,229); 
        break;
    //case waveman_intro: image_index = 0; break;
    //case starman_intro: image_index = 0; break;
    //case gyroman_intro: image_index = 0; break;
}