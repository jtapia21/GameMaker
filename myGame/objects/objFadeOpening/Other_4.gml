if (restart == 1)
{
    restart = 0;
    myscene = 0;
    //background_x = 0;
	var background = layer_background_get_id(layer_get_id("myBackground"));
	layer_background_change(background, bgIntro1);
}