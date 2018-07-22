image_speed = 0;
image_alpha = 0;
alarm[0] = 1;
fadestep = 0;
audio_pause_sound(sndCharged);
audio_stop_sound(sndCharging);
//with (bg_ctrl) event_user(14);

//create the pause menu
if (!instance_exists(pause_menu)) {instance_create_depth(view_x,view_y,-2200,pause_menu);}
else 
{
    with (item_weaponenergy2) {event_perform(ev_alarm,1);}
    with (megaman)
    {
        if (global.currentweapon != "normal")
        {
            swap_color(global.currentweapon);
            chargeloop = 0; 
            chargeimgloop = 0;
            charge = 0;
            audio_stop_sound(sndCharging); audio_stop_sound(sndCharged);
        }
        else
        {
            if (charge==0) swap_color("normal");
        }
    }
}