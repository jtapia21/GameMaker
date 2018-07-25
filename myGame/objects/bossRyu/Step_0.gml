if (paused) exit;

/////boss actions here//////

//faces the player
if (sprite_index == SPRITE_RYUSTAND) {
	
	if (x < megaman.x) {image_xscale = -1; }
	else {image_xscale = 1; }
	
	randomNumber = floor(random(1000));
}

if (randomNumber < 19) {attack = 1;}
else if (randomNumber < 70) {attack = 2;}


#region TATSUMAKI SENPUUKYAKU
if ((image_xscale == 1 && x-80 > megaman.x) || (image_xscale == -1 && x+80 < megaman.x) && sprite_index == SPRITE_RYUSTAND && attack == 1) {
	
	if (!collision_rectangle(x-14,y-16,x,y-28,block,true,true) || !collision_rectangle(x,y-16,x+14,y-28,block,true,true)) {
		
		attacking = 1;
		sprite_index = SPRITE_TATSUMAKI;
		image_speed = 0.60;
		mask_index = sprRyuTatsumakiMask;
		
		if (image_xscale == 1) {hsp = -3;}
		else { hsp = 3;}
	}
	
	else {
			
			attack = -1;
			attacking = 0;
			sprite_index = SPRITE_RYUSTAND;
			image_speed = 0;
			mask_index = sprRyuMask;
			hsp = 0;
	}
}

else if (collision_rectangle(x-14,y-16,x+14,y-28,block,true,true)){
	
	attack = -1;
	attacking = 0;
	sprite_index = SPRITE_RYUSTAND;
	image_speed = 0;
	mask_index = sprRyuMask;
	hsp = 0;
}
#endregion

/////end of boss actions/////

#region collision
if (froze == 0 && paused == 0)
{
//Block collision - X
if (instance_place(x+hsp,y,block))
{
    if (hsp!=0 && (instance_place(x+hsp,y,block)).issolid == 1) 
    {
        while (!place_meeting(x+sign(hsp),y,block)) {x+=sign(hsp);}
        hsp=0; x=floor(x);
    }
}
x+=hsp;

//Check if in air
if (!collision_rectangle(x-9,y-2,x+9,y+1,block,true,true)) {grounded=0; }

//Set gravity
if (grounded == 0 && shooting == 0) {vsp+=grav;}
if (vsp >= 12) {vsp = 12;}

//Block collision - Y
if (instance_place(x,y+vsp,block) && vsp<0)
{
    while (!place_meeting(x,y+sign(vsp),block)) {y+=sign(vsp);}
    vsp=0;
}
if (instance_place(x,y+vsp,block) && vsp>0)
{
    y=round(y);
    while (!place_meeting(x,y+sign(vsp),block)) {y+=sign(vsp);}
    grounded=1; 
    vsp = 0; hsp = 0;
    
    image_index = 0;
    alarmshoot = 5;
}
y+=vsp;

}
#endregion

#region common boss code

//This is the same for most bosses, except remember to change the
//'bossRyu.dexpcount' to have the name of the new boss object

if (boss_energybar.bosshealth <= 0) 
{
	audio_stop_sound(sndDeath);	audio_play_sound(sndDeath,5,false);
	audio_stop_sound(sndEnemyHit);
	
    stop_music();
	
    dexpcount = 0;
    repeat(8) {
        dexpcount+=45;
        dexp = instance_create_depth(x,y,0,mega_explosion); 
        with (dexp) {motion_set(bossRyu.dexpcount,1.4);}
    }
    dexpcount = 0;
    repeat(8) {
        dexpcount+=45;
        dexp = instance_create_depth(x,y,0,mega_explosion); 
        with (dexp) {motion_set(bossRyu.dexpcount,2.8);}
    }
    with (enemyparent) {instance_destroy();}
    with (boss_energybar) 
    {
        alarm[0] = room_speed*5;
        rx = other.rx;
        ry = other.ry;
        SPRITE_INTRO = other.SPRITE_INTRO;
    }
}
#endregion