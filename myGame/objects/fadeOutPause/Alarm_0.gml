if (image_alpha < 1 && fadestep == 0)
{
    image_alpha += 0.2;
    alarm[0] = 1;
    exit;
}

else if (image_alpha == 1 && fadestep == 0)
{
    fadestep = 1;
    alarm[0] = 5;
    pause_menu.x = view_x;
    pause_menu.visible = pausevalue;
    if (pausevalue == 1) {with (pause_menu) event_user(0);}
    if (pausevalue == 0) {with (pause_menu) event_user(1);}
	
	//don't know why you want this, it destroys all weapons on screen when paused
    with (bulletparent) {instance_destroy();}
    exit;
}

else if (image_alpha > 0.2 && fadestep == 1)
{
    image_alpha -= 0.2;
    alarm[0] = 1;
    exit;
}

else
{
    instance_destroy();
    if (pausevalue = 1) {with (pause_cursor) {canmove = true; } }
    if (pausevalue = 0) 
    {
        with (pause_menu) {instance_destroy();} 
		
        audio_resume_sound(sndCharged);
        //with (bg_ctrl) event_user(15);
    }
    exit;
}