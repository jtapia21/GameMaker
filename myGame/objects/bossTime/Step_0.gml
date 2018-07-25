if (paused) exit;

/////boss actions here//////

//faces the player
if (sprite_index != SPRITE_WALKBOSS && sprite_index != SPRITE_JUMPBOSS) {
	
	if (x < megaman.x) {image_xscale = 1; }
	    else {image_xscale = -1; }
}

//if not currently attacking and waited for next move
if (attack == 0 && wait == 0) {
	
	//choose attack at random
	randNum = floor(random(100));

	if (randNum < 30) {attack = 1;}
	
	else if (randNum < 60) {attack = 2; alarmjump = 10; alarmshoot = 30;}
	
	else if (randNum < 80) {attack = 3; flashtimer = 45;}
	
	else {attack = 4; stopTimer = 100;}
}

#region attack 1

//this attack shoots a knife horizontally and jumps forward

if (attack == 1) {
	
	
	//initiate shooting the knife
	if (alarmshoot > -1) {
	
	    alarmshoot -= 1;
	
	    if (alarmshoot == 0) {
		
			shoot = 1;
	        sprite_index = SPRITE_SHOOTBOSS;
	        alarmshooting = 2;
	    }
	}
	
	//continue shooting until all knives have been shot
	if (alarmshooting > -1) {
		
	    alarmshooting -= 1;
	
	    if (alarmshooting == 0) 
	    {
	        if (shooting == 2) //Finished
	        {
	            sprite_index = SPRITE_STANDBOSS;
	            shooting = 0;
				alarmjump = 10;
	        }
	        else if (shoot == 1)
	        {
			
				alarmshooting = 2;
			
	            if (image_xscale == -1) instance_create_depth(x-16,y-12,5,bossTimeKnife); 
	            else instance_create_depth(x+16,y-12,5,bossTimeKnife); 
			
				shooting += 1;
				alarmshooting = 11;
	        }
	    }
	}
	
	//jumps to other side of room
	if (alarmjump > -1) {
		
	    alarmjump -= 1;
		
	    if (alarmjump == 0) 
	    {
	        if (jumping == 0) {jumping = 1; alarmjump = 3; }
	        else 
	        {
	            jumping = 2; 
	            sprite_index = SPRITE_JUMPBOSS;
            
	            vsp = -4;
	            if (image_xscale == -1) hsp = -5;
	            else hsp = 5;
	        }
	    }
	}
}

#endregion

#region attack 2

//jumps and shoots many knives 
else if (attack == 2) {
	
	if (alarmjump > -1) {
		
	    alarmjump -= 1;
		
		//jump
	    if (alarmjump == 0) 
	    {
	        if (jumping == 0) {jumping = 1; alarmjump = 3; }
	        else 
	        {
	            jumping = 2; 
	            sprite_index = SPRITE_JUMPBOSS;
            
	            vsp = -7;
				
	        }
	    }
	}
	
	//shoot
	if (alarmshoot > -1) {
					
		alarmshoot -= 1;
					
		if (alarmshoot == 0) {
						
			if (image_xscale == -1) instance_create_depth(x-18,y-8,5,bossTimeKnives); 
			else instance_create_depth(x+18,y-10,5,bossTimeKnives);
			
			bossTimeKnives.alarmChangeDirection = 10;
		}
	}
}

#endregion

#region attack 3

//boss will teleport around and then walks towards opponent

