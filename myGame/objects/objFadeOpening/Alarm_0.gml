
//Fade to black
if (image_alpha < 1 && fadestep == 0)
{
    image_alpha += 0.2;
    alarm[0] = 4;
    exit;
}

//Solid - execute events
else if (image_alpha == 1 && fadestep == 0)
{
    fadestep = 1;
    alarm[0] = 10;
    
    if (restart == 1) {room_goto_previous(); exit; }
    
    //background_x -= 256;
	var background = layer_background_get_id(layer_get_id("myBackground"));
	layer_background_change(background, bgIntro2);
    
    if (myscene == 2) room_goto_next();
    
    exit;
}

//Fade from black
else if (image_alpha > 0.2 && fadestep == 1)
{
    image_alpha -= 0.2;
    alarm[0] = 4;
    exit;
}

//Invisible - execute events
else
{
    image_alpha = 0;
    fadestep = 0;
    myscene += 1;
    switch (myscene)
    {
        case 1: alarm[0] = 210; break;
        case 2: alarm[0] = 210; break;
        case 3: instance_destroy(); break;
    }
    exit;
}