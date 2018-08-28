/// @description Insert description here
// You can write your code in this editor

if (x-xv > view_x+view_w || x+xv < view_x || y-20 > view_y+view_h || y-4 < view_y) 
{event_user(15); }
else if (onscreen == 0) {onscreen = 1; visible = 1; froze = 0; }

if (paused) exit;

if (myhealth <= 0)
{
event_user(15);
instance_create_depth(x-2,y+4,15,itemexplosion);
exit;
}

if (paused == 0 && froze == 0 && timeStopping == 0)
{

x+=hsp;
y+=vsp;

}

///TODO:
//make turtle pop up when megaman is near
//shoot when fully out
//go back to shell


/*
if (froze == 0) {
    if instance_exists(megaman)
    {
        if x < megaman.x
            image_xscale = 1;
        else
            image_xscale = -1;
        
        if distance_to_object(megaman) <= radius
        {
            if canShoot == true
            {
                canShoot = false;
                image_index = 1;
            }
        }
    }
    
if (canShoot == false)
    {
        cooldownTimer += 1;
        
        if cooldownTimer == 17
        {
            //Shoot
            var ID;
            ID = instance_create(x+image_xscale*8, sprite_get_ycenter(), objMM1MetBullet);
            {
                ID.dir = 45;
                ID.xscale = image_xscale;
            }
            ID = instance_create(x+image_xscale*8, sprite_get_ycenter(), objMM1MetBullet);
            {
                ID.dir = 0;
                ID.xscale = image_xscale;
            }
            ID = instance_create(x+image_xscale*8, sprite_get_ycenter(), objMM1MetBullet);
            {
                ID.dir = -45;
                ID.xscale = image_xscale;
            }
            
            //playSFX(sfxEnemyShootClassic);
        }
        else if cooldownTimer == 30
        {
            image_index = 0;
        }
        else if cooldownTimer >= 80
        {
            canShoot = true;
            cooldownTimer = 0;
        }
    }
    
    //Set the protection of the Met
    if image_index == 0
        reflectProjectiles = true;
    else
        reflectProjectiles = false;
}
else
{
    if dead == true
    {
        cooldownTimer = 0;
        canShoot = true;
        image_index = 0;
    }
}

