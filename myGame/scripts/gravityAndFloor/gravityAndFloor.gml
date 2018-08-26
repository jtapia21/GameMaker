//used for moving platforms
var hsp_final = hsp + hsp_carry;
hsp_carry = 0;

//Block collision - X
if (instance_place(x+hsp_final,y,block))
{
    blocklist = instance_place_list(x+hsp_final,y,block);

    blc=-1;
    repeat(ds_list_size(blocklist))
    {
    blc+=1;
    obj=ds_list_find_value(blocklist,blc);
    
    if (hsp_final != 0 && obj.issolid == 1) 
    {
		
        while (!place_meeting(x+sign(hsp_final),y,obj)) {x+=sign(hsp_final);}
        hsp_final=0; hsp=0; x=floor(x); if (sliding == 1) {alarm[0]=0; event_perform(ev_alarm,0);}
        break;
    }
    }
    ds_list_destroy(blocklist);
}
x+=hsp_final;



//Check if in air
checkissolid = CheckSolid(7,7);
if (sliding == 0 && checkissolid) {grounded=0; }
checkissolid = CheckSolid(13,13);
if (sliding == 1 && checkissolid) {grounded=0; alarm[0]=0; event_perform(ev_alarm,0);}

//Set gravity
if (grounded == 0 && climbing == 0) {vsp+=grav;}
if (vsp >= fallsp) {vsp = fallsp;}


//Block collision - Y
if (instance_place(x,y+vsp,block) && vsp<0)
{
    if ((instance_place(x,y+vsp,block)).issolid == 1) 
    {
        while (!place_meeting(x,y+sign(vsp),block)) {y+=sign(vsp);}
        vsp=0;
    }
}

if (instance_place(x,y+vsp*2,block) && !collision_point(x,y,block,true,true) && vsp>0) {if (instance_place(x,y+vsp*2,block).issolid == 1) vsp=round(vsp);}
if (instance_place(x,y+vsp,block) && vsp>0)
{
    blocklist = instance_place_list(x,y+vsp,block);

    blc=-1;
    repeat(ds_list_size(blocklist))
    {
    blc+=1;
    obj=ds_list_find_value(blocklist,blc);
    if (obj.issolid == 1) 
    {
        y=round(y);
        while (!place_meeting(x,y+sign(vsp),obj)) {y+=sign(vsp);}
        if (climbing == 0) {audio_stop_sound(sndLand); audio_play_sound(sndLand, 5, false);}
        grounded=1; vsp=0; climbing=0;
		
        if (global.currentweapon == "chain") //Prohibits movement ala Metal Blade; see "ShootNormal()" script for more info
        {
            if (canwalkshoot == false) {canwalk = 0; if (canmove == true) {hsp=0;} x=floor(x);}
        }
        break;
    }
    }
    ds_list_destroy(blocklist);
}
y+=vsp;

//Limit y value going above view
if (vsp < 0 && y <= view_y-8) {y = view_y-8;}