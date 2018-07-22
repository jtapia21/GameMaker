if (KEYHOLD_B && pressing_b == 0 && sliding == 0 &&
    instance_number(nChain) < 1 &&
	global.chainweapon > 0 &&
    sprite_index != SPRITE_HURT &&
    hurt == 0) {
    //If you need a weapon to stop the player's motion ala Metal Blade etc,
    //execute the following two lines:
    canwalkshoot = false;
    if (grounded) {canwalk = 0; hsp=0; x=floor(x);} 
    pressing_b = 1; 
    if (!grounded) {Fire(nChain,14);}
    else {Fire(nChain,14);}
	global.chainweapon -= 2;
}