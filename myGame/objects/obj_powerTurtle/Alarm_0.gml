/// @description Insert description here
// You can write your code in this editor
if (instance_exists(megaman) && froze == 0 && timeStopping == 0)
{
    if (canup == -1) {canup = 0; alarm[0] = 120; alarm[1] = 1; exit; }

    if (image_index == 0)
    {
        //sound_stop(sfx_taban); sound_play(sfx_taban);
        alarm[0] = 10;
        image_index = 1;
        exit;
    }
    if (image_index == 1)
    {
        alarm[0] = 10;
        image_index = 2;
        exit;
    }
    if (image_index == 2)
    {
        alarm[0] = 10;
        image_index = 3;
        alarm[3] = 60;
        exit;
    }
    if (image_index == 3)
    {
        //alarm[0] = 10;
        //image_index = 4;
        exit;
    }
}
//else alarm[0] = 1;