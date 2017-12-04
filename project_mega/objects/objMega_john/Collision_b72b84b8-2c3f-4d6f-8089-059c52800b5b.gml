///@description Player lands on ground

move_contact_solid(direction, 12); //When player hits ground
audio_play_sound(sndLand, 10, false); //Sound when player meets the ground 
vspeed = 0