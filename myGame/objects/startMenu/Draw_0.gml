draw_set_halign(fa_left);
draw_set_halign(fa_middle);
draw_set_font(font0);
//draw_set_color(c_white);

var n;

//Loops through the menu array 
for (n = 0; n < array_length_1d(menu); n += 1) {
	
	draw_set_color(c_white);	//sets font color
	
	if(n == mpos ){	//current menu position set different color
		draw_set_color(c_yellow);
	}//End of if statement
	
	//Draw out the text and align them underneath each other
	draw_text(x + space, y + (n * space), string(menu[n]));
	
}//End of if statement

//Draw the menu cursor in the right of the text
draw_sprite(sprite_index, 0, x-48, y + (mpos * space) + 16);



