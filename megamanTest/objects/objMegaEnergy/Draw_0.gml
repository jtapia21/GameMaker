draw_sprite_ext(sprEnergyBar1, global.myHealth, view_x+24, view_y+17,1,1,image_angle,col_head,1);
draw_sprite_ext(sprEnergyBar2, global.myHealth, view_x+24, view_y+17,1,1,image_angle,col_body,1);

switch (global.currentweapon) {
	
	case "frost": weaponbar = global.frostweapon; break;
}

if (global.currentweapon != "normal") {
	draw_sprite_ext(sprEnergyBar1, weaponbar, view_x+12, view_y+17,1,1,image_angle,global.hair,1);
	draw_sprite_ext(sprEnergyBar2, weaponbar, view_x+12, view_y+17,1,1,image_angle,global.eyes,1);
}