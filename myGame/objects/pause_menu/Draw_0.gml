draw_sprite(sprPauseScreen,0,x,y);
draw_sprite(sprCounter,global.myLives,x+136,y+194);

myframe = global.frame_0;

switch (global.currentweapon)
{
    case "normal":
        myhead = global.hair_w0;
        mybody = global.eyes_w0;
        draw_sprite(sprWeaponbarDark,global.myHealth,x+99,y+206);
        break;
    case "frost":
        myhead = global.hair_w1;
        mybody = global.eyes_w1;
        draw_sprite(sprWeaponbarDark,global.frostweapon,x+99,y+206);
        break;
    case "magma":
        myhead = global.hair_w2;
        mybody = global.eyes_w2;
        draw_sprite(sprWeaponbarDark,global.magmaweapon,x+99,y+206);
        break;
	case "air":
        myhead = global.hair_w3;
        mybody = global.eyes_w3;
        draw_sprite(sprWeaponbarDark,global.airweapon,x+99,y+206);
        break;
	case "stop":
        myhead = global.hair_w4;
        mybody = global.eyes_w4;
        draw_sprite(sprWeaponbarDark,global.stopweapon,x+99,y+206);
        break;
	case "chain":
        myhead = global.hair_w5;
        mybody = global.eyes_w5;
        draw_sprite(sprWeaponbarDark,global.chainweapon,x+99,y+206);
        break;
	case "earth":
        myhead = global.hair_w6;
        mybody = global.eyes_w6;
        draw_sprite(sprWeaponbarDark,global.earthweapon,x+99,y+206);
        break;
	case "bubble":
        myhead = global.hair_w7;
        mybody = global.eyes_w7;
        draw_sprite(sprWeaponbarDark,global.bubbleweapon,x+99,y+206);
        break;
	case "meteor":
        myhead = global.hair_w8;
        mybody = global.eyes_w8;
        draw_sprite(sprWeaponbarDark,global.meteorweapon,x+99,y+206);
        break;
	case "item1":
        myhead = global.hair_w9;
        mybody = global.eyes_w9;
        draw_sprite(sprWeaponbarDark,global.item1weapon,x+99,y+206);
        break;

}

draw_sprite_ext(sprStand,0,x+115,y+200,1,1,0,c_white,1);
draw_sprite_ext(mega_stand_frame,0,x+115,y+200,1,1,0,myframe,1);
draw_sprite_ext(mega_Stand_hair,0,x+115,y+200,1,1,0,myhead,1);
draw_sprite_ext(mega_stand_eyes,0,x+115,y+200,1,1,0,mybody,1);
