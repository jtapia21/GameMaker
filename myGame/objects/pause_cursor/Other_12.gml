//move up

///////////////////////////////////////left side weapons/////////////////////////////////////////
//D.Hunter going to E.Tank
if (x == pm.IPW.x && y == pm.IPW.y) {
	if (pm.ET.visible=1) { x=pm.ET.x; y=pm.ET.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit;}
	
}

if (x == pm.ET.x && y == pm.ET.y) {
	if (pm.ISM.visible=1) { x=pm.ISM.x; y=pm.ISM.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit;}
	else if (pm.IBC.visible=1) {x=pm.IBC.x; y=pm.IBC.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	else if (pm.ITS.visible=1) {x=pm.ITS.x; y=pm.ITS.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	else if (pm.IFB.visible=1) {x=pm.IFB.x; y=pm.IFB.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	else if (pm.IPW.visible=1) {x=pm.IPW.x; y=pm.IPW.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
}

if (x == pm.ISM.x && y == pm.ISM.y) {
	
	if (pm.IBC.visible=1) { x=pm.IBC.x; y=pm.IBC.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit;}
	else if (pm.IBC.visible=1) {x=pm.IBC.x; y=pm.IBC.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	else if (pm.ITS.visible=1) {x=pm.ITS.x; y=pm.ITS.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	else if (pm.IFB.visible=1) {x=pm.IFB.x; y=pm.IFB.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	else if (pm.IPW.visible=1) {x=pm.IPW.x; y=pm.IPW.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
}

if (x == pm.IBC.x && y == pm.IBC.y) {
	
	if (pm.ITS.visible=1) { x=pm.ITS.x; y=pm.ITS.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit;}
	else if (pm.IFB.visible=1) {x=pm.IFB.x; y=pm.IFB.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	else if (pm.IPW.visible=1) {x=pm.IPW.x; y=pm.IPW.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
}

if (x == pm.ITS.x && y == pm.ITS.y) {
	
	if (pm.IFB.visible=1) { x=pm.IFB.x; y=pm.IFB.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit;}
	else if (pm.IPW.visible=1) {x=pm.IPW.x; y=pm.IPW.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
}

if (x == pm.IFB.x && y == pm.IFB.y) {
	
	if (pm.IPW.visible=1) { x=pm.IPW.x; y=pm.IPW.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit;}
	
}

///////////////////////////////////////right side weapons/////////////////////////////////////////
if (x == pm.IMB.x && y == pm.IMB.y) {
	if (pm.ET.visible=1) { x=pm.ET.x; y=pm.ET.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit;}
	
}

if (x == pm.IIO.x && y == pm.IIO.y) {
	if (pm.ITN.visible=1) { x=pm.ITN.x; y=pm.ITN.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit;}
	else if (pm.IAS.visible=1) {x=pm.IAS.x; y=pm.IAS.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	else if (pm.INC.visible=1) {x=pm.INC.x; y=pm.INC.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	else if (pm.IMB.visible=1) {x=pm.IMB.x; y=pm.IMB.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	if (pm.ET.visible=1) { x=pm.ET.x; y=pm.ET.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit;}
}

if (x == pm.ITN.x && y == pm.ITN.y) {
	
	if (pm.IAS.visible=1) { x=pm.IAS.x; y=pm.IAS.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit;}
	else if (pm.INC.visible=1) {x=pm.INC.x; y=pm.INC.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	else if (pm.IMB.visible=1) {x=pm.IMB.x; y=pm.IMB.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	if (pm.ET.visible=1) { x=pm.ET.x; y=pm.ET.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit;}
}

if (x == pm.IAS.x && y == pm.IAS.y) {
	
	if (pm.INC.visible=1) { x=pm.INC.x; y=pm.INC.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit;}
	else if (pm.IMB.visible=1) {x=pm.IMB.x; y=pm.IMB.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit}
	if (pm.ET.visible=1) { x=pm.ET.x; y=pm.ET.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit;}
}

if (x == pm.INC.x && y == pm.INC.y) {
	
	if (pm.IMB.visible=1) { x=pm.IMB.x; y=pm.IMB.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit;}
	if (pm.ET.visible=1) { x=pm.ET.x; y=pm.ET.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit;}
}

if (x == pm.IMB.x && y == pm.IMB.y) {
	
	if (pm.ET.visible=1) { x=pm.ET.x; y=pm.ET.y; audio_stop_sound(sndCursor); audio_play_sound(sndCursor,5,false); exit;}
	
}