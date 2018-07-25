if (hsp == 0)
{
    //Move outside blocks
    BLK = collision_rectangle(x-3,y-3,x+3,y+3,block,true,true);
    if (BLK && !ricochet && instance_exists(megaman))
    {
        if (BLK.issolid == 1 || BLK.object_index == death)
        {
        if (x > megaman.x) x = BLK.x-5;
        else x = BLK.x+20;
        }
    }
    
    vsp = mydir;
    if (image_xscale == -1) hsp = -movesp; 
    if (image_xscale == 1) hsp = movesp; 
}