if (KEYHOLD_B && pressing_b == 0 && sliding == 0 &&
    instance_number(magmaBazooka) < 1 && 
    instance_number(miniMagma) < 1 &&
    global.magmaweapon > 0 &&
    sprite_index != SPRITE_HURT &&
    hurt == 0) {
    pressing_b = 1; 
    if (!grounded) {Fire(magmaBazooka,14);}
    else {Fire(magmaBazooka,14);}
    global.magmaweapon -= 2;
}