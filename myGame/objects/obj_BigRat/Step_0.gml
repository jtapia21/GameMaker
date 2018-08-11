
if (x-xv > view_x+view_w || x+xv < view_x || y-16 > view_y+view_h || y < view_y) 
{event_user(15); }
else if (onscreen == 0) {onscreen = 1; visible = 1; froze = 0; }

if (paused) exit;

if (myhealth <= 0)
{
event_user(15);
instance_create_depth(x-1,y-0,15,itemexplosion);
exit;
}


/////checks if player jumped/////
if (instance_exists(megaman) && paused == 0 && froze == 0)
{

	if (jumping == 1 && megaman.hurt == 1) hit = 1;

	if (canjump == 0 && x-92 < megaman.x && x+92 > megaman.x && megaman.y > y-64 && megaman.y-28 < y+32) event_user(0);

	if (jumping == 0) event_user(14);

	if (global.input == 0)
	{
	KEYHOLD_B = keyboard_check(global.key_jump);
	}

	//---B
	if (KEYHOLD_B && press_b == 0 && jumping == 0 && canjump == 0) //Press
	{
	    press_b = 1;
	    event_user(0);
	}
	if (!KEYHOLD_B && press_b == 1) //Release
	{
	    press_b = 0;
	}

}


/////collision with walls/////
if (froze == 0 && paused == 0)
{

//Block collision - X
BLK = instance_place(x+hsp,y,block);

if (BLK)
{
    if (hsp!=0 && BLK.object_index != shiftblock && (BLK.issolid == 1 || BLK.object_index == death))
    {
        while (!place_meeting(x+sign(hsp),y,block)) {x+=sign(hsp);}
        hsp=-hsp;
        image_xscale = -image_xscale;
    }
}
x+=hsp;

//Check if in air
if (!collision_rectangle(x-14,y-2,x+14,y+1,block,true,true)) {grounded=0; }

//Set gravity
if (grounded == 0) {vsp+=grav;}
if (vsp >= 20) {vsp = 20;}

//Block collision - Y
BLK = instance_place(x,y+vsp,block);

if (BLK && vsp<0)
{
    if (BLK.object_index != shiftblock && (BLK.issolid == 1 || BLK.object_index == death))
    {
        while (!place_meeting(x,y+sign(vsp),block)) {y+=sign(vsp);}
        vsp=0;
    }
}
if (BLK && vsp>0)
{
    blocklist = instance_place_list(x,y+vsp,block);

    blc=-1;
    repeat(ds_list_size(blocklist))
    {
    blc+=1;
    obj=ds_list_find_value(blocklist,blc);
    if (BLK.object_index != shiftblock && (obj.issolid == 1 || obj.object_index == death))
    {
        y=round(y);
        while (!place_meeting(x,y+sign(vsp),obj)) {y+=sign(vsp);}
        grounded=1; vsp=0;
        image_speed = 0.4;
        hsp = 0;
        break;
    }
    }
    ds_list_destroy(blocklist);
}
y+=vsp;

}

