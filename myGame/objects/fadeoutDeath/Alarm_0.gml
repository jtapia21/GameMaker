//creates a fade effect after death
if (image_alpha < 1 && fadestep == 0)
{
    image_alpha += 0.1;
    alarm[0] = 2;
    exit;
}

//after fade, resets a whole bunch of stuff
else if (image_alpha == 1 && fadestep == 0)
{
    fadestep = 1;
    alarm[0] = 10;
    global.currentweapon = "normal";
    swap_color("normal");
    with (megaman) instance_destroy();
    with (enemyparent) {event_user(15);}
    with (effectsparent) {instance_destroy();}
    with (boss_energybar) {event_user(15);}
    objMegaEnergy.visible = 0;
    global.myHealth = 28;
    x = global.checkpoint_x-128;
    y = global.checkpoint_y-112;
    objMainCamera.x = global.checkpoint_x;
    objMainCamera.y = global.checkpoint_y;

    view_x = global.checkpoint_x-128;
    view_y = global.checkpoint_y-112;
    if (instance_exists(door1)) {with (door1) {event_user(2);} }
    exit;
}

//creates a fade effect to restart stage
else if (image_alpha > 0.1 && fadestep == 1)
{
    if (image_alpha == 1) {event_user(0); with (itemparent) visible = 0; }
    
    image_alpha -= 0.1;
    alarm[0] = 2;
    exit;
}

//creates new ready message
else
{
    objMegaEnergy.visible = 1;
    instance_activate_object(itemparent);
    with (itemparent) {visible = 1; image_speed = pre_iisp;} 
    instance_create_depth(view_x+120,view_y+112, -1000, readyMessage);
    instance_destroy();
    exit;
}
