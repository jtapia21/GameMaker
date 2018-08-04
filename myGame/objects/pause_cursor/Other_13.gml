//move right


//////////right side weapons///////////

//M.Bazooka going to D.Hunter
if (x == pm.IMB.x && y == pm.IMB.y) {
	x=pm.IPW.x; 
	y=pm.IPW.y; 
	audio_stop_sound(sndCursor); 
	audio_play_sound(sndCursor,5,false);
	exit;
}//End of if statment

//N.Chain going to F.Barrier
else if ((x == pm.INC.x && y == pm.INC.y) && pm.IFB.visible = 1) {
	x=pm.IFB.x; 
	y=pm.IFB.y; 
	audio_stop_sound(sndCursor); 
	audio_play_sound(sndCursor,5,false);
	exit;
}//End of if statement

//A.Slash going to Time
else if ((x == pm.IAS.x && y == pm.IAS.y) && pm.ITS.visible=1) {
	x=pm.ITS.x; 
	y=pm.ITS.y; 
	audio_stop_sound(sndCursor); 
	audio_play_sound(sndCursor,5,false);
	exit;
}//End of if statement

//T.Nova going to B.Crash
else if ((x == pm.ITN.x && y == pm.ITN.y) && pm.IBC.visible = 1) {
	x=pm.IBC.x; 
	y=pm.IBC.y; 
	audio_stop_sound(sndCursor); 
	audio_play_sound(sndCursor,5,false);
	exit;
}//End of if statement

//H.Broom going to S.Meteor
else if ((x == pm.IIO.x && y == pm.IIO.y) && pm.ISM.visible = 1) {
	x=pm.ISM.x; 
	y=pm.ISM.y; 
	audio_stop_sound(sndCursor); 
	audio_play_sound(sndCursor,5,false);
	exit;
}//End of if statement

///////////////////////////////////////left side weapons////////////////////////////////////////

//D.Hunter going to M.Bazooka
else if ((x == pm.IPW.x && y == pm.IPW.y) && pm.IMB.visible = 1) {
	x=pm.IMB.x; 
	y=pm.IMB.y; 
	audio_stop_sound(sndCursor); 
	audio_play_sound(sndCursor,5,false);
	exit;
}//End of if statement

//F.Barrier going N.Chain
else if ((x == pm.IFB.x && y == pm.IFB.y) && pm.INC.visible = 1) {
	x=pm.INC.x; 
	y=pm.INC.y; 
	audio_stop_sound(sndCursor); 
	audio_play_sound(sndCursor,5,false);
	exit;
}//End of if statement

//Time going to A.Slash
else if ((x == pm.ITS.x && y == pm.ITS.y) && pm.IAS.visible=1) {
	x=pm.IAS.x; 
	y=pm.IAS.y; 
	audio_stop_sound(sndCursor); 
	audio_play_sound(sndCursor,5,false);
	exit;
}//End of if statement

//B.Crash going to T.Nova
else if ((x == pm.IBC.x && y == pm.IBC.y) && pm.ITN.visible = 1) {
	x=pm.ITN.x; 
	y=pm.ITN.y; 
	audio_stop_sound(sndCursor); 
	audio_play_sound(sndCursor,5,false);
	exit;
}//End of if statement

//S.Meteor going to H.Broom
else if ((x == pm.ISM.x && y == pm.ISM.y) && pm.IIO.visible = 1) {
	x=pm.IIO.x; 
	y=pm.IIO.y; 
	audio_stop_sound(sndCursor); 
	audio_play_sound(sndCursor,5,false);
	exit;
}//End of if statement