/*
fade_to_room(room);
'room' is the room to fade to.
*/

if (view_enabled) instance_create_depth(view_x,view_y,-2500,fadeout_shift);
else instance_create_depth(0,0,-2500,fadeout_shift);

with (fadeout_shift)
{
    whichroom = argument0;
}
