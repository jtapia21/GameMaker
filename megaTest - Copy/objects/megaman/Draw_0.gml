/// @description Insert description here
var xch,spr_frame,spr_hair,spr_eyes; 
if (image_xscale == 1) xch = floor(x);
if (image_xscale == -1) xch = ceil(x);
spr_frame = sprite_get_name(sprite_index)+"_frame";
spr_hair = sprite_get_name(sprite_index)+"hair";
spr_eyes = sprite_get_name(sprite_index)+"eyes";
spr_frame = execute_string("spr_frame="+spr_frame);
spr_hair = execute_string("spr_hair="+spr_hair);
spr_eyes = execute_string("spr_eyes="+spr_eyes);

draw_sprite_ext(sprite_index,image_index,xch,round(y),image_xscale,image_yscale,0,c_white,1);
draw_sprite_ext(spr_frame,image_index,xch,round(y),image_xscale,image_yscale,0,global.frame,1);
draw_sprite_ext(spr_hair,image_index,xch,round(y),image_xscale,image_yscale,0,global.hair,1);
draw_sprite_ext(spr_eyes,image_index,xch,round(y),image_xscale,image_yscale,0,global.eyes,1);


