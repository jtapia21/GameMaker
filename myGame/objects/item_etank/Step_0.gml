if (!paused)
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
if (!collision_rectangle(x-0,y+12,x+15,y+15,block,true,true)) {grounded=0; }

//Set gravity
if (grounded == 0) {vsp+=grav;}
if (vsp >= 18) {vsp = 18;}

//Block collision - Y
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
        grounded=1; vsp=0;
        hsp = 0;
        break;
    }
    }
    ds_list_destroy(blocklist);
}
y+=vsp;



if (x+8 > view_x+view_w || x+8 < view_x || y+8 > view_y+view_h || y+8 < view_y)
    {if (flashloop > -2) {instance_destroy();} }
}

if (collision_rectangle(x+1,y+1,x+15,y+15,megaman,true,true) && visible == 1)
{
    if (megaman.paused != 1)
    {
        audio_stop_sound(sndGetLife); audio_play_sound(sndGetLife, 5, false);
        if (global.tanks_e < 9)
        {
            global.tanks_e += 1;
        }
        instance_destroy();
    }
}