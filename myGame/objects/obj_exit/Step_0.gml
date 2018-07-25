if (image_index > 4 && image_index < 5) { audio_stop_sound(sndTeleport2); audio_play_sound(sndTeleport2,5,false);}

if (y < view_y && vspeed != 0)
{
vspeed = 0;
alarm[0] = room_speed*1;
}