if (hsp == 0)
{
//Move outside blocks
BLK = collision_rectangle(x-7,y-7,x+7,y+7,block,true,true);
if (BLK && !ricochet && instance_exists(megaman))
{
    if (BLK.issolid == 1 || BLK.object_index == death)
    {
    if (x > megaman.x) x = BLK.x-9;
    else x = BLK.x+24;//+15;
    }
}

visible = 1;
if (image_xscale == -1) {hsp = -movesp; }
if (image_xscale == 1) {hsp = movesp; }
}