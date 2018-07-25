
if (collision_rectangle(x,y,x+15,y+15,megaman,true,true) && issolid == 1)
{
with (megaman) {if (vsp < 0) {y = yprevious; vsp =0;} }
}

if (collision_rectangle(x,y,x+15,y+15,itemparent,true,true) && issolid == 1)
{
   with (collision_rectangle(x,y,x+15,y+15,itemparent,true,true)) 
    {
        if (flashloop > 0) {y = other.y-15;} 
        else if (flashloop == -2) {y = other.y-15;}
    }
}