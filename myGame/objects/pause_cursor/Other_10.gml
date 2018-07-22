//Start
if (canmove == true)
{
canmove = false;

if (x == pm.ET.x && y == pm.ET.y) 
{
    if (global.tanks_e > 0 && global.myHealth < 28) {alarmfill = 1; audio_play_sound(sndGetEnergy,5,true); } 
    else {canmove = true; } 
    exit;
}

instance_create_depth(view_x,view_y,-2800,fadeOutPause);
fadeOutPause.pausevalue = 0;
audio_play_sound(sndSelect,5,false);
}
