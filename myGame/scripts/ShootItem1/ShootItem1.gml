if (KEYHOLD_B && pressing_b == 0 && sliding == 0 &&
	instance_number(itemN1) < 3 &&
    global.item1weapon > 0 &&
    sprite_index != SPRITE_HURT &&
    hurt == 0) {

	    
		pressing_b = 1;
		global.item1weapon -= 2;
		
	    if (!grounded) {Fire(itemN1,14);}
	    else {Fire(itemN1,14);}
}