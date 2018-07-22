if (KEYHOLD_B && pressing_b == 0 && sliding == 0 &&
    instance_number(frostBarrier) < 1 && 
    global.frostweapon > 0 &&
    sprite_index != SPRITE_HURT &&
    hurt == 0) {
    pressing_b = 1; 
    instance_create_depth(x,y,-10,frostBarrier,);
}

if (KEYHOLD_B && pressing_b == 0 && sliding == 0 &&
    instance_number(frostBarrier) == 1 && 
    sprite_index != SPRITE_HURT &&
    hurt == 0) {
    pressing_b = 1; 
    with (frostBarrier)
    {
        if (phase == 1)
        {
        event_user(1);
        phase = 2;
        alarmdepth = 2;
        if (image_xscale == 1) hsp = movesp;
        else hsp = -movesp;
        }
    }
}
