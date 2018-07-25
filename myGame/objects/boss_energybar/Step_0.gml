if (alarmfill > -1) 
{
    alarmfill -= 1;
    if (alarmfill == -1) 
    {
        if (bosshealth < 28)
        {
            bosshealth+=1;
            alarmfill = 1;
        }
        else 
        {
            audio_stop_sound(sndGetEnergy);
            with (boss_energyfiller) {event_user(0);}
        }
    }
}

if (bosshealth < 0) {bosshealth = 0;}


if (defeated == 1) {
	
	with (megaman) {
		
	canmove = false;
	KEYHOLD_UP = 0;
	KEYHOLD_DOWN = 0;
	KEYHOLD_LEFT = 0;
	KEYHOLD_RIGHT = 0;
	KEYHOLD_A = 0;
	KEYHOLD_B = 0;
	timeStopping = 0;
	}
}