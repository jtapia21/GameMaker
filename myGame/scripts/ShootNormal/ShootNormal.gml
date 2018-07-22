/*
All Shoot scripts are called from proto's Step Event, and simply
indicate what to fire based on the current weapon. Each fires 
its specific bullet while taking weapon energy and bullet numbers
into consideration.
*/

if (KEYHOLD_B && pressing_b == 0 && sliding == 0 &&
    instance_number(mega_bullet1) < 3 && 
    instance_number(chargeShot1) == 0 && 
    instance_number(chargeShot2) == 0 && 
    sprite_index != SPRITE_HURT &&
    hurt == 0) {
    //If you need a weapon to stop the player's motion ala Metal Blade etc,
    //execute the following two lines:
    //canwalkshoot = false;
    //if (grounded) {canwalk = 0; hsp=0; x=floor(x);} 
    pressing_b = 1; 
    if (!grounded) {Fire(mega_bullet1,14);}
    else {Fire(mega_bullet1,14);}
}
