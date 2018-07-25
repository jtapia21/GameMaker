//move up

//////left side weapons
if (x == pm.IPW.x && y == pm.IPW.y) {
	
	if (pm.ET.visible=1) {x=pm.ET.x; y=pm.ET.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit;}
}