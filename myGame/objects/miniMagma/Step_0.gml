if (paused) {exit;}

//Alarm Finish
if (alarmfinish > 0) 
{
    alarmfinish -= 1;
    if (alarmfinish == 0) 
    {
        instance_destroy(); 
        expl = instance_create_depth(x,y+16,-100,normalexplosion);
        expl.soundplayed = 1;
        alarmfinish = -1;
    }
}

//Block collision - X
if (instance_place(x+hsp,y,block) && !ricochet)
{
    blocklist = instance_place_list(x+hsp,y,block);

    blc=-1;
    repeat(ds_list_size(blocklist))
    {
    blc+=1;
    obj=ds_list_find_value(blocklist,blc);
    
    if (hsp != 0 && obj.object_index != shiftblock && (obj.issolid == 1 || obj.object_index == death)) 
    {
        while (!place_meeting(x+sign(hsp),y,block)) {x+=sign(hsp);}
        hsp=-hsp;
        if (image_xscale == -1) {image_xscale = 1;}
        else if (image_xscale == 1) {image_xscale = -1;}
        break;
    }
    }
    ds_list_destroy(blocklist);
}
x+=hsp;

//Block collision - Y
if (instance_place(x,y+vsp,block) && !ricochet)
{
    blocklist = instance_place_list(x,y+vsp,block);

    blc=-1;
    repeat(ds_list_size(blocklist))
    {
    blc+=1;
    obj=ds_list_find_value(blocklist,blc);
    if (obj.object_index != shiftblock && (obj.issolid == 1 || obj.object_index == death))
    {
        while (!place_meeting(x,y+sign(vsp),obj)) {y+=sign(vsp);}
        vsp=-vsp;
        break;
    }
    }
    ds_list_destroy(blocklist);
}
y+=vsp;


if (x-18 > view_x+view_w || x+18 < view_x || y > view_y+view_h || y < view_y)
{instance_destroy();}
