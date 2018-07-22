//assigning weapon locations on the screen
//naming convention ex: Icon Player Weapon = IPW
//ex: Icon Frost Barrier = IFB

//Left side
IPW = instance_create_depth(x+28,y+28,-2300,menu_weaponicon);
IFB = instance_create_depth(x+28,y+56,-2300,menu_weaponicon);
ITS = instance_create_depth(x+28,y+84,-2300,menu_weaponicon);

//Right side
IMB = instance_create_depth(x+140,y+28,-2300,menu_weaponicon);
INC = instance_create_depth(x+140,y+56,-2300,menu_weaponicon);
IAS = instance_create_depth(x+140,y+84,-2300,menu_weaponicon);


//shows weapon if boss is defeated
with (IPW) {img = 0; eng = "myHealth"; visible = 1;}
with (IFB) {img = 2; eng = "frostweapon"; if (global.frostDefeated) visible = 1; }
with (IMB) {img = 4; eng = "magmaweapon"; if (global.magmaDefeated) visible = 1; }
with (IAS) {img = 6; eng = "airweapon"; if (global.airDefeated) visible = 1; }
with (ITS) {img = 8; eng = "stopweapon"; if (global.stopDefeated) visible = 1; }
with (INC) {img = 10; eng = "chainweapon"; if (global.chainDeafeated) visible = 1; }

ET = instance_create_depth(x+18,y+180,-2300,menu_tanks);
//MT = instance_create(x+80,y+184,menu_tanks);
with (ET) {img = 0; tanktype = "tanks_e";}
//with (MT) {img = 2; tanktype = 'tanks_m';}

instance_create_depth(x,y,-2300,pause_cursor);