//pressing start or a

//if (whereto_x == 'l' && whereto_y == 'm') {/*visible = 0; global.currentlevel = level_charge; event_user(15);*/ sound_stop(sfx_error); sound_play(sfx_error); exit; }
if (whereto_x == "l" && whereto_y == "t") {visible = 0; global.currentlevel = testRoom event_user(15); exit; }
if (whereto_x == "r" && whereto_y == "t") {visible = 0; global.currentlevel = TimeRoom event_user(15); exit; }
