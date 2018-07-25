draw_sprite_ext(sprEnergyBar1, global.myHealth, view_x+24, view_y+17,1,1,image_angle,col_head,1);
draw_sprite_ext(sprEnergyBar2, global.myHealth, view_x+24, view_y+17,1,1,image_angle,col_body,1);
draw_sprite_ext(sprEnergyBar3, global.myHealth, view_x+22, view_y+11,1,1,image_angle,c_white,1);

switch (global.currentweapon) {
	
	case "frost": weaponbar = global.frostweapon; break;
	case "magma": weaponbar = global.magmaweapon; break;
	case "air": weaponbar = global.airweapon; break;
	case "stop": weaponbar = global.stopweapon; break;
	case "chain": weaponbar = global.chainweapon; break;
	case "earth": weaponbar = global.earthweapon; break;
	case "bubble": weaponbar = global.bubbleweapon; break;
	case "meteor": weaponbar = global.meteorweapon; break;
	case "item1": weaponbar = global.item1weapon; break;

}

if (global.currentweapon != "normal") {
	
	draw_sprite_ext(sprEnergyBar1, weaponbar, view_x+12, view_y+17,1,1,image_angle,global.eyes,1);
	draw_sprite_ext(sprEnergyBar2, weaponbar, view_x+12, view_y+17,1,1,image_angle,global.hair,1);
	draw_sprite_ext(sprEnergyBar3, weaponbar, view_x+10, view_y+11,1,1,image_angle,global.hair,1);
}

