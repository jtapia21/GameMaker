//initiates all music we have for the game
init_music();

//keeps track of which level we are in
global.currentlevel = room;

//plays music for this stage
music_play(global.music_testRoom,"mp3","loop");

//player health
global.myhealth = 28;

global.checkpoint_x = 0;
global.checkpoint_y = 0;

//activates health bar
with (objHealthBar) {event_user(0);}

