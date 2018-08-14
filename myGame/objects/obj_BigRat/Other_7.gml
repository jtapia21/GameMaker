if (sprite_index == SPRITE_JUMP)
{
    sprite_index = SPRITE_STAND;
    image_speed = 0.20;
    
    if (!collision_rectangle(x-14,y-2,x+14,y+1,block,true,true)) {alarm[1] = 6; hit = 0; exit; }
    
    //mask_index = msk_sumatran_stand;
    if (hit == 1) {hit = 0; jumping = 0; alarm[0] = 90; }
    else {alarm[1] = 6; }
}