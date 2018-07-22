image_speed = 0;
bosshealth = 0;
alarmfill = 1;
defeated = 0;
audio_play_sound(sndGetEnergy,5,false);

//These are the two colors of the energy bar
//See the 'boss_energyfiller' object for where they're set
col_head = make_color_rgb(0,0,0);
col_body = make_color_rgb(255,255,255);