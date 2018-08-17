/*
init_music()
We will put this at the beginning of the game.
We will use this script so that if we need to change
songs we just have to update it once here and it will
pass to the rest of the game.
ex:
global.music_introStage = introMusic
*/


global.music_testRoom = sndTestMusic2;
global.music_testRoom1 = titleMusic;
global.music_testRoom2 = sndStageSelect;
global.music_boss1 = bossMusic1;
global.music_victory = mus_victory;
global.music_BossIntro = sndBossIntro;

//stages
global.music_TimeTheme = ThemeTimeStage;

//other
global.music_gameover = sndGameOver;
global.music_password = sndPassword;
