//Alarm - Charge FX
if (alarmchargefx > -1 && canmove) 
{
    alarmchargefx -= 1;
    if (alarmchargefx == 0) 
    {
        if (chargeimgloop > 0 && chargeimgloop < 17)
        {
            alarmchargefx = 1;
            if (global.frame == global.frame_0) swap_color("charging1")
            else if (global.frame == global.frame_1) swap_color("normal")
        }
        if (chargeimgloop > 16 && chargeimgloop < 33)
        {
            alarmchargefx = 1;
            if (global.frame == global.frame_0) swap_color("charging2")
            else if (global.frame == global.frame_2) swap_color("normal")
        }
        if (chargeimgloop > 32 && chargeimgloop < 51)
        {
            alarmchargefx = 1;
            if (global.frame == global.frame_0) swap_color("charging3")
            else if (global.frame == global.frame_3) swap_color("normal")
        }
        if (chargeimgloop > 50)
        {
            alarmchargefx = 1;
            if (global.frame == global.frame_0) swap_color("charged1")
            else if (global.frame == global.frame_c1) swap_color("charged2")
            else if (global.frame == global.frame_c2) swap_color("normal")
        }
    }
}

//Alarm - End shoot
if (alarmshoot > -1) 
{
    alarmshoot -= 1;
    if (alarmshoot == -1) {shooting = 0; canwalkshoot = true; alarmwalkshoot = -1;}
}

//Alarm - Release step if cannot walk and shoot
if (alarmwalkshoot > -1) 
{
    alarmwalkshoot -= 1;
    if (alarmwalkshoot == -1) 
    {
    if (pressing_left == 1) pressing_left = 0; 
    if (pressing_right == 1) pressing_right = 0; 
    canwalk = 0;
    }
}

var bschrg;
if (instance_exists(boss_energyfiller)) bschrg = false;
else bschrg = true;

if (KEYHOLD_B && hurt == 0 && global.currentweapon=="normal" && bschrg) 
{
    if (pressing_b == 0) {pressing_b = 1;}
    if (chargeloop < 115) {chargeloop += 1;}
    if (chargeloop == 47) {audio_play_sound(sndCharging,5,false); alarmchargefx = 1; alarmcharge = 72; charge = 1;}
    if (chargeloop == 114) {charge = 2;}
}
if (!KEYHOLD_B && pressing_b != 0 && sliding == 0) 
{
pressing_b = 0;
chargeloop = 0; 
chargeimgloop = 0;

if (charge == 1) {audio_stop_sound(sndCharging); audio_stop_sound(sndCharged); charge = 0; Fire(chargeShot1,20); }
if (charge == 2) {audio_stop_sound(sndCharging); audio_stop_sound(sndCharged); charge = 0; Fire(chargeShot2,28); }
}
if (chargeloop > 46 && chargeimgloop < 60 && bschrg) {chargeimgloop += 1;}


//changes colors to default if not not charging
if(charge == 0 && global.currentweapon == "normal") {
	swap_color("normal");
}
