instance_destroy();
if (defeated == 0 && global.myHealth == 0 && !instance_exists(boss_energyfiller))
{
ben = instance_create_depth(rx,ry,-1000,boss_energyfiller);
ben.sprite_index = SPRITE_INTRO;
//if (variable_local_exists('IMG_INTRO')) {ben.image_index = IMG_INTRO; }
}