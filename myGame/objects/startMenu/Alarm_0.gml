with (fadeout_shift) instance_destroy();

FD = instance_create_depth(0,0,-2500,objFadeOpening);

stop_music();

with (FD)
{
    image_alpha = 0;
    fadestep = 0;
    restart = 1;
}