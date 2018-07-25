////////////////////////Colors for the charge shots////////////////////////////////
global.frame_0 = make_color_rgb(5, 5, 5); //black
global.frame_1 = make_color_rgb(148, 0, 140);
global.frame_2 = make_color_rgb(104, 72, 252);
global.frame_3 = make_color_rgb(156, 120, 252);

///////////////////////charged towards the end/////////////////////////////////////
global.frame_c1 = make_color_rgb(188, 188, 188);
global.frame_c2 = make_color_rgb(220, 40, 0);
global.hair_c1 = make_color_rgb(237, 237, 237); make_color_hsv(160, 0, 223);//another color option
global.hair_c2 = make_color_rgb(155, 155, 155); make_color_hsv(0, 0, 61);//another color option
global.eyes_c1 = make_color_rgb(148, 0, 140);
global.eyes_c2 = make_color_rgb(237, 237, 237); make_color_hsv(160, 101, 72);//another color option

//////////////////////defult color for rem///////////////////////////////////////
global.hair_w0 = make_color_rgb(85, 85, 85); make_color_hsv(0, 0, 33);
global.eyes_w0 = make_color_rgb(5, 5, 5); make_color_hsv(0, 0, 2); 

//Frost
global.hair_w1 = make_color_rgb(229,229,229); make_color_hsv(0,0,90);
global.eyes_w1 = make_color_rgb(60,188,255); make_color_hsv(201,76,100);

//magma
global.hair_w2 = make_color_rgb(248,176,64); make_color_hsv(37,74,97);
global.eyes_w2 = make_color_rgb(208,32,32); make_color_hsv(0,85,82);

//air
global.hair_w3 = make_color_rgb(237,0,140); make_color_hsv(325,100,93);
global.eyes_w3 = make_color_rgb(158,11,15); make_color_hsv(358,93,62);

//stop
global.hair_w4 = make_color_rgb(0,136,148); make_color_hsv(185,100,58);
global.eyes_w4 = make_color_rgb(36,24,149); make_color_hsv(246,83,55);

//chain
global.hair_w5 = make_color_rgb(165,156,149); make_color_hsv(26,10,65);
global.eyes_w5 = make_color_rgb(99,0,0); make_color_hsv(0,100,39);

//earth
global.hair_w6 = make_color_rgb(165,42,42); //make_color_hsv(26,10,65);	//brown
global.eyes_w6 = make_color_rgb(160,82,45); //make_color_hsv(0,100,39);	//Sienna

//bubble
global.hair_w7 = make_color_rgb(30,144,255); //make_color_hsv(26,10,65);	//dodger blue
global.eyes_w7 = make_color_rgb(70,130,180); //make_color_hsv(0,100,39);	//steel blue

//meteor
global.hair_w8 = make_color_rgb(184,0,184); 
global.eyes_w8 = make_color_rgb(84,84,84);

//item1
global.hair_w9 = make_color_rgb(252,216,132); 
global.eyes_w9 = make_color_rgb(255,126,0); 



////////////current color///////////////
///find out whats our current color
global.frame = global.frame_0;
global.hair = global.hair_w0;
global.eyes = global.eyes_w0;

