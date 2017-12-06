/// @description Player loosing health 

if ishurt == false {
	
	global.myhealth -= 3;
	ishurt = true;
	alarm[2] = 120;
}//End of if statement
