if (KEYHOLD_B && pressing_b == 0 && sliding == 0 &&
    instance_number(airSlash) < 1 &&
	instance_number(airSlash2) < 1 &&
    global.airweapon > 0 &&
    sprite_index != SPRITE_HURT &&
    hurt == 0) {

	    pressing_b = 1;
	    if (!grounded) {Fire(airSlash,14); Fire(airSlash2,14)}
	    else {Fire(airSlash,14); Fire(airSlash2,14)}
		global.airweapon -= 2;
}
