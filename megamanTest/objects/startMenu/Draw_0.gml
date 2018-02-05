/// @description 

draw_set_halign(fa_left);
draw_set_halign(fa_middle);
draw_set_font(font0);
draw_set_color(c_white);

var n;

for (n = 0; n < array_length_1d(menu); n += 1) {
	
	draw_text(x + space, y + (n * space), string(menu[n]));
	
}//End of if statement

//Draw the arrow in the right place
draw_sprite(sprite_index, 0, x + 16, y + mpos * space);