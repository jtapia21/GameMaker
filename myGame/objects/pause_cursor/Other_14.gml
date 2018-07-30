//move down

/////left side weapons/////

//initials are the weapon names like IFB is icon frost barrier

//if current weapon is normal
if (x == pm.IPW.x && y == pm.IPW.y)  {
	
	//if frost weapon exists, move down
	if (pm.IFB.visible=1) {x=pm.IFB.x; y=pm.IFB.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	
	//else if frost weapon does not exist, move to next weapon that might exist, which is time stop
	else if (pm.ITS.visible=1) {x=pm.ITS.x; y=pm.ITS.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	
	//else if next weapon also does not exist, check for next weapon down the line. etc....
	else if (pm.IBC.visible=1) {x=pm.IBC.x; y=pm.IBC.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	
	//next weapon
	else if (pm.ISM.visible=1) {x=pm.ISM.x; y=pm.ISM.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	
	//else go to e tank
	else if (pm.ET.visible=1) {x=pm.ET.x; y=pm.ET.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
}

//if current weapon is ice barrier
if (x == pm.IFB.x && y == pm.IFB.y)  {
	
	//if time weapon exists, move down
	if (pm.ITS.visible=1) {x=pm.ITS.x; y=pm.ITS.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	
	//else if time does not exist, move to next weapon that might exist, which is bubble crash
	else if (pm.IBC.visible=1) {x=pm.IBC.x; y=pm.IBC.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	
	else if (pm.ISM.visible=1) {x=pm.ISM.x; y=pm.ISM.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	
	else if (pm.ET.visible=1) {x=pm.ET.x; y=pm.ET.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
}

//if current weapon is time stop
if (x == pm.ITS.x && y == pm.ITS.y)  {
	
	if (pm.IBC.visible=1) {x=pm.IBC.x; y=pm.IBC.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	
	else if (pm.ISM.visible=1) {x=pm.ISM.x; y=pm.ISM.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	
	else if (pm.ET.visible=1) {x=pm.ET.x; y=pm.ET.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
}

//if current weapon is bubble
if (x == pm.IBC.x && y == pm.IBC.y)  {
	
	if (pm.ISM.visible=1) {x=pm.ISM.x; y=pm.ISM.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	
	else if (pm.ET.visible=1) {x=pm.ET.x; y=pm.ET.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
}

//if current weapon is meteor
if (x == pm.ISM.x && y == pm.ISM.y)  {
	
	if (pm.ET.visible=1) {x=pm.ET.x; y=pm.ET.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
}

//if current selection is on the etank
if (x == pm.ET.x && y == pm.ET.y) {
	
	//goes "down" and cycles back to the top
	if (pm.IPW.visible=1) {x=pm.IPW.x; y=pm.IPW.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
}

/////right side weapons/////