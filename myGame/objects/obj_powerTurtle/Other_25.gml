/// @description Insert description here
// You can write your code in this editor

instance_destroy();
new = instance_create_depth(xstart,ystart,10,obj_powerTurtle);

if (froze == 0 && onscreen == 1 && objMainCamera.movecount == 0 && !instance_exists(fadeoutDeath)) 
{
    with (new) 
    {
        if (x-xv < view_x+view_w || x+xv > view_x || y > view_y+view_h || y < view_y) 
        {froze = 1; visible = 0; } 
    } 
}
