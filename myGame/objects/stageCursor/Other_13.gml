//Right

audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false);

switch (whereto_x)
{
    case "m": whereto_x = "r"; x+=80; break;
    case "l": whereto_x = "m"; x+=80; break;
    case "r": whereto_x = "l"; x-=160; break;
}