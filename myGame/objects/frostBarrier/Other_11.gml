//subtracts an x amount of weapon energy
if (phase == 1) {
	global.frostweapon -= 2;
	
	if (global.frostweapon < 0) {
		global.frostweapon = 0;
	}
}
