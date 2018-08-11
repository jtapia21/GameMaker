if (x-xv > view_x+view_w || x+xv < view_x || y-25 > view_y+view_h || y < view_y) 
{event_user(15); }
else if (onscreen == 0) {onscreen = 1; visible = 1; froze = 0; }

if (paused) exit;

if (myhealth <= 0)
{
myhealth = 0;
event_user(15);
instance_create_depth(x-1,y-12,15,itemexplosion);
exit;
}


if (instance_exists(megaman) && paused == 0 && froze == 0 && timeStopping == 0)
{

if (y < megaman.y && jumping == 1)
{
if (megaman.x < x+20 && megaman.x > x-20)
{
jumping = 0;
stomping = 1;
hsp = 0;
vsp = 0;
alarm[2] = 4;
}
}

}

if (froze == 0 && paused == 0 && timeStopping == 0)
{

//Block collision - X
BLK = instance_place(x+hsp,y,block);

if (BLK)
{
    if (hsp!=0 && (BLK.issolid == 1 || BLK.object_index == death))
    {
        while (!place_meeting(x+sign(hsp),y,block)) {x+=sign(hsp);}
        hsp=-hsp; 
        image_xscale = -image_xscale;
    }
}
x+=hsp;

//Check if in air
if (!collision_rectangle(x-24,y-2,x+23,y+1,block,true,true)) {grounded=0; }

//Set gravity
if (grounded == 0 && stomping == 0) {vsp+=grav;}
if (vsp >= 20) {vsp = 20;}

//Block collision - Y
BLK = instance_place(x,y+vsp,block);

if (BLK && vsp<0)
{
    if (BLK.issolid == 1 || BLK.object_index == death)
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
    if (obj.issolid == 1 || obj.object_index == death) 
    {
        y=round(y);
        while (!place_meeting(x,y+sign(vsp),obj)) {y+=sign(vsp);}
        //sound_stop(sfx_enemyland1); sound_play(sfx_enemyland1);
        grounded=1; vsp=0;
        sprite_index = SPRITE_STAND;
        image_speed = 0.4;
        jumping = 0;
        stomping = 0;
        hsp = 0;
        alarm[0] = 25;
        break;
    }
    }
    ds_list_destroy(blocklist);
}
y+=vsp;

}
