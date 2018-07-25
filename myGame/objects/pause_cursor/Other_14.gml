//move down

/////left side weapons/////

//if current weapon is normal
if (x == pm.IPW.x && y == pm.IPW.y)  {
	
	//if frost weapon exists, move down
	if (pm.IFB.visible=1) {x=pm.IFB.x; y=pm.IFB.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	
	//else if frost weapon does not exist, move to next weapon that might exist
	//else if (pm.IAC.visible=1) {x=pm.IAC.x; y=pm.IAC.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	
	//else if next weapon also does not exist, check for next weapon down the line. etc....
	
	else if (pm.ET.visible=1) {x=pm.ET.x; y=pm.ET.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
}

//if current selection is on the etank
if (x == pm.ET.x && y == pm.ET.y) {
	
	//goes "down" and cycles back to the top
	if (pm.IPW.visible=1) {x=pm.IPW.x; y=pm.IPW.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
}