/// @description Insert description here
// You can write your code in this editor

//when presses enter or k button Rem teleports
if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("K"))){
	audio_stop_sound(sndTeleport2); 
	audio_play_sound(sndTeleport2,5,false);
	sprite_index = SPRITE_TELEPORT2;
	image_speed=0.16;
	//instance_destroy();
}
