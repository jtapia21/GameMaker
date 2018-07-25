if (defeated == 0 && global.myHealth > 0)
{
    defeated = 1;
    play_music(global.music_victory,"mp3","play");
    with (bulletparent) instance_destroy();
    alarm[0] = room_speed*4;

    with (megaman) 
    {
        alarm[0]=0; event_perform(ev_alarm,0);
        charge = 0; chargeloop = 0; chargeimgloop = 0;
        audio_stop_sound(sndCharging); audio_stop_sound(sndCharged);
    }
    exit;
}

if (defeated == 1)
{
    instance_create_depth(megaman.x,megaman.y,-10,obj_exit);
    with (obj_exit) {sprite_index = megaman.SPRITE_TELEPORT2;}
    with (megaman) {paused = 1; visible = 0;}
}