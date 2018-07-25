//This stays the same for most bosses
instance_destroy();
ben = instance_create_depth(rx,ry,-1000,boss_energyfiller);
ben.sprite_index = SPRITE_INTRO;