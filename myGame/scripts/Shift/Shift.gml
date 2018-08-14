/* 
Shift(true,'x',1.20);
argument0 = true or false
True begins a room shift; false ends the room shift
argument1 = 'x' or 'y'
Determines if shifting vertically or horizontally
argument2 = number for determining shift speed
Should only be called from the camera object.
*/

if (argument0 == true)
{

if (megaman.paused == 0)
{
    megaman.paused = 1;

    //Kill enemies, bullets, items, etc
    with (enemyparent) {event_user(15);}
}

with (bulletparent) {instance_destroy();}
with (effectsparent) {instance_destroy();}
with (itemparent) {visible = 0; image_speed = 0;}
//with (enemyparent) {visible = 0; image_speed = 0;}

if (argument1 == "x") 
{
    with (megaman) 
    {
        x += argument2;
        if (collision_rectangle(x-9,y-2,x+10,bbox_top,block,1,1) && !grounded) { //y-27
            if (collision_rectangle(x-9,y-2,x+10,bbox_top,block,1,1).object_index != shiftblock) x=xprevious; 
        }
    }
}
if (argument1 == "y") {megaman.y+=argument2;}

with (megaman)
{
    if (paused)
    {
        if (alarm[0] >= 0) {alarm[0] += 1;}
        if (alarm[1] >= 0) {alarm[1] += 1;}
    }
}

}

/* End Shift */
if (argument0 == false)
{

if (argument1 == "x") {megaman.x=round(megaman.x);}
if (argument1 == "y") {megaman.y=round(megaman.y);}
megaman.paused = 0;

with (itemparent) {visible = 1; image_speed = pre_iisp;}
instance_activate_region(view_x-24,view_y-16,view_w+48,view_h+32,true);
with (enemyparent) {event_user(14);}

}