else if (attack == 3) {
	
	//gets ready to teleport
	if (sprite_index == SPRITE_STANDBOSS) {
		
		sprite_index = SPRITE_SHOOTBOSS2;
	}
	
	//first phase teleports to opposite side of room
	else if (sprite_index == SPRITE_SHOOTBOSS2) {
		
		if (flashtimer > -1) {
			
			flashtimer -= 1;
			
			if (flashtimer == 0) {
				
				audio_stop_sound(sndTimeeffect);	audio_play_sound(sndTimeeffect,5,false);
				
				if (image_xscale == -1) {
					
					x = myFirstPositionX - 168;
					y = myFirstPositionY;
					invisible = 1;
					flashtimer = 45;
					sprite_index = SPRITE_FLASH;
					image_speed = 2;
				}
				else {
					
					x = myFirstPositionX;
					y = myFirstPositionY;
					invisible = 1;
					flashtimer = 45;
					sprite_index = SPRITE_FLASH;
					image_speed = 2;
				}
			}
		}
	}
	
	//second phase teleports to where player is
	else if (sprite_index == SPRITE_FLASH) {
		
		if (flashtimer > -1) {
			
			flashtimer -= 1;
			
			if (flashtimer == 0) {
				
				audio_stop_sound(sndTimeeffect);	audio_play_sound(sndTimeeffect,5,false);
					
				if (instance_exists(megaman)) {
					x = megaman.x;
					y = myFirstPositionY;
				}
				
				sprite_index = SPRITE_FLASH2;
				flashtimer = 45;
			}
		}
			
	}
	
	//third phase gets ready to walk
	else if (sprite_index == SPRITE_FLASH2) {
		
		
		if (flashtimer > -1) {
			
			flashtimer -= 1;
			
			if (flashtimer == 0) {
				
				sprite_index = SPRITE_WALKBOSS;
				invisible = 0;
				image_speed = 0.30;
				flashtimer = 35;
			}
		}
	}
	
	//final phase and walks forward
	else if (sprite_index == SPRITE_WALKBOSS) {
		
		if (image_xscale == -1) {hsp = -2;}
		else {hsp = 2;}
		
		if (flashtimer > -1) {
			
			flashtimer -= 1;
			
			if (flashtimer == 0) {
			
				sprite_index = SPRITE_STANDBOSS;
				image_speed = 0;
				hsp = 0;
				attack = 0;
				wait = 55;
			}
		}
	}
}

#endregion

#region attack 4

else if (attack == 4) {
	
	//this attack will freeze megaman and then appear above
	//only done if health is below half
	if (global.myHealth > 0 && boss_energybar.bosshealth < 15) {
		
		//create flash effect
		if (stopTimer == 100) {
			
			sprite_index = sprTimeStandKnife;
			instance_create_depth(denyScrollRight.x-128,denyScrollRight.y-80,-2200,objTimeFlash)
		
		}
		
		//appears above megaman
		if (instance_exists(megaman)) {
		
			TimeFreezeAttack();
		
			if (stopTimer == 12) {
				
				audio_stop_sound(sndTimeeffect); audio_play_sound(sndTimeeffect, 5, false);
				x = megaman.x;
				y = y - 112;
				sprite_index = SPRITE_JUMPBOSS;
				wait = 55;
			}
		}
	}
	
	//not yet able to use this attack
	else {
		
		attack = 0;
		wait = 1;
		alarmshoot = 1;
		stopTimer = 0;
	}
}

#endregion


//makes boss wait a bit before choosing next attack
if (sprite_index == SPRITE_STANDBOSS && wait >= 0) {
	
	wait -= 1;
}

#region collision stuff

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
if (!collision_rectangle(x-1,y-2,x+1,y+1,block,true,true)) {grounded=0; }

//Set gravity
if (grounded == 0 && shooting == 0) {vsp+=grav;}
if (vsp >= 7) {vsp = 7;}

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
    
	
	if(sprite_index == SPRITE_JUMPBOSS) {
		
		sprite_index = SPRITE_STANDBOSS;
		alarmshoot = 1;
		stopTimer = 0;
		attack = 0;
		jumping = 0;
		wait = 55;
	}
}
y+=vsp;

}

#endregion

#region boss stuff

//This is the same for most bosses, except remember to change the
//'napalmman.dexpcount' to have the name of the new boss object

if (boss_energybar.bosshealth <= 0) 
{
	audio_stop_sound(sndDeath);	audio_play_sound(sndDeath,5,false);
	audio_stop_sound(sndEnemyHit);
	
    stop_music();
	
    dexpcount = 0;
    repeat(8) {
        dexpcount+=45;
        dexp = instance_create_depth(x,y,0,mega_explosion); 
        with (dexp) {motion_set(bossTime.dexpcount,1.4);}
    }
    dexpcount = 0;
    repeat(8) {
        dexpcount+=45;
        dexp = instance_create_depth(x,y,0,mega_explosion); 
        with (dexp) {motion_set(bossTime.dexpcount,2.8);}
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