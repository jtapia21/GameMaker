//Determines the door sprite to use and its key animation frames.
//'midimg' would be the frame in mid-animation, where you can no longer see the door 
//and 'finimg' would be the final frame of the image

switch (global.currentlevel)
{
    case testRoom: sprite_index = bossDoor; midimg = 3; finimg = 6; break;
    default: sprite_index = bossDoor; midimg = 3; finimg = 6; break;
}