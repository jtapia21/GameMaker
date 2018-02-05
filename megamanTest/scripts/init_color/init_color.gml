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
global.hair_w1 = make_color_rgb(247, 248, 248); make_color_hsv(180, 0, 97);
global.eyes_w1 = make_color_rgb(255, 0, 0); make_color_hsv(212, 98, 100); 

//Blue hair color for another time make_color_rgb(4, 123, 255)

////////////current color///////////////
///find out whats our current color
global.frame = global.frame_0;
global.hair = global.hair_w0;
global.eyes = global.eyes_w0;
