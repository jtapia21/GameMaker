var xch; 
if (image_xscale == 1) xch = floor(x);
if (image_xscale == -1) xch = ceil(x);

draw_sprite_ext(sprite_index,image_index,xch,round(y),image_xscale,image_yscale,0,c_white,1);

switch (sprite_index)
{
    case SPRITE_STAND:
            draw_sprite_ext(mega_stand_frame,image_index,xch,round(y),image_xscale,image_yscale,0,global.frame,1);
            draw_sprite_ext(mega_Stand_hair,image_index,xch,round(y),image_xscale,image_yscale,0,global.hair,1);
            draw_sprite_ext(mega_stand_eyes,image_index,xch,round(y),image_xscale,image_yscale,0,global.eyes,1);
            break;
	
	case SPRITE_JUMP:
            draw_sprite_ext(mega_jump_frame,image_index,xch,round(y),image_xscale,image_yscale,0,global.frame,1);
            draw_sprite_ext(mega_Jump_hair,image_index,xch,round(y),image_xscale,image_yscale,0,global.hair,1);
            draw_sprite_ext(mega_jump_eyes,image_index,xch,round(y),image_xscale,image_yscale,0,global.eyes,1);
            break;
	
	case SPRITE_WALK:
            draw_sprite_ext(mega_walk_frame,image_index,xch,round(y),image_xscale,image_yscale,0,global.frame,1);
            draw_sprite_ext(mega_Walk_hair,image_index,xch,round(y),image_xscale,image_yscale,0,global.hair,1);
            draw_sprite_ext(mega_walk_eyes,image_index,xch,round(y),image_xscale,image_yscale,0,global.eyes,1);
            break;
	
	case SPRITE_SLIDE:
            draw_sprite_ext(mega_slide_frame,image_index,xch,round(y),image_xscale,image_yscale,0,global.frame,1);
            draw_sprite_ext(mega_Slide_hair,image_index,xch,round(y),image_xscale,image_yscale,0,global.hair,1);
            draw_sprite_ext(mega_slide_eyes,image_index,xch,round(y),image_xscale,image_yscale,0,global.eyes,1);
            break;
	
	case SPRITE_CLIMB:
            draw_sprite_ext(mega_climb_frame,image_index,xch,round(y),image_xscale,image_yscale,0,global.frame,1);
            draw_sprite_ext(mega_Climb_hair,image_index,xch,round(y),image_xscale,image_yscale,0,global.hair,1);
            draw_sprite_ext(mega_climb_eyes,image_index,xch,round(y),image_xscale,image_yscale,0,global.eyes,1);
            break;
	
	case SPRITE_BEND:
            draw_sprite_ext(mega_GetUp_frame,image_index,xch,round(y),image_xscale,image_yscale,0,global.frame,1);
            draw_sprite_ext(mega_GetUp_hair,image_index,xch,round(y),image_xscale,image_yscale,0,global.hair,1);
            draw_sprite_ext(mega_GetUp_eyes,image_index,xch,round(y),image_xscale,image_yscale,0,global.eyes,1);
            break;
	
	case SPRITE_STANDSHOOT:
            draw_sprite_ext(mega_StandShoot_frame,image_index,xch,round(y),image_xscale,image_yscale,0,global.frame,1);
            draw_sprite_ext(mega_StandShoot_hair,image_index,xch,round(y),image_xscale,image_yscale,0,global.hair,1);
            draw_sprite_ext(mega_standShoot_eyes,image_index,xch,round(y),image_xscale,image_yscale,0,global.eyes,1);
            break;
			
	case SPRITE_JUMPSHOOT:
            draw_sprite_ext(mega_JumpShoot_frame,image_index,xch,round(y),image_xscale,image_yscale,0,global.frame,1);
            draw_sprite_ext(mega_JumpShoot_hair,image_index,xch,round(y),image_xscale,image_yscale,0,global.hair,1);
            draw_sprite_ext(mega_jumpShoot_eyes,image_index,xch,round(y),image_xscale,image_yscale,0,global.eyes,1);
            break;
			
	case SPRITE_WALKSHOOT:
            draw_sprite_ext(mega_WalkShoot_frame,image_index,xch,round(y),image_xscale,image_yscale,0,global.frame,1);
            draw_sprite_ext(mega_WalkShoot_hair,image_index,xch,round(y),image_xscale,image_yscale,0,global.hair,1);
            draw_sprite_ext(mega_walkShoot_eyes,image_index,xch,round(y),image_xscale,image_yscale,0,global.eyes,1);
            break;
			
	case SPRITE_CLIMBSHOOT:
            draw_sprite_ext(mega_ClimbShoot_frame,image_index,xch,round(y),image_xscale,image_yscale,0,global.frame,1);
            draw_sprite_ext(mega_ClimbShoot_hair,image_index,xch,round(y),image_xscale,image_yscale,0,global.hair,1);
            draw_sprite_ext(mega_climbShoot_eyes,image_index,xch,round(y),image_xscale,image_yscale,0,global.eyes,1);
            break;
			
	case SPRITE_HURT:
            draw_sprite_ext(mega_hurt_frame,image_index,xch,round(y),image_xscale,image_yscale,0,global.frame,1);
            draw_sprite_ext(mega_Hurt_hair,image_index,xch,round(y),image_xscale,image_yscale,0,global.hair,1);
            draw_sprite_ext(mega_hurt_eyes,image_index,xch,round(y),image_xscale,image_yscale,0,global.eyes,1);
            break;
}


