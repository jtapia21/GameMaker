myeng = variable_global_get(eng);

draw_sprite(sprWeaponIcons,image_index,x,y);

if (image_index == img) {draw_sprite(sprWeaponbarDark,myeng,x+28,y+10);}
else {draw_sprite(sprWeaponbarLight,myeng,x+28,y+10); }