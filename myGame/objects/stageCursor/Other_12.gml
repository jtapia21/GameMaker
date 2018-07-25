//Up

audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false);

switch (whereto_y)
{
    case "m": whereto_y = "t"; y-=72; break;
    case "t": whereto_y = "b"; y+=144; break;
    case "b": whereto_y = "m"; y-=72; break;
}