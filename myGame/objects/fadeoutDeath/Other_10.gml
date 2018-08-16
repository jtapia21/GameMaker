//restarts level music
switch (global.currentlevel)
{
    case testRoom: play_music(global.music_testRoom,"mp3","loop"); break;
	case TimeRoom: play_music(global.music_TimeTheme,"mp3","loop"); break;
}
