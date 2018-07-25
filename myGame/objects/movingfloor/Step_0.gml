if (collision_rectangle(x,y,x+sprite_width,y-2,megaman,true,true)) 
{
    with (megaman) 
    {
    if (!paused)
    {
        if (other.mdir == "right") {
            if (!instance_place(x+other.mhsp,y,block)) {megaman.x += other.mhsp;}
            else if (!instance_place(x+1,y,block)) {megaman.x += 1;}
        }
        if (other.mdir == "left") {
            if (!instance_place(x-other.mhsp,y,block)) {megaman.x -= other.mhsp;}
            else if (!instance_place(x-1,y,block)) {megaman.x -= 1;}
        }
    }
    else {x=xprevious;}
    }
}